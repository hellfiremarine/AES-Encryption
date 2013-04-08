function output = galois2table()
%   galois2table	builds galois table for multiplication by 2
%
%   usage:
%       output = buildgalois2table()
%
%   Output:
%       output = resulting galois table for use in multiplication
%       by 2
%

% The lookup table.
lookup_table = [    '00','02','04','06','08','0a','0c','0e','10','12','14','16','18','1a','1c','1e';
					'20','22','24','26','28','2a','2c','2e','30','32','34','36','38','3a','3c','3e';
					'40','42','44','46','48','4a','4c','4e','50','52','54','56','58','5a','5c','5e';
					'60','62','64','66','68','6a','6c','6e','70','72','74','76','78','7a','7c','7e';
					'80','82','84','86','88','8a','8c','8e','90','92','94','96','98','9a','9c','9e';
					'a0','a2','a4','a6','a8','aa','ac','ae','b0','b2','b4','b6','b8','ba','bc','be';
					'c0','c2','c4','c6','c8','ca','cc','ce','d0','d2','d4','d6','d8','da','dc','de';
					'e0','e2','e4','e6','e8','ea','ec','ee','f0','f2','f4','f6','f8','fa','fc','fe';
					'1b','19','1f','1d','13','11','17','15','0b','09','0f','0d','03','01','07','05';
					'3b','39','3f','3d','33','31','37','35','2b','29','2f','2d','23','21','27','25';
					'5b','59','5f','5d','53','51','57','55','4b','49','4f','4d','43','41','47','45';
					'7b','79','7f','7d','73','71','77','75','6b','69','6f','6d','63','61','67','65';
					'9b','99','9f','9d','93','91','97','95','8b','89','8f','8d','83','81','87','85';
					'bb','b9','bf','bd','b3','b1','b7','b5','ab','a9','af','ad','a3','a1','a7','a5';
					'db','d9','df','dd','d3','d1','d7','d5','cb','c9','cf','cd','c3','c1','c7','c5';
					'fb','f9','ff','fd','f3','f1','f7','f5','eb','e9','ef','ed','e3','e1','e7','e5'	];

output = uint8(zeros(16,16));

% Convert the lookup table to decimal values.
for row = 1:16
	for col = 1:2:31
		output(row,(col+1)/2) = hex2dec(lookup_table(row,col:col+1));
	end
end

end

