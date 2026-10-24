import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep176
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs

namespace ECDSAAdd.Arithmetic.Paper935
private local instance privateStepDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

private def s2Step178CompleteMoves : List (Wire × Wire) := [(824,179)]

private def s2Step178EarlyControlLog : HmrEarlyControlLog := ⟨[824, 785, 806, 792, 819],[830],[794],[803, 799, 867, 877, 879, 882],[]⟩

private def s2Step178FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[819], [792], [785], [806]],[[], [], [], []]⟩,[846],[807],[830],[794],[803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 794, 803, 799]⟩

private def s2Step178CompleteLog : HmrEarlyStepLog := ⟨s2Step178FrontLog,s2Step178CompleteMoves,s2Step178EarlyControlLog⟩

private def s2Step178ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩

private def s2Step178ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step178ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],769⟩

private def s2Step178ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩

private def s2Step178FrontOut : WindowBank := ⟨s2Step178ExitFOut,s2Step178ExitGOut,s2Step178ExitFvOut,s2Step178ExitGvOut⟩

private def s2Step178CompleteOut : WindowBank := s2Step178FrontOut.repacked s2Step178CompleteMoves

private def s2Step178EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step178EarlyControlPositiveArena,[830],s2Step178EarlyControlEqualityArena,[794],⟨⟨846,false⟩,[⟨⟨830,false⟩,794⟩]⟩⟩

private def s2Step178EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,824⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,806⟩,⟨⟨776,false⟩,792⟩,⟨⟨777,false⟩,819⟩]⟩

private def s2Step178EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step178EarlyControlZeroArena,s2Step178EarlyControlZeroPlan,s2Step178EarlyControlClassPlan,s2Step178EarlyControlFlagArena,s2Step178EarlyControlFittedArena,s2Step178EarlyControlHistoryArena,s2Step178EarlyControlSigmaArena,s2Step178EarlyControlOutputArena,s2Step178EarlyControlLog⟩

private def s2Step178CounterWork : List Wire := [830, 794, 803, 799]

private theorem s2Step178Counter_bounded : s2Step178CounterWork.toFinset⊆arenaWires := by norm_num [s2Step178CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step178HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178CounterDuring : Arena := ⟨s2Step178HeadFvAfter.live∪s2Step178CounterWork.toFinset,Finset.union_subset s2Step178HeadFvAfter.bounded s2Step178Counter_bounded⟩

private def s2Step178EntryFFresh : List Wire := []

private def s2Step178EntryFvFresh : List Wire := []

private def s2Step178EntryGFresh : List Wire := []

private def s2Step178EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178EntryGvAfter : Arena := s2Step178EntryFBefore

private def s2Step178EntryGvFresh : List Wire := []

private def s2Step178ExitFExtra : List Wire := [792]

private def s2Step178ExitFvExtra : List Wire := [806]

private def s2Step178ExitGExtra : List Wire := [179, 819]

private def s2Step178ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178ExitGvExtra : List Wire := [785]

private def s2Step178Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178Add0Work : List Wire := [803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step178Add0_bounded : s2Step178Add0Work.toFinset⊆arenaWires := by
  have h : s2Step178Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step178Add0During : Arena := ⟨s2Step178Add0Arena.live∪s2Step178Add0Work.toFinset,Finset.union_subset s2Step178Add0Arena.bounded s2Step178Add0_bounded⟩

private def s2Step178Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178Add1Work : List Wire := [803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step178Add1_bounded : s2Step178Add1Work.toFinset⊆arenaWires := by
  have h : s2Step178Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step178Add1During : Arena := ⟨s2Step178Add1Arena.live∪s2Step178Add1Work.toFinset,Finset.union_subset s2Step178Add1Arena.bounded s2Step178Add1_bounded⟩

private def s2Step178F4FlagArena : Arena := ⟨s2Step178HeadFvAfter.live∪{830},Finset.union_subset s2Step178HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step178F4Plan : HmrHybridF4Plan := ⟨s2Step178F4FlagArena,[830],s2Step178Add0Arena,[794],s2Step178Add0During,s2Step178Add0Work,s2Step178Add1During,s2Step178Add1Work⟩

private def s2Step178HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 792],768⟩

private def s2Step178HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 806],770⟩

private def s2Step178HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 819],769⟩

private def s2Step178HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 785],771⟩

private def s2Step178FrontHead : WindowBank := ⟨s2Step178HeadFOut,s2Step178HeadGOut,s2Step178HeadFvOut,s2Step178HeadGvOut⟩

private def s2Step178EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩

private def s2Step178EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step178EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],769⟩

private def s2Step178EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩

private def s2Step178FrontPair : WindowBank := ⟨s2Step178EntryFOut,s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut⟩

private def s2Step178FrontSigmaArena : Arena := ⟨s2Step178EntryGvAfter.live∪{846},Finset.union_subset s2Step178EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step178HeadFFresh : List Wire := [792]

private def s2Step178HeadFvFresh : List Wire := [806]

private def s2Step178HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178HeadGFresh : List Wire := [819]

private def s2Step178HeadGvFresh : List Wire := [785]

private def s2Step178FrontPlan : HmrSourceFront := ⟨s2Step178EntryGvAfter,s2Step178FrontPair,(growRow 768 s2Step178EntryFFresh ++ (growRow 769 s2Step178EntryGFresh ++ (growRow 770 s2Step178EntryFvFresh ++ (growRow 771 s2Step178EntryGvFresh ++ [])))),s2Step178FrontSigmaArena,[846],s2Step178HeadGBefore,[807],
  s2Step178HeadFvAfter,s2Step178FrontHead,(growRow 769 s2Step178HeadGFresh ++ (growRow 768 s2Step178HeadFFresh ++ (growRow 771 s2Step178HeadGvFresh ++ (growRow 770 s2Step178HeadFvFresh ++ [])))),s2Step178F4Plan,s2Step178CounterDuring,s2Step178CounterWork,s2Step178ExitGvAfter,s2Step178FrontOut,(shrinkRow 769 s2Step178ExitGExtra ++ (shrinkRow 768 s2Step178ExitFExtra ++ (shrinkRow 770 s2Step178ExitFvExtra ++ (shrinkRow 771 s2Step178ExitGvExtra ++ []))))⟩

private def s2Step178CompletePlan : HmrEarlyStepPlan := ⟨s2Step178FrontPlan,s2Step178EarlyControlArena,s2Step178EarlyControlPlan,s2Step178CompleteMoves⟩

