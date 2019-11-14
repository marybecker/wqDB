#python 3.6 tested
import requests
import datetime
import hmac
import base64
import json

# C# .NET 4.7 example taken from WQXWebAPIServicesGuide.pdf: page 11 GetStatus
# using System;
# using System.Collections.Generic;
# using System.Linq;
# using System.Text;
# using System.Security.Cryptography;
# using System.Net;
#
# public class Program
# {
# 	public static void Main()
# 	{
# 		using (WebClient client = new WebClient()) {
# 			try {
# 				Console.WriteLine("============C# .NET 4.7============");
# 				string userID = "wqxweb_userid";
# 				string privateKey = "zHPJBAZbMaPOIVqmz1afDRW0HhovKuExPlvKsg8SIdIXCYeoHeI/bQaG0HBahYTCaGno5EljBJmzd5AKjfHC2w==";
# 				Console.WriteLine("::::::KEY::::::\n"+privateKey);
# 				Uri uri = new Uri("https://cdx.epa.gov/WQXWeb/api/GetStatus?datasetId=12345");
# 				client.Headers.Add("X-UserID", userID);
# 				string timeStamp = DateTime.UtcNow.ToString();
# 				client.Headers.Add("X-Stamp", timeStamp);
# 				// The encrypted data must be in this order and format
# 				string data = String.Format("{0}{1}{2}{3}", userID, timeStamp, uri.ToString(), "GET");
# 				Console.WriteLine("::::::STR_SIG::::::\n"+data);
# 				byte[] signature = Encoding.UTF8.GetBytes(data);
# 				using (HMACSHA256 hmac = new HMACSHA256(Convert.FromBase64String(privateKey))) {
# 					byte[] signatureBytes = hmac.ComputeHash(signature);
# 					Console.WriteLine("::::::HMAC_SIG::::::\n"+Convert.ToBase64String(signatureBytes,Base64FormattingOptions.None));
# 					client.Headers.Add("X-Signature", Convert.ToBase64String(signatureBytes,Base64FormattingOptions.None));
# 				}
# 				// Decide what type of content to be returned (json, xml)
# 				client.Headers.Add("Content-Type", "text/plain");
# 				//client.Headers.Add("Content-Type", "application/json
# 				Console.WriteLine("::::::HEADERS::::::\n"+client.Headers.ToString());
# 			}catch(Exception e){ Console.WriteLine(e.Message); }
# 		}
# 	}
# }
# ============C# .NET 4.7============
# ::::::KEY::::::
# zHPJBAZbMaPOIVqmz1afDRW0HhovKuExPlvKsg8SIdIXCYeoHeI/bQaG0HBahYTCaGno5EljBJmzd5AKjfHC2w==
# ::::::STR_SIG::::::
# wqxweb_userid9/19/2019 2:09:44 PMhttps://cdx.epa.gov/WQXWeb/api/GetStatus?datasetId=12345GET
# ::::::HMAC_SIG::::::
# P3JnVhnh53b4fowltbHAFBOdbKMxKWBobPxg3eFmh3s=
# ::::::HEADERS::::::
# X-UserID: wqxweb_userid
# X-Stamp: 9/19/2019 2:09:44 PM
# X-Signature: P3JnVhnh53b4fowltbHAFBOdbKMxKWBobPxg3eFmh3s=
# Content-Type: text/plain


print('============Python 3.6============')
requesttype = 'GET' #use 'POST' if submitting data
userid = 'wqxweb_userid'
# timestamp = datetime.datetime.utcnow()
# timestamp = timestamp.strftime("%m/%d/%Y %I:%M:%S %p")
timestamp = '9/19/2019 2:09:44 PM' #to force to be the same as C# .NET 4.7
str_key = 'zHPJBAZbMaPOIVqmz1afDRW0HhovKuExPlvKsg8SIdIXCYeoHeI/bQaG0HBahYTCaGno5EljBJmzd5AKjfHC2w=='
print('::::::KEY::::::\n'+str_key)
private_key = bytearray(base64.b64decode(str_key)) #assume base64 str
uri = 'https://cdx.epa.gov/WQXWeb/api/GetStatus?datasetId=12345'
str_sig = userid+timestamp+uri+requesttype
print('::::::STR_SIG::::::\n'+str_sig)
signature = bytearray(str_sig,'utf-8')
encrypted = hmac.new(private_key,signature,digestmod='sha256').digest()
print('::::::HMAC_SIG::::::\n'+base64.b64encode(encrypted).decode())
contenttype = 'text/plain' #use 'text/plain' if submitting excel or csv format
# signature = encrypted(signature)
headers = {'X-UserID':userid,'X-Stamp':timestamp,
           'X-Signature':base64.b64encode(encrypted).decode(),'Content-Type':contenttype}
h_print = ''
for h in headers: h_print += h+': %s\n'%headers[h]
print('::::::HEADERS::::::\n%s'%h_print)

# ============Python 3.6============
# ::::::KEY::::::
# zHPJBAZbMaPOIVqmz1afDRW0HhovKuExPlvKsg8SIdIXCYeoHeI/bQaG0HBahYTCaGno5EljBJmzd5AKjfHC2w==
# ::::::STR_SIG::::::
# wqxweb_userid09/19/2019 02:09:48 PMhttps://cdx.epa.gov/WQXWeb/api/GetStatus?datasetId=12345GET
# ::::::HMAC_SIG::::::
# 5140f2a9123801ec1c60e8f299922a26b6cfa3cd846558f76073ce6e775f97a3
# ::::::HEADERS::::::
# X-UserID: wqxweb_userid
# X-Stamp: 09/19/2019 02:09:48 PM
# X-Signature: 5140f2a9123801ec1c60e8f299922a26b6cfa3cd846558f76073ce6e775f97a3
# Content-Type: text/plain