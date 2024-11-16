#!/bin/sh

tmpfiles=""
trap 'rm -fr $tmpfiles' HUP INT QUIT TERM

tmpfiles="$tmpfiles uc_width.out"
${CHECKER} ./test-uc_width2${EXEEXT} | LC_ALL=C tr -d '\r' > uc_width.out

tmpfiles="$tmpfiles uc_width.ok"
cat > uc_width.ok <<\EOF
0000		0
0020..007E	1
00A0		1
00A1..00AC	A
00AD		0
00AE..02FF	A
0300..036F	0
0370..0482	A
0483..0489	0
048A..0590	A
0591..05BD	0
05BE		A
05BF		0
05C0		A
05C1..05C2	0
05C3		A
05C4..05C5	0
05C6		A
05C7		0
05C8..060F	A
0610..061A	0
061B		A
061C		0
061D..064A	A
064B..065F	0
0660..066F	A
0670		0
0671..06D5	A
06D6..06DC	0
06DD..06DE	A
06DF..06E4	0
06E5..06E6	A
06E7..06E8	0
06E9		A
06EA..06ED	0
06EE..0710	A
0711		0
0712..072F	A
0730..074A	0
074B..07A5	A
07A6..07B0	0
07B1..07EA	A
07EB..07F3	0
07F4..07FC	A
07FD		0
07FE..0815	A
0816..0819	0
081A		A
081B..0823	0
0824		A
0825..0827	0
0828		A
0829..082D	0
082E..0858	A
0859..085B	0
085C..0896	A
0897..089F	0
08A0..08C9	A
08CA..08E1	0
08E2		A
08E3..0902	0
0903..0939	A
093A		0
093B		A
093C		0
093D..0940	A
0941..0948	0
0949..094C	A
094D		0
094E..0950	A
0951..0957	0
0958..0961	A
0962..0963	0
0964..0980	A
0981		0
0982..09BB	A
09BC		0
09BD..09C0	A
09C1..09C4	0
09C5..09CC	A
09CD		0
09CE..09E1	A
09E2..09E3	0
09E4..09FD	A
09FE		0
09FF..0A00	A
0A01..0A02	0
0A03..0A3B	A
0A3C		0
0A3D..0A40	A
0A41..0A42	0
0A43..0A46	A
0A47..0A48	0
0A49..0A4A	A
0A4B..0A4D	0
0A4E..0A50	A
0A51		0
0A52..0A6F	A
0A70..0A71	0
0A72..0A74	A
0A75		0
0A76..0A80	A
0A81..0A82	0
0A83..0ABB	A
0ABC		0
0ABD..0AC0	A
0AC1..0AC5	0
0AC6		A
0AC7..0AC8	0
0AC9..0ACC	A
0ACD		0
0ACE..0AE1	A
0AE2..0AE3	0
0AE4..0AF9	A
0AFA..0AFF	0
0B00		A
0B01		0
0B02..0B3B	A
0B3C		0
0B3D..0B3E	A
0B3F		0
0B40		A
0B41..0B44	0
0B45..0B4C	A
0B4D		0
0B4E..0B54	A
0B55..0B56	0
0B57..0B61	A
0B62..0B63	0
0B64..0B81	A
0B82		0
0B83..0BBF	A
0BC0		0
0BC1..0BCC	A
0BCD		0
0BCE..0BFF	A
0C00		0
0C01..0C03	A
0C04		0
0C05..0C3B	A
0C3C		0
0C3D		A
0C3E..0C40	0
0C41..0C45	A
0C46..0C48	0
0C49		A
0C4A..0C4D	0
0C4E..0C54	A
0C55..0C56	0
0C57..0C61	A
0C62..0C63	0
0C64..0C80	A
0C81		0
0C82..0CBB	A
0CBC		0
0CBD..0CCB	A
0CCC..0CCD	0
0CCE..0CE1	A
0CE2..0CE3	0
0CE4..0CFF	A
0D00..0D01	0
0D02..0D3A	A
0D3B..0D3C	0
0D3D..0D40	A
0D41..0D44	0
0D45..0D4C	A
0D4D		0
0D4E..0D61	A
0D62..0D63	0
0D64..0D80	A
0D81		0
0D82..0DC9	A
0DCA		0
0DCB..0DD1	A
0DD2..0DD4	0
0DD5		A
0DD6		0
0DD7..0E30	A
0E31		0
0E32..0E33	A
0E34..0E3A	0
0E3B..0E46	A
0E47..0E4E	0
0E4F..0EB0	A
0EB1		0
0EB2..0EB3	A
0EB4..0EBC	0
0EBD..0EC7	A
0EC8..0ECE	0
0ECF..0F17	A
0F18..0F19	0
0F1A..0F34	A
0F35		0
0F36		A
0F37		0
0F38		A
0F39		0
0F3A..0F70	A
0F71..0F7E	0
0F7F		A
0F80..0F84	0
0F85		A
0F86..0F87	0
0F88..0F8C	A
0F8D..0F97	0
0F98		A
0F99..0FBC	0
0FBD..0FC5	A
0FC6		0
0FC7..102C	A
102D..1030	0
1031		A
1032..1037	0
1038		A
1039..103A	0
103B..103C	A
103D..103E	0
103F..1057	A
1058..1059	0
105A..105D	A
105E..1060	0
1061..1070	A
1071..1074	0
1075..1081	A
1082		0
1083..1084	A
1085..1086	0
1087..108C	A
108D		0
108E..109C	A
109D		0
109E..10FF	A
1100..115F	2
1160..11FF	0
1200..135C	A
135D..135F	0
1360..1711	A
1712..1714	0
1715..1731	A
1732..1733	0
1734..1751	A
1752..1753	0
1754..1771	A
1772..1773	0
1774..17B3	A
17B4..17B5	0
17B6		A
17B7..17BD	0
17BE..17C5	A
17C6		0
17C7..17C8	A
17C9..17D3	0
17D4..17DC	A
17DD		0
17DE..180A	A
180B..180F	0
1810..1884	A
1885..1886	0
1887..18A8	A
18A9		0
18AA..191F	A
1920..1922	0
1923..1926	A
1927..1928	0
1929..1931	A
1932		0
1933..1938	A
1939..193B	0
193C..1A16	A
1A17..1A18	0
1A19..1A1A	A
1A1B		0
1A1C..1A55	A
1A56		0
1A57		A
1A58..1A5E	0
1A5F		A
1A60		0
1A61		A
1A62		0
1A63..1A64	A
1A65..1A6C	0
1A6D..1A72	A
1A73..1A7C	0
1A7D..1A7E	A
1A7F		0
1A80..1AAF	A
1AB0..1ACE	0
1ACF..1AFF	A
1B00..1B03	0
1B04..1B33	A
1B34		0
1B35		A
1B36..1B3A	0
1B3B		A
1B3C		0
1B3D..1B41	A
1B42		0
1B43..1B6A	A
1B6B..1B73	0
1B74..1B7F	A
1B80..1B81	0
1B82..1BA1	A
1BA2..1BA5	0
1BA6..1BA7	A
1BA8..1BA9	0
1BAA		A
1BAB..1BAD	0
1BAE..1BE5	A
1BE6		0
1BE7		A
1BE8..1BE9	0
1BEA..1BEC	A
1BED		0
1BEE		A
1BEF..1BF1	0
1BF2..1C2B	A
1C2C..1C33	0
1C34..1C35	A
1C36..1C37	0
1C38..1CCF	A
1CD0..1CD2	0
1CD3		A
1CD4..1CE0	0
1CE1		A
1CE2..1CE8	0
1CE9..1CEC	A
1CED		0
1CEE..1CF3	A
1CF4		0
1CF5..1CF7	A
1CF8..1CF9	0
1CFA..1DBF	A
1DC0..1DFF	0
1E00..200A	A
200B..200F	0
2010..2029	A
202A..202E	0
202F..205F	A
2060..2064	0
2065		A
2066..206F	0
2070..20A8	A
20A9		1
20AA..20CF	A
20D0..20F0	0
20F1..2319	A
231A..231B	2
231C..2328	A
2329..232A	2
232B..23E8	A
23E9..23EC	2
23ED..23EF	A
23F0		2
23F1..23F2	A
23F3		2
23F4..25FC	A
25FD..25FE	2
25FF..2613	A
2614..2615	2
2616..2647	A
2648..2653	2
2654..267E	A
267F		2
2680..2692	A
2693		2
2694..26A0	A
26A1		2
26A2..26A9	A
26AA..26AB	2
26AC..26BC	A
26BD..26BE	2
26BF..26C3	A
26C4..26C5	2
26C6..26CD	A
26CE		2
26CF..26D3	A
26D4		2
26D5..26E9	A
26EA		2
26EB..26F1	A
26F2..26F3	2
26F4		A
26F5		2
26F6..26F9	A
26FA		2
26FB..26FC	A
26FD		2
26FE..2704	A
2705		2
2706..2709	A
270A..270B	2
270C..2727	A
2728		2
2729..274B	A
274C		2
274D		A
274E		2
274F..2752	A
2753..2755	2
2756		A
2757		2
2758..2794	A
2795..2797	2
2798..27AF	A
27B0		2
27B1..27BE	A
27BF		2
27C0..2B1A	A
2B1B..2B1C	2
2B1D..2B4F	A
2B50		2
2B51..2B54	A
2B55		2
2B56..2CEE	A
2CEF..2CF1	0
2CF2..2D7E	A
2D7F		0
2D80..2DDF	A
2DE0..2DFF	0
2E00..2E7F	A
2E80..3029	2
302A..302D	0
302E..303E	2
303F		A
3040..3098	2
3099..309A	0
309B..3247	2
3248..324F	A
3250..4DBF	2
4DC0..4DFF	A
4E00..A4CF	2
A4D0..A66E	A
A66F..A672	0
A673		A
A674..A67D	0
A67E..A69D	A
A69E..A69F	0
A6A0..A6EF	A
A6F0..A6F1	0
A6F2..A801	A
A802		0
A803..A805	A
A806		0
A807..A80A	A
A80B		0
A80C..A824	A
A825..A826	0
A827..A82B	A
A82C		0
A82D..A8C3	A
A8C4..A8C5	0
A8C6..A8DF	A
A8E0..A8F1	0
A8F2..A8FE	A
A8FF		0
A900..A925	A
A926..A92D	0
A92E..A946	A
A947..A951	0
A952..A95F	A
A960..A97C	2
A97D..A97F	A
A980..A982	0
A983..A9B2	A
A9B3		0
A9B4..A9B5	A
A9B6..A9B9	0
A9BA..A9BB	A
A9BC..A9BD	0
A9BE..A9E4	A
A9E5		0
A9E6..AA28	A
AA29..AA2E	0
AA2F..AA30	A
AA31..AA32	0
AA33..AA34	A
AA35..AA36	0
AA37..AA42	A
AA43		0
AA44..AA4B	A
AA4C		0
AA4D..AA7B	A
AA7C		0
AA7D..AAAF	A
AAB0		0
AAB1		A
AAB2..AAB4	0
AAB5..AAB6	A
AAB7..AAB8	0
AAB9..AABD	A
AABE..AABF	0
AAC0		A
AAC1		0
AAC2..AAEB	A
AAEC..AAED	0
AAEE..AAF5	A
AAF6		0
AAF7..ABE4	A
ABE5		0
ABE6..ABE7	A
ABE8		0
ABE9..ABEC	A
ABED		0
ABEE..ABFF	A
AC00..D7A3	2
D7A4..D7AF	A
D7B0..D7C6	0
D7C7..D7CA	A
D7CB..D7FB	0
D7FC..F8FF	A
F900..FAFF	2
FB00..FB1D	A
FB1E		0
FB1F..FDFF	A
FE00..FE0F	0
FE10..FE1F	2
FE20..FE2F	0
FE30..FE6F	2
FE70..FEFE	A
FEFF		0
FF00..FF60	2
FF61..FFDF	1
FFE0..FFE6	2
FFE7..FFF8	1
FFF9..FFFB	0
FFFC..101FC	1
101FD		0
101FE..102DF	1
102E0		0
102E1..10375	1
10376..1037A	0
1037B..10A00	1
10A01..10A03	0
10A04		1
10A05..10A06	0
10A07..10A0B	1
10A0C..10A0F	0
10A10..10A37	1
10A38..10A3A	0
10A3B..10A3E	1
10A3F		0
10A40..10AE4	1
10AE5..10AE6	0
10AE7..10D23	1
10D24..10D27	0
10D28..10D68	1
10D69..10D6D	0
10D6E..10EAA	1
10EAB..10EAC	0
10EAD..10EFB	1
10EFC..10EFF	0
10F00..10F45	1
10F46..10F50	0
10F51..10F81	1
10F82..10F85	0
10F86..11000	1
11001		0
11002..11037	1
11038..11046	0
11047..1106F	1
11070		0
11071..11072	1
11073..11074	0
11075..1107E	1
1107F..11081	0
11082..110B2	1
110B3..110B6	0
110B7..110B8	1
110B9..110BA	0
110BB..110C1	1
110C2		0
110C3..110FF	1
11100..11102	0
11103..11126	1
11127..1112B	0
1112C		1
1112D..11134	0
11135..11172	1
11173		0
11174..1117F	1
11180..11181	0
11182..111B5	1
111B6..111BE	0
111BF..111C8	1
111C9..111CC	0
111CD..111CE	1
111CF		0
111D0..1122E	1
1122F..11231	0
11232..11233	1
11234		0
11235		1
11236..11237	0
11238..1123D	1
1123E		0
1123F..11240	1
11241		0
11242..112DE	1
112DF		0
112E0..112E2	1
112E3..112EA	0
112EB..112FF	1
11300..11301	0
11302..1133A	1
1133B..1133C	0
1133D..1133F	1
11340		0
11341..11365	1
11366..1136C	0
1136D..1136F	1
11370..11374	0
11375..113BA	1
113BB..113C0	0
113C1..113CD	1
113CE		0
113CF		1
113D0		0
113D1		1
113D2		0
113D3..113E0	1
113E1..113E2	0
113E3..11437	1
11438..1143F	0
11440..11441	1
11442..11444	0
11445		1
11446		0
11447..1145D	1
1145E		0
1145F..114B2	1
114B3..114B8	0
114B9		1
114BA		0
114BB..114BE	1
114BF..114C0	0
114C1		1
114C2..114C3	0
114C4..115B1	1
115B2..115B5	0
115B6..115BB	1
115BC..115BD	0
115BE		1
115BF..115C0	0
115C1..115DB	1
115DC..115DD	0
115DE..11632	1
11633..1163A	0
1163B..1163C	1
1163D		0
1163E		1
1163F..11640	0
11641..116AA	1
116AB		0
116AC		1
116AD		0
116AE..116AF	1
116B0..116B5	0
116B6		1
116B7		0
116B8..1171C	1
1171D		0
1171E		1
1171F		0
11720..11721	1
11722..11725	0
11726		1
11727..1172B	0
1172C..1182E	1
1182F..11837	0
11838		1
11839..1183A	0
1183B..1193A	1
1193B..1193C	0
1193D		1
1193E		0
1193F..11942	1
11943		0
11944..119D3	1
119D4..119D7	0
119D8..119D9	1
119DA..119DB	0
119DC..119DF	1
119E0		0
119E1..11A00	1
11A01..11A06	0
11A07..11A08	1
11A09..11A0A	0
11A0B..11A32	1
11A33..11A38	0
11A39..11A3A	1
11A3B..11A3E	0
11A3F..11A46	1
11A47		0
11A48..11A50	1
11A51..11A56	0
11A57..11A58	1
11A59..11A5B	0
11A5C..11A89	1
11A8A..11A96	0
11A97		1
11A98..11A99	0
11A9A..11C2F	1
11C30..11C36	0
11C37		1
11C38..11C3D	0
11C3E..11C91	1
11C92..11CA7	0
11CA8..11CA9	1
11CAA..11CB0	0
11CB1		1
11CB2..11CB3	0
11CB4		1
11CB5..11CB6	0
11CB7..11D30	1
11D31..11D36	0
11D37..11D39	1
11D3A		0
11D3B		1
11D3C..11D3D	0
11D3E		1
11D3F..11D45	0
11D46		1
11D47		0
11D48..11D8F	1
11D90..11D91	0
11D92..11D94	1
11D95		0
11D96		1
11D97		0
11D98..11EF2	1
11EF3..11EF4	0
11EF5..11EFF	1
11F00..11F01	0
11F02..11F35	1
11F36..11F3A	0
11F3B..11F3F	1
11F40		0
11F41		1
11F42		0
11F43..11F59	1
11F5A		0
11F5B..1342F	1
13430..13440	0
13441..13446	1
13447..13455	0
13456..1611D	1
1611E..16129	0
1612A..1612C	1
1612D..1612F	0
16130..16AEF	1
16AF0..16AF4	0
16AF5..16B2F	1
16B30..16B36	0
16B37..16F4E	1
16F4F		0
16F50..16F8E	1
16F8F..16F92	0
16F93..16FDF	1
16FE0..16FE3	2
16FE4		0
16FE5..16FEF	1
16FF0..16FF1	2
16FF2..16FFF	1
17000..187F7	2
187F8..187FF	1
18800..18CD5	2
18CD6..18CFF	1
18D00..18D08	2
18D09..1AFEF	1
1AFF0..1AFF3	2
1AFF4		1
1AFF5..1AFFB	2
1AFFC		1
1AFFD..1AFFE	2
1AFFF		1
1B000..1B122	2
1B123..1B14F	1
1B150..1B152	2
1B153..1B163	1
1B164..1B167	2
1B168..1B16F	1
1B170..1B2FB	2
1B2FC..1BC9C	1
1BC9D..1BC9E	0
1BC9F		1
1BCA0..1BCA3	0
1BCA4..1CEFF	1
1CF00..1CF2D	0
1CF2E..1CF2F	1
1CF30..1CF46	0
1CF47..1D166	1
1D167..1D169	0
1D16A..1D172	1
1D173..1D182	0
1D183..1D184	1
1D185..1D18B	0
1D18C..1D1A9	1
1D1AA..1D1AD	0
1D1AE..1D241	1
1D242..1D244	0
1D245..1D9FF	1
1DA00..1DA36	0
1DA37..1DA3A	1
1DA3B..1DA6C	0
1DA6D..1DA74	1
1DA75		0
1DA76..1DA83	1
1DA84		0
1DA85..1DA9A	1
1DA9B..1DA9F	0
1DAA0		1
1DAA1..1DAAF	0
1DAB0..1DFFF	1
1E000..1E006	0
1E007		1
1E008..1E018	0
1E019..1E01A	1
1E01B..1E021	0
1E022		1
1E023..1E024	0
1E025		1
1E026..1E02A	0
1E02B..1E08E	1
1E08F		0
1E090..1E12F	1
1E130..1E136	0
1E137..1E2AD	1
1E2AE		0
1E2AF..1E2EB	1
1E2EC..1E2EF	0
1E2F0..1E4EB	1
1E4EC..1E4EF	0
1E4F0..1E5ED	1
1E5EE..1E5EF	0
1E5F0..1E8CF	1
1E8D0..1E8D6	0
1E8D7..1E943	1
1E944..1E94A	0
1E94B..1F003	1
1F004		2
1F005..1F0CE	1
1F0CF		2
1F0D0..1F18D	1
1F18E		2
1F18F..1F190	1
1F191..1F19A	2
1F19B..1F1FF	1
1F200..1F320	2
1F321..1F32C	1
1F32D..1F335	2
1F336		1
1F337..1F37C	2
1F37D		1
1F37E..1F393	2
1F394..1F39F	1
1F3A0..1F3CA	2
1F3CB..1F3CE	1
1F3CF..1F3D3	2
1F3D4..1F3DF	1
1F3E0..1F3F0	2
1F3F1..1F3F3	1
1F3F4		2
1F3F5..1F3F7	1
1F3F8..1F43E	2
1F43F		1
1F440		2
1F441		1
1F442..1F4FC	2
1F4FD..1F4FE	1
1F4FF..1F53D	2
1F53E..1F54A	1
1F54B..1F54E	2
1F54F		1
1F550..1F567	2
1F568..1F579	1
1F57A		2
1F57B..1F594	1
1F595..1F596	2
1F597..1F5A3	1
1F5A4		2
1F5A5..1F5FA	1
1F5FB..1F64F	2
1F650..1F67F	1
1F680..1F6C5	2
1F6C6..1F6CB	1
1F6CC		2
1F6CD..1F6CF	1
1F6D0..1F6D2	2
1F6D3..1F6D4	1
1F6D5..1F6D7	2
1F6D8..1F6DC	1
1F6DD..1F6DF	2
1F6E0..1F6EA	1
1F6EB..1F6EC	2
1F6ED..1F6F3	1
1F6F4..1F6FC	2
1F6FD..1F7DF	1
1F7E0..1F7EB	2
1F7EC..1F7EF	1
1F7F0		2
1F7F1..1F90B	1
1F90C..1F93A	2
1F93B		1
1F93C..1F945	2
1F946		1
1F947..1F9FF	2
1FA00..1FA6F	1
1FA70..1FA74	2
1FA75..1FA77	1
1FA78..1FA7C	2
1FA7D..1FA7F	1
1FA80..1FA86	2
1FA87..1FA8F	1
1FA90..1FAAC	2
1FAAD..1FAAF	1
1FAB0..1FABA	2
1FABB..1FABF	1
1FAC0..1FAC5	2
1FAC6..1FACF	1
1FAD0..1FAD9	2
1FADA..1FADF	1
1FAE0..1FAE7	2
1FAE8..1FAEF	1
1FAF0..1FAF6	2
1FAF7..1FFFF	1
20000..3FFFF	2
40000..E0000	1
E0001		0
E0002..E001F	1
E0020..E007F	0
E0080..E00FF	1
E0100..E01EF	0
E01F0..10FFFF	1
EOF

: "${DIFF=diff}"
${DIFF} uc_width.ok uc_width.out
result=$?

rm -fr $tmpfiles

exit $result
