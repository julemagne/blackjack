p "table time"
#
# =begin
# card 1 + card 2 = total
# hard/soft/pair = card 1 + card 2 includes Ace?
# Dealer card = Dealer card
#
# Blackjack Basic Strategy
# Single Deck • American Style
# Dealer Stands on Soft 17
# Double After Split Allowed
# No Surrender
# =end
#
# p " Hard".split
# p " 2	3	4	5	6	7	8	9	10	A".split
# p " 5 H	H	H	H	H	H	H	H	H	H".split.drop(1)
# p " 6	H	H	H	H	H	H	H	H	H	H".split.drop(1)
# p " 7	H	H	H	H	H	H	H	H	H	H".split.drop(1)
# p " 8	H	H	H	Dh	Dh	H	H	H	H	H".split.drop(1)
# p " 9	Dh	Dh	Dh	Dh	Dh	H	H	H	H	H".split.drop(1)
# p " 10	Dh	Dh	Dh	Dh	Dh	Dh	Dh	Dh	H	H".split.drop(1)
# p " 11	Dh	Dh	Dh	Dh	Dh	Dh	Dh	Dh	Dh	Dh".split.drop(1)
# p " 12	H	H	S	S	S	H	H	H	H	H".split.drop(1)
# p " 13	S	S	S	S	S	H	H	H	H	H".split.drop(1)
# p " 14	S	S	S	S	S	H	H	H	H	H".split.drop(1)
# p " 15	S	S	S	S	S	H	H	H	H	H".split.drop(1)
# p " 16	S	S	S	S	S	H	H	H	H	H".split.drop(1)
# p " 17	S	S	S	S	S	S	S	S	S	S".split.drop(1)
# p " 18	S	S	S	S	S	S	S	S	S	S".split.drop(1)
# p " 19	S	S	S	S	S	S	S	S	S	S".split.drop(1)
# p " 20	S	S	S	S	S	S	S	S	S	S".split.drop(1)
# p " 21	S	S	S	S	S	S	S	S	S	S".split.drop(1)
# p " "
# p " Soft".split
# p " 2	3	4	5	6	7	8	9	10	A".split
# p " 13	H	H	Dh	Dh	Dh	H	H	H	H	H".split.drop(1)
# p " 14	H	H	Dh	Dh	Dh	H	H	H	H	H".split.drop(1)
# p " 15	H	H	Dh	Dh	Dh	H	H	H	H	H".split.drop(1)
# p " 16	H	H	Dh	Dh	Dh	H	H	H	H	H".split.drop(1)
# p " 17	Dh	Dh	Dh	Dh	Dh	H	H	H	H	H".split.drop(1)
# p " 18	S	Ds	Ds	Ds	Ds	S	S	H	H	S".split.drop(1)
# p " 19	S	S	S	S	Ds	S	S	S	S	S".split.drop(1)
# p " 20	S	S	S	S	S	S	S	S	S	S".split.drop(1)
# p " 21	S	S	S	S	S	S	S	S	S	S".split.drop(1)
# p " "
# p " Pair".split
# p " 2	3	4	5	6	7	8	9	10	A".split
# p " 2,2	P	P	P	P	P	P	H	H	H	H".split.drop(1)
# p " 3,3	P	P	P	P	P	P	P	H	H	H".split.drop(1)
# p " 4,4	H	H	P	P	P	H	H	H	H	H".split.drop(1)
# p " 5,5	Dh	Dh	Dh	Dh	Dh	Dh	Dh	Dh	H	H".split.drop(1)
# p " 6,6	P	P	P	P	P	P	H	H	H	H".split.drop(1)
# p " 7,7	P	P	P	P	P	P	P	H	S	H".split.drop(1)
# p " 8,8	P	P	P	P	P	P	P	P	P	P".split.drop(1)
# p " 9,9	P	P	P	P	P	S	P	P	S	S".split.drop(1)
# p " 10,10	S	S	S	S	S	S	S	S	S	S".split.drop(1)
# p " A,A	P	P	P	P	P	P	P	P	P	P".split.drop(1)