private theorem s2Step178Complete_apart : List.Disjoint (s2Step178CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [846, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step178CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[846, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step178Complete_owned : (s2Step178CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step178EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step178CompleteMoveArena : Arena := ⟨s2Step178ExitGvAfter.live∪{179},Finset.union_subset s2Step178ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step178Complete_repack : s2Step178ExitGvAfter.checkRepack s2Step178CompleteMoves=some s2Step178EarlyControlArena := by
  have owned : 824∈s2Step178ExitGvAfter.live := by norm_num [s2Step178ExitGvAfter,arenaWires]
  have reserve : s2Step178ExitGvAfter.reserve {179}=some s2Step178CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step178ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step178CompleteMoveArena.retireSet {824}=s2Step178EarlyControlArena := by
    unfold Arena.retireSet s2Step178EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step178CompleteMoveArena,s2Step178ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step178CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step178CompleteMoveArena.retireSet {824}).checkRepack []=some s2Step178EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step178EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s2Step178EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_branch : compileHmrBranchRetirement s2Step178EarlyControlSigmaArena 807=some s2Step178EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step178EarlyControl_branchOwned
  · ext q
    simp [s2Step178EarlyControlOutputArena,s2Step178EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step178EarlyControl_classEqualityBorrow : s2Step178EarlyControlPositiveArena.checkBorrow (([846, 830] : List Wire).length-1) s2Step178EarlyControlLog.classWork=some s2Step178EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step178EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step178EarlyControlEqualityArena,s2Step178EarlyControlPositiveArena,s2Step178EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step178EarlyControl_classEqualityOwned : ([846, 830] : List Wire).toFinset⊆s2Step178EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_classEquality : compileHmrEqualityLog s2Step178EarlyControlPositiveArena [846, 830] 0 s2Step178EarlyControlLog.classWork=some (s2Step178EarlyControlEqualityArena,s2Step178EarlyControlLog.classWork,s2Step178EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step178EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step178EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step178EarlyControl_classOwned : ([777, 819, 846] : List Wire).toFinset⊆s2Step178EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_positiveBorrow : s2Step178EarlyControlZeroArena.checkBorrow (1) s2Step178EarlyControlLog.positiveWork=some s2Step178EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step178EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step178EarlyControlPositiveArena,s2Step178EarlyControlZeroArena,s2Step178EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step178EarlyControl_class : compileHmrSourceClassLog s2Step178EarlyControlZeroArena false 777 s2Step178EarlyControlZeroPlan.top 0 846 s2Step178EarlyControlLog.positiveWork s2Step178EarlyControlLog.classWork=some s2Step178EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step178EarlyControlClassPlan s2Step178EarlyControlZeroArena false 777 s2Step178EarlyControlZeroPlan.top 0 846
  constructor
  · decide +kernel
  · exact s2Step178EarlyControl_classOwned
  · exact s2Step178EarlyControl_positiveBorrow
  · exact s2Step178EarlyControl_classEquality

private theorem s2Step178EarlyControl_entryRecordOwned : ([807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step178EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_entrySigmaOwned : ([846, 254] : List Wire).toFinset⊆s2Step178EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_fitBorrow : s2Step178EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step178EarlyControlLog.recordFresh=some s2Step178EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step178EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step178EarlyControlFittedArena,s2Step178EarlyControlFlagArena,s2Step178EarlyControlLog,arenaWires]

private theorem s2Step178EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step178EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_fit : compileHmrRecordGrowLog s2Step178EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step178EarlyControlLog.recordFresh=some s2Step178EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step178EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step178EarlyControl_fitBorrow

private theorem s2Step178EarlyControl_flagsBorrow : s2Step178EarlyControlEqualityArena.checkBorrow (6) s2Step178EarlyControlLog.flagWork=some s2Step178EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step178EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step178EarlyControlFlagArena,s2Step178EarlyControlEqualityArena,s2Step178EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step178EarlyControl_flagsOwned : ([794, 253, 252, 251] : List Wire).toFinset⊆s2Step178EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_flags : compileHmrFlagsLog s2Step178EarlyControlClassPlan.equalityArena s2Step178EarlyControlClassPlan.equality.top 253 252 251 s2Step178EarlyControlLog.flagWork=some s2Step178EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step178EarlyControl_flagsOwned⟩
  · exact s2Step178EarlyControl_flagsBorrow

private theorem s2Step178EarlyControl_historyBorrow : s2Step178EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step178EarlyControlLog.recordFresh=some s2Step178EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step178EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step178EarlyControlHistoryArena,s2Step178EarlyControlArena,s2Step178EarlyControlLog,arenaWires]

private theorem s2Step178EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step178EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_history : compileHmrRecordGrowLog s2Step178EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step178EarlyControlLog.recordFresh=some s2Step178EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step178EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step178EarlyControl_historyBorrow

private theorem s2Step178EarlyControl_sigmaOwned : ([254, 846] : List Wire).toFinset⊆s2Step178EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_sigmaReleaseOwned : ([846] : List Wire).toFinset⊆s2Step178EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_sigmaRelease : s2Step178EarlyControlHistoryArena.release {846} (fun _ => false)=some s2Step178EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step178EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step178EarlyControlSigmaArena,s2Step178EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step178EarlyControl_sigma : compileHmrSigmaDropLog s2Step178EarlyControlHistoryArena false 0 0 254 846 []=some s2Step178EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step178EarlyControl_sigmaOwned⟩
  · exact s2Step178EarlyControl_sigmaRelease

private theorem s2Step178EarlyControl_zeroBorrow : s2Step178EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step178EarlyControlLog.zeroWork=some s2Step178EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step178EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step178EarlyControlZeroArena,s2Step178EarlyControlArena,s2Step178EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step178EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step178EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step178EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EarlyControl_zero : compileHmrEqualityLog s2Step178EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step178EarlyControlLog.zeroWork=some (s2Step178EarlyControlZeroArena,s2Step178EarlyControlLog.zeroWork,s2Step178EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step178EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step178EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step178EarlyControl_logged : s2Step178EarlyControlPlan.Logged s2Step178EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 807 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step178EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step178EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step178EarlyControl_zero
  · exact s2Step178EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step178EarlyControl_flags
  · exact s2Step178EarlyControl_fit
  · exact s2Step178EarlyControl_history
  · exact s2Step178EarlyControl_sigma
  · exact s2Step178EarlyControl_branch

private theorem s2Step178EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step178EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 807 42 s2Step178EarlyControlLog=some s2Step178EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step178EarlyControlPlan s2Step178EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 807 42 s2Step178EarlyControl_logged

private def s2Step178EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩

private def s2Step178EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step178EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],769⟩

private def s2Step178EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩

private def s2Step178FrontBank : WindowBank := ⟨s2Step178EntryFRow,s2Step178EntryGRow,s2Step178EntryFvRow,s2Step178EntryGvRow⟩

private def s2Step178Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 792, 768]

private def s2Step178Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 819, 769]

private def s2Step178Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 806, 770]

private def s2Step178Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 785, 771]

private theorem s2Step178Counter_apart : Disjoint s2Step178HeadFvAfter.live s2Step178CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step178HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178Counter_borrowed : s2Step178HeadFvAfter.checkBorrow 4 s2Step178CounterWork=some s2Step178CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step178HeadFvAfter s2Step178CounterDuring s2Step178CounterWork.toFinset s2Step178Counter_bounded s2Step178Counter_apart rfl

private theorem s2Step178Counter_owned : (846::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step178HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step178HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178Counter_checked : compileHmrCounterStepLog s2Step178HeadFvAfter true 846 [772, 773, 774, 775, 776, 777] s2Step178CounterWork=some s2Step178CounterDuring := by
  have owned : ∀q∈846::[772, 773, 774, 775, 776, 777],q∈s2Step178HeadFvAfter.live := fun q hq => s2Step178Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step178Counter_borrowed

private def s2Step178EntryFAfter : Arena := s2Step178EntryFBefore

private theorem s2Step178EntryBank_incomingDistinct : ([s2Step178EntryFRow,s2Step178EntryGRow,s2Step178EntryFvRow,s2Step178EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178EntryF_Incoming : rowsOwned s2Step178EntryFBefore [s2Step178EntryFRow,s2Step178EntryGRow,s2Step178EntryFvRow,s2Step178EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178EntryFRow,s2Step178EntryGRow,s2Step178EntryFvRow,s2Step178EntryGvRow] 0 s2Step178EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178EntryBank_outgoingOwned : rowsOwned s2Step178EntryGvAfter [s2Step178EntryFOut,s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step178EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178EntryF_Outgoing : rowsOwned s2Step178EntryGvAfter [s2Step178EntryFOut,s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut] :=
  hmrRows_owned_drop s2Step178EntryGvAfter [s2Step178EntryFOut,s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut] 0 s2Step178EntryBank_outgoingOwned

private theorem s2Step178EntryF_distinct : (s2Step178EntryFRow.sign::s2Step178EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178EntryF_owned : (s2Step178EntryFRow.sign::s2Step178EntryFRow.payload).toFinset⊆s2Step178EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EntryF_reserved : s2Step178EntryFBefore.reserve s2Step178EntryFFresh.toFinset=some s2Step178EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step178EntryFFresh,arenaWires]
  · norm_num [s2Step178EntryFBefore,s2Step178EntryFFresh,arenaWires]
  · simp only [s2Step178EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step178EntryF_checked : planRowResizeLog s2Step178EntryFBefore s2Step178EntryFRow 180 s2Step178EntryFFresh=
    some (s2Step178EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩,growRow 768 s2Step178EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step178EntryFBefore s2Step178EntryFAfter s2Step178EntryFRow 180 s2Step178EntryFFresh
    s2Step178EntryF_distinct s2Step178EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step178EntryF_reserved
  have rowEq : WindowRow.mk (s2Step178EntryFRow.payload++s2Step178EntryFFresh) s2Step178EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step178EntryFvAfter : Arena := s2Step178EntryFBefore

private def s2Step178EntryFvBefore : Arena := s2Step178EntryFBefore

private theorem s2Step178EntryFv_Incoming : rowsOwned s2Step178EntryFvBefore [s2Step178EntryFvRow,s2Step178EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178EntryFRow,s2Step178EntryGRow,s2Step178EntryFvRow,s2Step178EntryGvRow] 2 s2Step178EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178EntryFv_Outgoing : rowsOwned s2Step178EntryGvAfter [s2Step178EntryFvOut,s2Step178EntryGvOut] :=
  hmrRows_owned_drop s2Step178EntryGvAfter [s2Step178EntryFOut,s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut] 2 s2Step178EntryBank_outgoingOwned

private theorem s2Step178EntryFv_distinct : (s2Step178EntryFvRow.sign::s2Step178EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178EntryFv_owned : (s2Step178EntryFvRow.sign::s2Step178EntryFvRow.payload).toFinset⊆s2Step178EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EntryFv_reserved : s2Step178EntryFvBefore.reserve s2Step178EntryFvFresh.toFinset=some s2Step178EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step178EntryFvFresh,arenaWires]
  · norm_num [s2Step178EntryFvBefore,s2Step178EntryFBefore,s2Step178EntryFvFresh,arenaWires]
  · simp only [s2Step178EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step178EntryFv_checked : planRowResizeLog s2Step178EntryFvBefore s2Step178EntryFvRow 103 s2Step178EntryFvFresh=
    some (s2Step178EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩,growRow 770 s2Step178EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step178EntryFvBefore s2Step178EntryFvAfter s2Step178EntryFvRow 103 s2Step178EntryFvFresh
    s2Step178EntryFv_distinct s2Step178EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step178EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step178EntryFvRow.payload++s2Step178EntryFvFresh) s2Step178EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step178EntryGAfter : Arena := s2Step178EntryFBefore

private def s2Step178EntryGBefore : Arena := s2Step178EntryFBefore

private theorem s2Step178EntryG_Incoming : rowsOwned s2Step178EntryGBefore [s2Step178EntryGRow,s2Step178EntryFvRow,s2Step178EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178EntryFRow,s2Step178EntryGRow,s2Step178EntryFvRow,s2Step178EntryGvRow] 1 s2Step178EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178EntryG_Outgoing : rowsOwned s2Step178EntryGvAfter [s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut] :=
  hmrRows_owned_drop s2Step178EntryGvAfter [s2Step178EntryFOut,s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut] 1 s2Step178EntryBank_outgoingOwned

private theorem s2Step178EntryG_distinct : (s2Step178EntryGRow.sign::s2Step178EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178EntryG_owned : (s2Step178EntryGRow.sign::s2Step178EntryGRow.payload).toFinset⊆s2Step178EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EntryG_reserved : s2Step178EntryGBefore.reserve s2Step178EntryGFresh.toFinset=some s2Step178EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step178EntryGFresh,arenaWires]
  · norm_num [s2Step178EntryGBefore,s2Step178EntryFBefore,s2Step178EntryGFresh,arenaWires]
  · simp only [s2Step178EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step178EntryG_checked : planRowResizeLog s2Step178EntryGBefore s2Step178EntryGRow 180 s2Step178EntryGFresh=
    some (s2Step178EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],769⟩,growRow 769 s2Step178EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step178EntryGBefore s2Step178EntryGAfter s2Step178EntryGRow 180 s2Step178EntryGFresh
    s2Step178EntryG_distinct s2Step178EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step178EntryG_reserved
  have rowEq : WindowRow.mk (s2Step178EntryGRow.payload++s2Step178EntryGFresh) s2Step178EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step178EntryGvBefore : Arena := s2Step178EntryFBefore

private theorem s2Step178EntryGv_Incoming : rowsOwned s2Step178EntryGvBefore [s2Step178EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178EntryFRow,s2Step178EntryGRow,s2Step178EntryFvRow,s2Step178EntryGvRow] 3 s2Step178EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178EntryGv_Outgoing : rowsOwned s2Step178EntryGvAfter [s2Step178EntryGvOut] :=
  hmrRows_owned_drop s2Step178EntryGvAfter [s2Step178EntryFOut,s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut] 3 s2Step178EntryBank_outgoingOwned

private theorem s2Step178EntryGv_distinct : (s2Step178EntryGvRow.sign::s2Step178EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178EntryGv_owned : (s2Step178EntryGvRow.sign::s2Step178EntryGvRow.payload).toFinset⊆s2Step178EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178EntryGv_reserved : s2Step178EntryGvBefore.reserve s2Step178EntryGvFresh.toFinset=some s2Step178EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step178EntryGvFresh,arenaWires]
  · norm_num [s2Step178EntryGvBefore,s2Step178EntryFBefore,s2Step178EntryGvFresh,arenaWires]
  · simp only [s2Step178EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step178EntryGv_checked : planRowResizeLog s2Step178EntryGvBefore s2Step178EntryGvRow 103 s2Step178EntryGvFresh=
    some (s2Step178EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩,growRow 771 s2Step178EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step178EntryGvBefore s2Step178EntryGvAfter s2Step178EntryGvRow 103 s2Step178EntryGvFresh
    s2Step178EntryGv_distinct s2Step178EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step178EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step178EntryGvRow.payload++s2Step178EntryGvFresh) s2Step178EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step178EntryBank_rows : planWindowRowsLog s2Step178EntryFBefore [(s2Step178EntryFRow,180),(s2Step178EntryGRow,180),(s2Step178EntryFvRow,103),(s2Step178EntryGvRow,103)] [s2Step178EntryFFresh,s2Step178EntryGFresh,s2Step178EntryFvFresh,s2Step178EntryGvFresh]=
    some (s2Step178EntryGvAfter,[s2Step178EntryFOut,s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut],(growRow 768 s2Step178EntryFFresh ++ (growRow 769 s2Step178EntryGFresh ++ (growRow 770 s2Step178EntryFvFresh ++ (growRow 771 s2Step178EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step178EntryGvAfter [] []=some (s2Step178EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step178EntryGvBefore s2Step178EntryGvAfter s2Step178EntryGvAfter
    s2Step178EntryGvRow s2Step178EntryGvOut 103 s2Step178EntryGvFresh [] [] []
    (growRow 771 s2Step178EntryGvFresh) ([]) s2Step178EntryGv_Incoming s2Step178EntryGv_checked h4 s2Step178EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step178EntryFvBefore s2Step178EntryFvAfter s2Step178EntryGvAfter
    s2Step178EntryFvRow s2Step178EntryFvOut 103 s2Step178EntryFvFresh [(s2Step178EntryGvRow,103)] [s2Step178EntryGvFresh] [s2Step178EntryGvOut]
    (growRow 770 s2Step178EntryFvFresh) ((growRow 771 s2Step178EntryGvFresh ++ [])) s2Step178EntryFv_Incoming s2Step178EntryFv_checked h3 s2Step178EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step178EntryGBefore s2Step178EntryGAfter s2Step178EntryGvAfter
    s2Step178EntryGRow s2Step178EntryGOut 180 s2Step178EntryGFresh [(s2Step178EntryFvRow,103),(s2Step178EntryGvRow,103)] [s2Step178EntryFvFresh,s2Step178EntryGvFresh] [s2Step178EntryFvOut,s2Step178EntryGvOut]
    (growRow 769 s2Step178EntryGFresh) ((growRow 770 s2Step178EntryFvFresh ++ (growRow 771 s2Step178EntryGvFresh ++ []))) s2Step178EntryG_Incoming s2Step178EntryG_checked h2 s2Step178EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step178EntryFBefore s2Step178EntryFAfter s2Step178EntryGvAfter
    s2Step178EntryFRow s2Step178EntryFOut 180 s2Step178EntryFFresh [(s2Step178EntryGRow,180),(s2Step178EntryFvRow,103),(s2Step178EntryGvRow,103)] [s2Step178EntryGFresh,s2Step178EntryFvFresh,s2Step178EntryGvFresh] [s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut]
    (growRow 768 s2Step178EntryFFresh) ((growRow 769 s2Step178EntryGFresh ++ (growRow 770 s2Step178EntryFvFresh ++ (growRow 771 s2Step178EntryGvFresh ++ [])))) s2Step178EntryF_Incoming s2Step178EntryF_checked h1 s2Step178EntryF_Outgoing
  exact h0

private theorem s2Step178EntryBank_checked : compileHmrBankResizeLog .entry s2Step178EntryFBefore ⟨s2Step178EntryFRow,s2Step178EntryGRow,s2Step178EntryFvRow,s2Step178EntryGvRow⟩ ⟨180,180,103,103⟩ [s2Step178EntryFFresh,s2Step178EntryGFresh,s2Step178EntryFvFresh,s2Step178EntryGvFresh]=
    some (s2Step178EntryGvAfter,⟨s2Step178EntryFOut,s2Step178EntryGOut,s2Step178EntryFvOut,s2Step178EntryGvOut⟩,(growRow 768 s2Step178EntryFFresh ++ (growRow 769 s2Step178EntryGFresh ++ (growRow 770 s2Step178EntryFvFresh ++ (growRow 771 s2Step178EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step178EntryBank_rows]
  rfl

private def s2Step178ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178ExitFBefore : Arena := s2Step178ExitGAfter

private def s2Step178ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 792],768⟩

private def s2Step178ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 806],770⟩

private def s2Step178ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 819],769⟩

private def s2Step178ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 785],771⟩

private theorem s2Step178ExitBank_incomingDistinct : ([s2Step178ExitGRow,s2Step178ExitFRow,s2Step178ExitFvRow,s2Step178ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178ExitF_Incoming : rowsOwned s2Step178ExitFBefore [s2Step178ExitFRow,s2Step178ExitFvRow,s2Step178ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178ExitGRow,s2Step178ExitFRow,s2Step178ExitFvRow,s2Step178ExitGvRow] 1 s2Step178ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178ExitFBefore (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178ExitBank_outgoingOwned : rowsOwned s2Step178ExitGvAfter [s2Step178ExitGOut,s2Step178ExitFOut,s2Step178ExitFvOut,s2Step178ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step178ExitGvAfter (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178ExitF_Outgoing : rowsOwned s2Step178ExitGvAfter [s2Step178ExitFOut,s2Step178ExitFvOut,s2Step178ExitGvOut] :=
  hmrRows_owned_drop s2Step178ExitGvAfter [s2Step178ExitGOut,s2Step178ExitFOut,s2Step178ExitFvOut,s2Step178ExitGvOut] 1 s2Step178ExitBank_outgoingOwned

private theorem s2Step178ExitF_distinct : (s2Step178ExitFRow.sign::s2Step178ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178ExitF_owned : (s2Step178ExitFRow.sign::s2Step178ExitFRow.payload).toFinset⊆s2Step178ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178ExitFBefore (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178ExitF_retired : s2Step178ExitFBefore.retireSet s2Step178ExitFExtra.toFinset=s2Step178ExitFAfter := by
  unfold Arena.retireSet s2Step178ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step178ExitFBefore,s2Step178ExitGAfter,s2Step178ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step178ExitF_checked : planRowResizeLog s2Step178ExitFBefore s2Step178ExitFRow 180 []=
    some (s2Step178ExitFAfter,s2Step178ExitFOut,shrinkRow 768 s2Step178ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step178ExitFBefore s2Step178ExitFRow 180 s2Step178ExitF_distinct s2Step178ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step178ExitFRow.payload.take 180) s2Step178ExitFRow.sign=s2Step178ExitFOut := by decide +kernel
  have hi : s2Step178ExitFRow.payload.drop 180=s2Step178ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step178ExitF_retired] at result
  exact result

private def s2Step178ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178ExitFvBefore : Arena := s2Step178ExitFAfter

private theorem s2Step178ExitFv_Incoming : rowsOwned s2Step178ExitFvBefore [s2Step178ExitFvRow,s2Step178ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178ExitGRow,s2Step178ExitFRow,s2Step178ExitFvRow,s2Step178ExitGvRow] 2 s2Step178ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178ExitFvBefore (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178ExitFv_Outgoing : rowsOwned s2Step178ExitGvAfter [s2Step178ExitFvOut,s2Step178ExitGvOut] :=
  hmrRows_owned_drop s2Step178ExitGvAfter [s2Step178ExitGOut,s2Step178ExitFOut,s2Step178ExitFvOut,s2Step178ExitGvOut] 2 s2Step178ExitBank_outgoingOwned

private theorem s2Step178ExitFv_distinct : (s2Step178ExitFvRow.sign::s2Step178ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178ExitFv_owned : (s2Step178ExitFvRow.sign::s2Step178ExitFvRow.payload).toFinset⊆s2Step178ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178ExitFvBefore (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178ExitFv_retired : s2Step178ExitFvBefore.retireSet s2Step178ExitFvExtra.toFinset=s2Step178ExitFvAfter := by
  unfold Arena.retireSet s2Step178ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step178ExitFvBefore,s2Step178ExitFAfter,s2Step178ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step178ExitFv_checked : planRowResizeLog s2Step178ExitFvBefore s2Step178ExitFvRow 103 []=
    some (s2Step178ExitFvAfter,s2Step178ExitFvOut,shrinkRow 770 s2Step178ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step178ExitFvBefore s2Step178ExitFvRow 103 s2Step178ExitFv_distinct s2Step178ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step178ExitFvRow.payload.take 103) s2Step178ExitFvRow.sign=s2Step178ExitFvOut := by decide +kernel
  have hi : s2Step178ExitFvRow.payload.drop 103=s2Step178ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step178ExitFv_retired] at result
  exact result

private def s2Step178ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step178ExitG_Incoming : rowsOwned s2Step178ExitGBefore [s2Step178ExitGRow,s2Step178ExitFRow,s2Step178ExitFvRow,s2Step178ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178ExitGRow,s2Step178ExitFRow,s2Step178ExitFvRow,s2Step178ExitGvRow] 0 s2Step178ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178ExitG_Outgoing : rowsOwned s2Step178ExitGvAfter [s2Step178ExitGOut,s2Step178ExitFOut,s2Step178ExitFvOut,s2Step178ExitGvOut] :=
  hmrRows_owned_drop s2Step178ExitGvAfter [s2Step178ExitGOut,s2Step178ExitFOut,s2Step178ExitFvOut,s2Step178ExitGvOut] 0 s2Step178ExitBank_outgoingOwned

private theorem s2Step178ExitG_distinct : (s2Step178ExitGRow.sign::s2Step178ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178ExitG_owned : (s2Step178ExitGRow.sign::s2Step178ExitGRow.payload).toFinset⊆s2Step178ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178ExitG_retired : s2Step178ExitGBefore.retireSet s2Step178ExitGExtra.toFinset=s2Step178ExitGAfter := by
  unfold Arena.retireSet s2Step178ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step178ExitGBefore,s2Step178ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step178ExitG_checked : planRowResizeLog s2Step178ExitGBefore s2Step178ExitGRow 179 []=
    some (s2Step178ExitGAfter,s2Step178ExitGOut,shrinkRow 769 s2Step178ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step178ExitGBefore s2Step178ExitGRow 179 s2Step178ExitG_distinct s2Step178ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step178ExitGRow.payload.take 179) s2Step178ExitGRow.sign=s2Step178ExitGOut := by decide +kernel
  have hi : s2Step178ExitGRow.payload.drop 179=s2Step178ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step178ExitG_retired] at result
  exact result

private def s2Step178ExitGvBefore : Arena := s2Step178ExitFvAfter

private theorem s2Step178ExitGv_Incoming : rowsOwned s2Step178ExitGvBefore [s2Step178ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178ExitGRow,s2Step178ExitFRow,s2Step178ExitFvRow,s2Step178ExitGvRow] 3 s2Step178ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178ExitGvBefore (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178ExitGv_Outgoing : rowsOwned s2Step178ExitGvAfter [s2Step178ExitGvOut] :=
  hmrRows_owned_drop s2Step178ExitGvAfter [s2Step178ExitGOut,s2Step178ExitFOut,s2Step178ExitFvOut,s2Step178ExitGvOut] 3 s2Step178ExitBank_outgoingOwned

private theorem s2Step178ExitGv_distinct : (s2Step178ExitGvRow.sign::s2Step178ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178ExitGv_owned : (s2Step178ExitGvRow.sign::s2Step178ExitGvRow.payload).toFinset⊆s2Step178ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178ExitGvBefore (fun q => (0≤q ∧ q<179) ∨ (180≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178ExitGv_retired : s2Step178ExitGvBefore.retireSet s2Step178ExitGvExtra.toFinset=s2Step178ExitGvAfter := by
  unfold Arena.retireSet s2Step178ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step178ExitGvBefore,s2Step178ExitFvAfter,s2Step178ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step178ExitGv_checked : planRowResizeLog s2Step178ExitGvBefore s2Step178ExitGvRow 103 []=
    some (s2Step178ExitGvAfter,s2Step178ExitGvOut,shrinkRow 771 s2Step178ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step178ExitGvBefore s2Step178ExitGvRow 103 s2Step178ExitGv_distinct s2Step178ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step178ExitGvRow.payload.take 103) s2Step178ExitGvRow.sign=s2Step178ExitGvOut := by decide +kernel
  have hi : s2Step178ExitGvRow.payload.drop 103=s2Step178ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step178ExitGv_retired] at result
  exact result

private theorem s2Step178ExitBank_rows : planWindowRowsLog s2Step178ExitGBefore [(s2Step178ExitGRow,179),(s2Step178ExitFRow,180),(s2Step178ExitFvRow,103),(s2Step178ExitGvRow,103)] [[],[],[],[]]=
    some (s2Step178ExitGvAfter,[s2Step178ExitGOut,s2Step178ExitFOut,s2Step178ExitFvOut,s2Step178ExitGvOut],(shrinkRow 769 s2Step178ExitGExtra ++ (shrinkRow 768 s2Step178ExitFExtra ++ (shrinkRow 770 s2Step178ExitFvExtra ++ (shrinkRow 771 s2Step178ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step178ExitGvAfter [] []=some (s2Step178ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step178ExitGvBefore s2Step178ExitGvAfter s2Step178ExitGvAfter
    s2Step178ExitGvRow s2Step178ExitGvOut 103 [] [] [] []
    (shrinkRow 771 s2Step178ExitGvExtra) ([]) s2Step178ExitGv_Incoming s2Step178ExitGv_checked h4 s2Step178ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step178ExitFvBefore s2Step178ExitFvAfter s2Step178ExitGvAfter
    s2Step178ExitFvRow s2Step178ExitFvOut 103 [] [(s2Step178ExitGvRow,103)] [[]] [s2Step178ExitGvOut]
    (shrinkRow 770 s2Step178ExitFvExtra) ((shrinkRow 771 s2Step178ExitGvExtra ++ [])) s2Step178ExitFv_Incoming s2Step178ExitFv_checked h3 s2Step178ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step178ExitFBefore s2Step178ExitFAfter s2Step178ExitGvAfter
    s2Step178ExitFRow s2Step178ExitFOut 180 [] [(s2Step178ExitFvRow,103),(s2Step178ExitGvRow,103)] [[],[]] [s2Step178ExitFvOut,s2Step178ExitGvOut]
    (shrinkRow 768 s2Step178ExitFExtra) ((shrinkRow 770 s2Step178ExitFvExtra ++ (shrinkRow 771 s2Step178ExitGvExtra ++ []))) s2Step178ExitF_Incoming s2Step178ExitF_checked h2 s2Step178ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step178ExitGBefore s2Step178ExitGAfter s2Step178ExitGvAfter
    s2Step178ExitGRow s2Step178ExitGOut 179 [] [(s2Step178ExitFRow,180),(s2Step178ExitFvRow,103),(s2Step178ExitGvRow,103)] [[],[],[]] [s2Step178ExitFOut,s2Step178ExitFvOut,s2Step178ExitGvOut]
    (shrinkRow 769 s2Step178ExitGExtra) ((shrinkRow 768 s2Step178ExitFExtra ++ (shrinkRow 770 s2Step178ExitFvExtra ++ (shrinkRow 771 s2Step178ExitGvExtra ++ [])))) s2Step178ExitG_Incoming s2Step178ExitG_checked h1 s2Step178ExitG_Outgoing
  exact h0

private theorem s2Step178ExitBank_checked : compileHmrBankResizeLog .exit s2Step178ExitGBefore ⟨s2Step178ExitFRow,s2Step178ExitGRow,s2Step178ExitFvRow,s2Step178ExitGvRow⟩ ⟨180,179,103,103⟩ [[],[],[],[]]=
    some (s2Step178ExitGvAfter,⟨s2Step178ExitFOut,s2Step178ExitGOut,s2Step178ExitFvOut,s2Step178ExitGvOut⟩,(shrinkRow 769 s2Step178ExitGExtra ++ (shrinkRow 768 s2Step178ExitFExtra ++ (shrinkRow 770 s2Step178ExitFvExtra ++ (shrinkRow 771 s2Step178ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step178ExitBank_rows]
  rfl

private theorem s2Step178Add0_apart : Disjoint s2Step178Add0Arena.live s2Step178Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step178Add0Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178Add0_card : s2Step178Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step178Add0_borrowed : s2Step178Add0Arena.checkBorrow (hmrHybridCount s2Step178Add0Arena s2Step178Add0B.length) s2Step178Add0Work=some s2Step178Add0During := by
  have len : s2Step178Add0Work.length=hmrHybridCount s2Step178Add0Arena s2Step178Add0B.length := by
    rw [hmrHybridCount,s2Step178Add0_card]
    decide +kernel
  have nd : s2Step178Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step178Add0Arena s2Step178Add0During s2Step178Add0Work.toFinset s2Step178Add0_bounded s2Step178Add0_apart rfl

private theorem s2Step178Add0_distinct : (830::807::794::(s2Step178Add0A++s2Step178Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178Add0_owned : (830::807::794::(s2Step178Add0A++s2Step178Add0B)).toFinset⊆s2Step178Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step178Add0Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178Add0_checked : compileHmrHybridCinLog s2Step178Add0Arena 807 830 794 s2Step178Add0A s2Step178Add0B s2Step178Add0Work=some s2Step178Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step178Add0Arena s2Step178Add0During 807 830 794 s2Step178Add0A s2Step178Add0B s2Step178Add0Work
    (by decide +kernel) (by decide +kernel) s2Step178Add0_distinct
    (fun q hq => s2Step178Add0_owned (List.mem_toFinset.mpr hq)) s2Step178Add0_borrowed

private theorem s2Step178Add1_apart : Disjoint s2Step178Add1Arena.live s2Step178Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step178Add1Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178Add1_card : s2Step178Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step178Add1_borrowed : s2Step178Add1Arena.checkBorrow (hmrHybridCount s2Step178Add1Arena s2Step178Add1B.length) s2Step178Add1Work=some s2Step178Add1During := by
  have len : s2Step178Add1Work.length=hmrHybridCount s2Step178Add1Arena s2Step178Add1B.length := by
    rw [hmrHybridCount,s2Step178Add1_card]
    decide +kernel
  have nd : s2Step178Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step178Add1Arena s2Step178Add1During s2Step178Add1Work.toFinset s2Step178Add1_bounded s2Step178Add1_apart rfl

private theorem s2Step178Add1_distinct : (830::807::794::(s2Step178Add1A++s2Step178Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178Add1_owned : (830::807::794::(s2Step178Add1A++s2Step178Add1B)).toFinset⊆s2Step178Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step178Add1Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178Add1_checked : compileHmrHybridCinLog s2Step178Add1Arena 807 830 794 s2Step178Add1A s2Step178Add1B s2Step178Add1Work=some s2Step178Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step178Add1Arena s2Step178Add1During 807 830 794 s2Step178Add1A s2Step178Add1B s2Step178Add1Work
    (by decide +kernel) (by decide +kernel) s2Step178Add1_distinct
    (fun q hq => s2Step178Add1_owned (List.mem_toFinset.mpr hq)) s2Step178Add1_borrowed

private theorem s2Step178F4_apart : Disjoint (s2Step178Add0A++s2Step178Add0B).toFinset (s2Step178Add1A++s2Step178Add1B).toFinset := by
  have nd : ((s2Step178Add0A++s2Step178Add0B)++(s2Step178Add1A++s2Step178Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step178F4_carry : s2Step178F4FlagArena.checkBorrow 1 [794]=some s2Step178Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step178F4FlagArena,s2Step178HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step178F4FlagArena,s2Step178HeadFvAfter,s2Step178Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step178F4_distinct : (846::807::830::794::((s2Step178Add0A++s2Step178Add1A)++(s2Step178Add0B++s2Step178Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178F4_flag : s2Step178HeadFvAfter.checkBorrow 1 [830]=some s2Step178F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step178HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step178F4_owned : (846::807::((s2Step178Add0A++s2Step178Add1A)++(s2Step178Add0B++s2Step178Add1B))).toFinset⊆s2Step178HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step178HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178F4_checked : compileHmrHybridF4Log s2Step178HeadFvAfter 846 807 s2Step178Add0A s2Step178Add0B s2Step178Add1A s2Step178Add1B [830] [794] s2Step178Add0Work s2Step178Add1Work=some s2Step178F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step178HeadFvAfter s2Step178F4FlagArena s2Step178Add0Arena s2Step178Add0During s2Step178Add1During 846 807
    s2Step178Add0A s2Step178Add0B s2Step178Add1A s2Step178Add1B [830] [794] s2Step178Add0Work s2Step178Add1Work
    (fun q hq => s2Step178F4_owned (List.mem_toFinset.mpr hq)) s2Step178F4_flag s2Step178F4_carry
    s2Step178F4_distinct s2Step178F4_apart s2Step178Add0_checked s2Step178Add1_checked

private theorem s2Step178Front_branch : s2Step178FrontSigmaArena.checkBorrow 1 [807]=some s2Step178HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step178FrontSigmaArena,s2Step178EntryGvAfter,s2Step178EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step178FrontSigmaArena,s2Step178EntryGvAfter,s2Step178EntryFBefore,s2Step178HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step178Front_entry : HmrFrontEntryValid s2Step178EntryFBefore s2Step178FrontBank 180 103 ⟨180,179,103,103⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step178FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step178EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step178EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step178FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step178Front_sigma : s2Step178EntryGvAfter.checkBorrow 1 [846]=some s2Step178FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step178EntryGvAfter,s2Step178EntryFBefore,arenaWires]
  · rfl

private def s2Step178HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178HeadFBefore : Arena := s2Step178HeadGAfter

private def s2Step178HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩

private def s2Step178HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step178HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],769⟩

private def s2Step178HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩

private theorem s2Step178HeadBank_incomingDistinct : ([s2Step178HeadGRow,s2Step178HeadFRow,s2Step178HeadGvRow,s2Step178HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178HeadF_Incoming : rowsOwned s2Step178HeadFBefore [s2Step178HeadFRow,s2Step178HeadGvRow,s2Step178HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178HeadGRow,s2Step178HeadFRow,s2Step178HeadGvRow,s2Step178HeadFvRow] 1 s2Step178HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178HeadBank_outgoingOwned : rowsOwned s2Step178HeadFvAfter [s2Step178HeadGOut,s2Step178HeadFOut,s2Step178HeadGvOut,s2Step178HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step178HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178HeadF_Outgoing : rowsOwned s2Step178HeadFvAfter [s2Step178HeadFOut,s2Step178HeadGvOut,s2Step178HeadFvOut] :=
  hmrRows_owned_drop s2Step178HeadFvAfter [s2Step178HeadGOut,s2Step178HeadFOut,s2Step178HeadGvOut,s2Step178HeadFvOut] 1 s2Step178HeadBank_outgoingOwned

private theorem s2Step178HeadF_distinct : (s2Step178HeadFRow.sign::s2Step178HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178HeadF_owned : (s2Step178HeadFRow.sign::s2Step178HeadFRow.payload).toFinset⊆s2Step178HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178HeadF_reserved : s2Step178HeadFBefore.reserve s2Step178HeadFFresh.toFinset=some s2Step178HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step178HeadFFresh,arenaWires]
  · norm_num [s2Step178HeadFBefore,s2Step178HeadGAfter,s2Step178HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step178HeadFAfter,s2Step178HeadFBefore,s2Step178HeadGAfter,s2Step178HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step178HeadF_checked : planRowResizeLog s2Step178HeadFBefore s2Step178HeadFRow 181 s2Step178HeadFFresh=
    some (s2Step178HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 792],768⟩,growRow 768 s2Step178HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step178HeadFBefore s2Step178HeadFAfter s2Step178HeadFRow 181 s2Step178HeadFFresh
    s2Step178HeadF_distinct s2Step178HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step178HeadF_reserved
  have rowEq : WindowRow.mk (s2Step178HeadFRow.payload++s2Step178HeadFFresh) s2Step178HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 792],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step178HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step178HeadFvBefore : Arena := s2Step178HeadGvAfter

private theorem s2Step178HeadFv_Incoming : rowsOwned s2Step178HeadFvBefore [s2Step178HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178HeadGRow,s2Step178HeadFRow,s2Step178HeadGvRow,s2Step178HeadFvRow] 3 s2Step178HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178HeadFv_Outgoing : rowsOwned s2Step178HeadFvAfter [s2Step178HeadFvOut] :=
  hmrRows_owned_drop s2Step178HeadFvAfter [s2Step178HeadGOut,s2Step178HeadFOut,s2Step178HeadGvOut,s2Step178HeadFvOut] 3 s2Step178HeadBank_outgoingOwned

private theorem s2Step178HeadFv_distinct : (s2Step178HeadFvRow.sign::s2Step178HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178HeadFv_owned : (s2Step178HeadFvRow.sign::s2Step178HeadFvRow.payload).toFinset⊆s2Step178HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178HeadFv_reserved : s2Step178HeadFvBefore.reserve s2Step178HeadFvFresh.toFinset=some s2Step178HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step178HeadFvFresh,arenaWires]
  · norm_num [s2Step178HeadFvBefore,s2Step178HeadGvAfter,s2Step178HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step178HeadFvAfter,s2Step178HeadFvBefore,s2Step178HeadGvAfter,s2Step178HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step178HeadFv_checked : planRowResizeLog s2Step178HeadFvBefore s2Step178HeadFvRow 104 s2Step178HeadFvFresh=
    some (s2Step178HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 806],770⟩,growRow 770 s2Step178HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step178HeadFvBefore s2Step178HeadFvAfter s2Step178HeadFvRow 104 s2Step178HeadFvFresh
    s2Step178HeadFv_distinct s2Step178HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step178HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step178HeadFvRow.payload++s2Step178HeadFvFresh) s2Step178HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step178HeadG_Incoming : rowsOwned s2Step178HeadGBefore [s2Step178HeadGRow,s2Step178HeadFRow,s2Step178HeadGvRow,s2Step178HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178HeadGRow,s2Step178HeadFRow,s2Step178HeadGvRow,s2Step178HeadFvRow] 0 s2Step178HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178HeadG_Outgoing : rowsOwned s2Step178HeadFvAfter [s2Step178HeadGOut,s2Step178HeadFOut,s2Step178HeadGvOut,s2Step178HeadFvOut] :=
  hmrRows_owned_drop s2Step178HeadFvAfter [s2Step178HeadGOut,s2Step178HeadFOut,s2Step178HeadGvOut,s2Step178HeadFvOut] 0 s2Step178HeadBank_outgoingOwned

private theorem s2Step178HeadG_distinct : (s2Step178HeadGRow.sign::s2Step178HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178HeadG_owned : (s2Step178HeadGRow.sign::s2Step178HeadGRow.payload).toFinset⊆s2Step178HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178HeadG_reserved : s2Step178HeadGBefore.reserve s2Step178HeadGFresh.toFinset=some s2Step178HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step178HeadGFresh,arenaWires]
  · norm_num [s2Step178HeadGBefore,s2Step178HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step178HeadGAfter,s2Step178HeadGBefore,s2Step178HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step178HeadG_checked : planRowResizeLog s2Step178HeadGBefore s2Step178HeadGRow 181 s2Step178HeadGFresh=
    some (s2Step178HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 819],769⟩,growRow 769 s2Step178HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step178HeadGBefore s2Step178HeadGAfter s2Step178HeadGRow 181 s2Step178HeadGFresh
    s2Step178HeadG_distinct s2Step178HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step178HeadG_reserved
  have rowEq : WindowRow.mk (s2Step178HeadGRow.payload++s2Step178HeadGFresh) s2Step178HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 819],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step178HeadGvBefore : Arena := s2Step178HeadFAfter

private theorem s2Step178HeadGv_Incoming : rowsOwned s2Step178HeadGvBefore [s2Step178HeadGvRow,s2Step178HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step178HeadGRow,s2Step178HeadFRow,s2Step178HeadGvRow,s2Step178HeadFvRow] 2 s2Step178HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step178HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step178HeadGv_Outgoing : rowsOwned s2Step178HeadFvAfter [s2Step178HeadGvOut,s2Step178HeadFvOut] :=
  hmrRows_owned_drop s2Step178HeadFvAfter [s2Step178HeadGOut,s2Step178HeadFOut,s2Step178HeadGvOut,s2Step178HeadFvOut] 2 s2Step178HeadBank_outgoingOwned

private theorem s2Step178HeadGv_distinct : (s2Step178HeadGvRow.sign::s2Step178HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step178HeadGv_owned : (s2Step178HeadGvRow.sign::s2Step178HeadGvRow.payload).toFinset⊆s2Step178HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step178HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step178HeadGv_reserved : s2Step178HeadGvBefore.reserve s2Step178HeadGvFresh.toFinset=some s2Step178HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step178HeadGvFresh,arenaWires]
  · norm_num [s2Step178HeadGvBefore,s2Step178HeadFAfter,s2Step178HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step178HeadGvAfter,s2Step178HeadGvBefore,s2Step178HeadFAfter,s2Step178HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step178HeadGv_checked : planRowResizeLog s2Step178HeadGvBefore s2Step178HeadGvRow 104 s2Step178HeadGvFresh=
    some (s2Step178HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 785],771⟩,growRow 771 s2Step178HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step178HeadGvBefore s2Step178HeadGvAfter s2Step178HeadGvRow 104 s2Step178HeadGvFresh
    s2Step178HeadGv_distinct s2Step178HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step178HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step178HeadGvRow.payload++s2Step178HeadGvFresh) s2Step178HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step178HeadBank_rows : planWindowRowsLog s2Step178HeadGBefore [(s2Step178HeadGRow,181),(s2Step178HeadFRow,181),(s2Step178HeadGvRow,104),(s2Step178HeadFvRow,104)] [s2Step178HeadGFresh,s2Step178HeadFFresh,s2Step178HeadGvFresh,s2Step178HeadFvFresh]=
    some (s2Step178HeadFvAfter,[s2Step178HeadGOut,s2Step178HeadFOut,s2Step178HeadGvOut,s2Step178HeadFvOut],(growRow 769 s2Step178HeadGFresh ++ (growRow 768 s2Step178HeadFFresh ++ (growRow 771 s2Step178HeadGvFresh ++ (growRow 770 s2Step178HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step178HeadFvAfter [] []=some (s2Step178HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step178HeadFvBefore s2Step178HeadFvAfter s2Step178HeadFvAfter
    s2Step178HeadFvRow s2Step178HeadFvOut 104 s2Step178HeadFvFresh [] [] []
    (growRow 770 s2Step178HeadFvFresh) ([]) s2Step178HeadFv_Incoming s2Step178HeadFv_checked h4 s2Step178HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step178HeadGvBefore s2Step178HeadGvAfter s2Step178HeadFvAfter
    s2Step178HeadGvRow s2Step178HeadGvOut 104 s2Step178HeadGvFresh [(s2Step178HeadFvRow,104)] [s2Step178HeadFvFresh] [s2Step178HeadFvOut]
    (growRow 771 s2Step178HeadGvFresh) ((growRow 770 s2Step178HeadFvFresh ++ [])) s2Step178HeadGv_Incoming s2Step178HeadGv_checked h3 s2Step178HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step178HeadFBefore s2Step178HeadFAfter s2Step178HeadFvAfter
    s2Step178HeadFRow s2Step178HeadFOut 181 s2Step178HeadFFresh [(s2Step178HeadGvRow,104),(s2Step178HeadFvRow,104)] [s2Step178HeadGvFresh,s2Step178HeadFvFresh] [s2Step178HeadGvOut,s2Step178HeadFvOut]
    (growRow 768 s2Step178HeadFFresh) ((growRow 771 s2Step178HeadGvFresh ++ (growRow 770 s2Step178HeadFvFresh ++ []))) s2Step178HeadF_Incoming s2Step178HeadF_checked h2 s2Step178HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step178HeadGBefore s2Step178HeadGAfter s2Step178HeadFvAfter
    s2Step178HeadGRow s2Step178HeadGOut 181 s2Step178HeadGFresh [(s2Step178HeadFRow,181),(s2Step178HeadGvRow,104),(s2Step178HeadFvRow,104)] [s2Step178HeadFFresh,s2Step178HeadGvFresh,s2Step178HeadFvFresh] [s2Step178HeadFOut,s2Step178HeadGvOut,s2Step178HeadFvOut]
    (growRow 769 s2Step178HeadGFresh) ((growRow 768 s2Step178HeadFFresh ++ (growRow 771 s2Step178HeadGvFresh ++ (growRow 770 s2Step178HeadFvFresh ++ [])))) s2Step178HeadG_Incoming s2Step178HeadG_checked h1 s2Step178HeadG_Outgoing
  exact h0

private theorem s2Step178HeadBank_checked : compileHmrBankResizeLog .headroom s2Step178HeadGBefore ⟨s2Step178HeadFRow,s2Step178HeadGRow,s2Step178HeadFvRow,s2Step178HeadGvRow⟩ ⟨181,181,104,104⟩ [s2Step178HeadGFresh,s2Step178HeadFFresh,s2Step178HeadGvFresh,s2Step178HeadFvFresh]=
    some (s2Step178HeadFvAfter,⟨s2Step178HeadFOut,s2Step178HeadGOut,s2Step178HeadFvOut,s2Step178HeadGvOut⟩,(growRow 769 s2Step178HeadGFresh ++ (growRow 768 s2Step178HeadFFresh ++ (growRow 771 s2Step178HeadGvFresh ++ (growRow 770 s2Step178HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step178HeadBank_rows]
  rfl

private theorem s2Step178Front_checked : compileHmrSourceFrontLog s2Step178EntryFBefore s2Step178FrontBank 180 103 ⟨180,179,103,103⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step178FrontLog=some s2Step178FrontPlan := by
  have pairEq : s2Step178FrontPair=⟨s2Step178HeadFRow,s2Step178HeadGRow,s2Step178HeadFvRow,s2Step178HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step178FrontHead=⟨s2Step178ExitFRow,s2Step178ExitGRow,s2Step178ExitFvRow,s2Step178ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step178Add0A=s2Step178FrontHead.f.wires := by decide +kernel
  have gEq : s2Step178Add0B=s2Step178FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step178Add1A=s2Step178FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step178Add1B=s2Step178FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step178EntryFBefore s2Step178FrontBank 180 103 ⟨180,179,103,103⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step178FrontLog s2Step178FrontPlan
  · exact s2Step178Front_entry
  · exact s2Step178EntryBank_checked
  · exact s2Step178Front_sigma
  · rfl
  · exact s2Step178Front_branch
  · rfl
  · simpa only [s2Step178FrontPlan,pairEq] using s2Step178HeadBank_checked
  · simpa only [s2Step178FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step178F4_checked
  · exact s2Step178Counter_checked
  · rfl
  · simpa only [s2Step178FrontPlan,headEq] using s2Step178ExitBank_checked

private theorem s2Step178Complete_explicit_checked : compileHmrEarlyStepLog s2Step178EntryFBefore s2Step178FrontBank 180 103 ⟨180,179,103,103⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step178CompleteLog=some s2Step178CompletePlan := by
  let Q := s2Step178EarlyControlPlan
  have hq := s2Step178EarlyControl_plan_checked
  have fv1 : s2Step178CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step178CompleteOut.fv.payload[2]?.getD s2Step178CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step178CompleteOut.fv.payload[3]?.getD s2Step178CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step178CompleteOut.fv.payload[4]?.getD s2Step178CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step178EntryFBefore s2Step178EarlyControlArena s2Step178FrontBank 180 103 ⟨180,179,103,103⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step178CompleteLog s2Step178FrontPlan Q
    s2Step178Front_checked s2Step178Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step178Complete_owned s2Step178Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step178EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 s2Step178CompleteOut.fv.second (s2Step178CompleteOut.fv.payload[2]?.getD s2Step178CompleteOut.fv.sign) (s2Step178CompleteOut.fv.payload[3]?.getD s2Step178CompleteOut.fv.sign) (s2Step178CompleteOut.fv.payload[4]?.getD s2Step178CompleteOut.fv.sign) 807 42 s2Step178EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep178Arena : Arena := s2Step178EntryFBefore
def s2PrivateStep178Bank : WindowBank := s2Step178FrontBank
def s2PrivateStep178Spec : HmrSourceWalkStepLog := ⟨180,103,⟨180,179,103,103⟩,42,.early s2Step178CompleteLog⟩
def s2PrivateStep178Plan : HmrSourceStepPlan := .early s2Step178CompletePlan
theorem s2PrivateStep178_source : s2PrivateStep178Spec=s2ObservedLogs176[2] := rfl
theorem s2PrivateStep178_checked : compileHmrSourceStepLog s2PrivateStep178Arena s2PrivateStep178Bank
    s2PrivateStep178Spec.fgWidth s2PrivateStep178Spec.vWidth s2PrivateStep178Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 178 s2PrivateStep178Spec.need none s2PrivateStep178Spec.log=some s2PrivateStep178Plan := by
  change compileHmrSourceStepLog s2Step178EntryFBefore s2Step178FrontBank 180 103 ⟨180,179,103,103⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 178 42 none (.early s2Step178CompleteLog)=some (.early s2Step178CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 178<498)]
  rw [s2Step178Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