#Hard
# ["2", "3", "4", "5", "6", "7", "8", "9", "10", "A"]
# ["H", "H", "H", "H", "H", "H", "H", "H", "H", "H"]
# ["H", "H", "H", "H", "H", "H", "H", "H", "H", "H"]
# ["H", "H", "H", "H", "H", "H", "H", "H", "H", "H"]
# ["H", "H", "H", "Dh", "Dh", "H", "H", "H", "H", "H"]
# ["Dh", "Dh", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"]
# ["Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "H", "H"]
# ["Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh"]
# ["H", "H", "S", "S", "S", "H", "H", "H", "H", "H"]
# ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"]
# ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"]
# ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"]
# ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"]
# ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]
# ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]
# ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]
# ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]
# ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]
# " "
# #Soft
# ["2", "3", "4", "5", "6", "7", "8", "9", "10", "A"]
# ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"]
# ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"]
# ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"]
# ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"]
# ["Dh", "Dh", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"]
# ["S", "Ds", "Ds", "Ds", "Ds", "S", "S", "H", "H", "S"]
# ["S", "S", "S", "S", "Ds", "S", "S", "S", "S", "S"]
# ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]
# ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]
# " "
# #Pair
# ["2", "3", "4", "5", "6", "7", "8", "9", "10", "A"]
# ["P", "P", "P", "P", "P", "P", "H", "H", "H", "H"]
# ["P", "P", "P", "P", "P", "P", "P", "H", "H", "H"]
# ["H", "H", "P", "P", "P", "H", "H", "H", "H", "H"]
# ["Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "H", "H"]
# ["P", "P", "P", "P", "P", "P", "H", "H", "H", "H"]
# ["P", "P", "P", "P", "P", "P", "P", "H", "S", "H"]
# ["P", "P", "P", "P", "P", "P", "P", "P", "P", "P"]
# ["P", "P", "P", "P", "P", "S", "P", "P", "S", "S"]
# ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]
# ["P", "P", "P", "P", "P", "P", "P", "P", "P", "P"]






hard = {
#["2", "3", "4", "5", "6", "7", "8", "9", "10", "A"],
5 => ["H", "H", "H", "H", "H", "H", "H", "H", "H", "H"],
6 => ["H", "H", "H", "H", "H", "H", "H", "H", "H", "H"],
7 => ["H", "H", "H", "H", "H", "H", "H", "H", "H", "H"],
8 => ["H", "H", "H", "Dh", "Dh", "H", "H", "H", "H", "H"],
9 => ["Dh", "Dh", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
10 => ["Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "H", "H"],
11 => ["Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh"],
12 => ["H", "H", "S", "S", "S", "H", "H", "H", "H", "H"],
13 => ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"],
14 => ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"],
15 => ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"],
16 => ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"],
17 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
18 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
19 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
20 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
21 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]}

soft = {
#["2", "3", "4", "5", "6", "7", "8", "9", "10", "A"],
13 => ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
14 => ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
15 => ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
16 => ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
17 => ["Dh", "Dh", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
18 => ["S", "Ds", "Ds", "Ds", "Ds", "S", "S", "H", "H", "S"],
19 => ["S", "S", "S", "S", "Ds", "S", "S", "S", "S", "S"],
20 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
21 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]}

pair = {
#["2", "3", "4", "5", "6", "7", "8", "9", "10", "A"],
4 => ["P", "P", "P", "P", "P", "P", "H", "H", "H", "H"],
6 => ["P", "P", "P", "P", "P", "P", "P", "H", "H", "H"],
8 => ["H", "H", "P", "P", "P", "H", "H", "H", "H", "H"],
10 => ["Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "H", "H"],
12 => ["P", "P", "P", "P", "P", "P", "H", "H", "H", "H"],
14 => ["P", "P", "P", "P", "P", "P", "P", "H", "S", "H"],
16 => ["P", "P", "P", "P", "P", "P", "P", "P", "P", "P"],
18 => ["P", "P", "P", "P", "P", "S", "P", "P", "S", "S"],
20 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
22 => ["P", "P", "P", "P", "P", "P", "P", "P", "P", "P"]}
