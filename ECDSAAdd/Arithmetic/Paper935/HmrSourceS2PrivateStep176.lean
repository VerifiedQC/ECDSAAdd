import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep174
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

private def s2Step176CompleteMoves : List (Wire × Wire) := [(806,693)]

private def s2Step176EarlyControlLog : HmrEarlyControlLog := ⟨[806, 785, 847, 793, 830],[794],[803],[799, 867, 877, 879, 882, 885],[]⟩

private def s2Step176FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [830], [], []],[[794], [793], [785], [847]],[[], [], [], []]⟩,[846],[807],[803],[799],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877]⟩

private def s2Step176CompleteLog : HmrEarlyStepLog := ⟨s2Step176FrontLog,s2Step176CompleteMoves,s2Step176EarlyControlLog⟩

private def s2Step176ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692],768⟩

private def s2Step176ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step176ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],769⟩

private def s2Step176ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩

private def s2Step176FrontOut : WindowBank := ⟨s2Step176ExitFOut,s2Step176ExitGOut,s2Step176ExitFvOut,s2Step176ExitGvOut⟩

private def s2Step176CompleteOut : WindowBank := s2Step176FrontOut.repacked s2Step176CompleteMoves

private def s2Step176EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step176EarlyControlPositiveArena,[794],s2Step176EarlyControlEqualityArena,[803],⟨⟨846,false⟩,[⟨⟨794,false⟩,803⟩]⟩⟩

private def s2Step176EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,806⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,847⟩,⟨⟨776,false⟩,793⟩,⟨⟨777,false⟩,830⟩]⟩

private def s2Step176EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step176EarlyControlZeroArena,s2Step176EarlyControlZeroPlan,s2Step176EarlyControlClassPlan,s2Step176EarlyControlFlagArena,s2Step176EarlyControlFittedArena,s2Step176EarlyControlHistoryArena,s2Step176EarlyControlSigmaArena,s2Step176EarlyControlOutputArena,s2Step176EarlyControlLog⟩

private def s2Step176CounterWork : List Wire := [803, 799, 867, 877]

private theorem s2Step176Counter_bounded : s2Step176CounterWork.toFinset⊆arenaWires := by norm_num [s2Step176CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step176HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176CounterDuring : Arena := ⟨s2Step176HeadFvAfter.live∪s2Step176CounterWork.toFinset,Finset.union_subset s2Step176HeadFvAfter.bounded s2Step176Counter_bounded⟩

private def s2Step176EntryFFresh : List Wire := []

private def s2Step176EntryFvFresh : List Wire := []

private def s2Step176EntryGFresh : List Wire := [830]

private def s2Step176EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EntryGvAfter : Arena := s2Step176EntryGAfter

private def s2Step176EntryGvFresh : List Wire := []

private def s2Step176ExitFExtra : List Wire := [693, 793]

private def s2Step176ExitFvExtra : List Wire := [847]

private def s2Step176ExitGExtra : List Wire := [830, 794]

private def s2Step176ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<693) ∨ (694≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176ExitGvExtra : List Wire := [785]

private def s2Step176Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step176Add0_bounded : s2Step176Add0Work.toFinset⊆arenaWires := by
  have h : s2Step176Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step176Add0During : Arena := ⟨s2Step176Add0Arena.live∪s2Step176Add0Work.toFinset,Finset.union_subset s2Step176Add0Arena.bounded s2Step176Add0_bounded⟩

private def s2Step176Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step176Add1_bounded : s2Step176Add1Work.toFinset⊆arenaWires := by
  have h : s2Step176Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step176Add1During : Arena := ⟨s2Step176Add1Arena.live∪s2Step176Add1Work.toFinset,Finset.union_subset s2Step176Add1Arena.bounded s2Step176Add1_bounded⟩

private def s2Step176F4FlagArena : Arena := ⟨s2Step176HeadFvAfter.live∪{803},Finset.union_subset s2Step176HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step176F4Plan : HmrHybridF4Plan := ⟨s2Step176F4FlagArena,[803],s2Step176Add0Arena,[799],s2Step176Add0During,s2Step176Add0Work,s2Step176Add1During,s2Step176Add1Work⟩

private def s2Step176HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 793],768⟩

private def s2Step176HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 847],770⟩

private def s2Step176HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830, 794],769⟩

private def s2Step176HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 785],771⟩

private def s2Step176FrontHead : WindowBank := ⟨s2Step176HeadFOut,s2Step176HeadGOut,s2Step176HeadFvOut,s2Step176HeadGvOut⟩

private def s2Step176EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩

private def s2Step176EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step176EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830],769⟩

private def s2Step176EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩

private def s2Step176FrontPair : WindowBank := ⟨s2Step176EntryFOut,s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut⟩

private def s2Step176FrontSigmaArena : Arena := ⟨s2Step176EntryGvAfter.live∪{846},Finset.union_subset s2Step176EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step176HeadFFresh : List Wire := [793]

private def s2Step176HeadFvFresh : List Wire := [847]

private def s2Step176HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176HeadGFresh : List Wire := [794]

private def s2Step176HeadGvFresh : List Wire := [785]

private def s2Step176FrontPlan : HmrSourceFront := ⟨s2Step176EntryGvAfter,s2Step176FrontPair,(growRow 768 s2Step176EntryFFresh ++ (growRow 769 s2Step176EntryGFresh ++ (growRow 770 s2Step176EntryFvFresh ++ (growRow 771 s2Step176EntryGvFresh ++ [])))),s2Step176FrontSigmaArena,[846],s2Step176HeadGBefore,[807],
  s2Step176HeadFvAfter,s2Step176FrontHead,(growRow 769 s2Step176HeadGFresh ++ (growRow 768 s2Step176HeadFFresh ++ (growRow 771 s2Step176HeadGvFresh ++ (growRow 770 s2Step176HeadFvFresh ++ [])))),s2Step176F4Plan,s2Step176CounterDuring,s2Step176CounterWork,s2Step176ExitGvAfter,s2Step176FrontOut,(shrinkRow 769 s2Step176ExitGExtra ++ (shrinkRow 768 s2Step176ExitFExtra ++ (shrinkRow 770 s2Step176ExitFvExtra ++ (shrinkRow 771 s2Step176ExitGvExtra ++ []))))⟩

private def s2Step176CompletePlan : HmrEarlyStepPlan := ⟨s2Step176FrontPlan,s2Step176EarlyControlArena,s2Step176EarlyControlPlan,s2Step176CompleteMoves⟩

private theorem s2Step176Complete_apart : List.Disjoint (s2Step176CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [846, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step176CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[846, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step176Complete_owned : (s2Step176CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step176EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step176CompleteMoveArena : Arena := ⟨s2Step176ExitGvAfter.live∪{693},Finset.union_subset s2Step176ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step176Complete_repack : s2Step176ExitGvAfter.checkRepack s2Step176CompleteMoves=some s2Step176EarlyControlArena := by
  have owned : 806∈s2Step176ExitGvAfter.live := by norm_num [s2Step176ExitGvAfter,arenaWires]
  have reserve : s2Step176ExitGvAfter.reserve {693}=some s2Step176CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step176ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step176CompleteMoveArena.retireSet {806}=s2Step176EarlyControlArena := by
    unfold Arena.retireSet s2Step176EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step176CompleteMoveArena,s2Step176ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step176CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step176CompleteMoveArena.retireSet {806}).checkRepack []=some s2Step176EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step176EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s2Step176EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_branch : compileHmrBranchRetirement s2Step176EarlyControlSigmaArena 807=some s2Step176EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step176EarlyControl_branchOwned
  · ext q
    simp [s2Step176EarlyControlOutputArena,s2Step176EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step176EarlyControl_classEqualityBorrow : s2Step176EarlyControlPositiveArena.checkBorrow (([846, 794] : List Wire).length-1) s2Step176EarlyControlLog.classWork=some s2Step176EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step176EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step176EarlyControlEqualityArena,s2Step176EarlyControlPositiveArena,s2Step176EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step176EarlyControl_classEqualityOwned : ([846, 794] : List Wire).toFinset⊆s2Step176EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_classEquality : compileHmrEqualityLog s2Step176EarlyControlPositiveArena [846, 794] 0 s2Step176EarlyControlLog.classWork=some (s2Step176EarlyControlEqualityArena,s2Step176EarlyControlLog.classWork,s2Step176EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step176EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step176EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step176EarlyControl_classOwned : ([777, 830, 846] : List Wire).toFinset⊆s2Step176EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_positiveBorrow : s2Step176EarlyControlZeroArena.checkBorrow (1) s2Step176EarlyControlLog.positiveWork=some s2Step176EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step176EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step176EarlyControlPositiveArena,s2Step176EarlyControlZeroArena,s2Step176EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step176EarlyControl_class : compileHmrSourceClassLog s2Step176EarlyControlZeroArena false 777 s2Step176EarlyControlZeroPlan.top 0 846 s2Step176EarlyControlLog.positiveWork s2Step176EarlyControlLog.classWork=some s2Step176EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step176EarlyControlClassPlan s2Step176EarlyControlZeroArena false 777 s2Step176EarlyControlZeroPlan.top 0 846
  constructor
  · decide +kernel
  · exact s2Step176EarlyControl_classOwned
  · exact s2Step176EarlyControl_positiveBorrow
  · exact s2Step176EarlyControl_classEquality

private theorem s2Step176EarlyControl_entryRecordOwned : ([807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step176EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_entrySigmaOwned : ([846, 254] : List Wire).toFinset⊆s2Step176EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_fitBorrow : s2Step176EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step176EarlyControlLog.recordFresh=some s2Step176EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step176EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step176EarlyControlFittedArena,s2Step176EarlyControlFlagArena,s2Step176EarlyControlLog,arenaWires]

private theorem s2Step176EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step176EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_fit : compileHmrRecordGrowLog s2Step176EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step176EarlyControlLog.recordFresh=some s2Step176EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step176EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step176EarlyControl_fitBorrow

private theorem s2Step176EarlyControl_flagsBorrow : s2Step176EarlyControlEqualityArena.checkBorrow (6) s2Step176EarlyControlLog.flagWork=some s2Step176EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step176EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step176EarlyControlFlagArena,s2Step176EarlyControlEqualityArena,s2Step176EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step176EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s2Step176EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_flags : compileHmrFlagsLog s2Step176EarlyControlClassPlan.equalityArena s2Step176EarlyControlClassPlan.equality.top 253 252 251 s2Step176EarlyControlLog.flagWork=some s2Step176EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step176EarlyControl_flagsOwned⟩
  · exact s2Step176EarlyControl_flagsBorrow

private theorem s2Step176EarlyControl_historyBorrow : s2Step176EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step176EarlyControlLog.recordFresh=some s2Step176EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step176EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step176EarlyControlHistoryArena,s2Step176EarlyControlArena,s2Step176EarlyControlLog,arenaWires]

private theorem s2Step176EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step176EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_history : compileHmrRecordGrowLog s2Step176EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step176EarlyControlLog.recordFresh=some s2Step176EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step176EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step176EarlyControl_historyBorrow

private theorem s2Step176EarlyControl_sigmaOwned : ([254, 846] : List Wire).toFinset⊆s2Step176EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_sigmaReleaseOwned : ([846] : List Wire).toFinset⊆s2Step176EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_sigmaRelease : s2Step176EarlyControlHistoryArena.release {846} (fun _ => false)=some s2Step176EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step176EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step176EarlyControlSigmaArena,s2Step176EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step176EarlyControl_sigma : compileHmrSigmaDropLog s2Step176EarlyControlHistoryArena false 0 0 254 846 []=some s2Step176EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step176EarlyControl_sigmaOwned⟩
  · exact s2Step176EarlyControl_sigmaRelease

private theorem s2Step176EarlyControl_zeroBorrow : s2Step176EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step176EarlyControlLog.zeroWork=some s2Step176EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step176EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step176EarlyControlZeroArena,s2Step176EarlyControlArena,s2Step176EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step176EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step176EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step176EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EarlyControl_zero : compileHmrEqualityLog s2Step176EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step176EarlyControlLog.zeroWork=some (s2Step176EarlyControlZeroArena,s2Step176EarlyControlLog.zeroWork,s2Step176EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step176EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step176EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step176EarlyControl_logged : s2Step176EarlyControlPlan.Logged s2Step176EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 807 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step176EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step176EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step176EarlyControl_zero
  · exact s2Step176EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step176EarlyControl_flags
  · exact s2Step176EarlyControl_fit
  · exact s2Step176EarlyControl_history
  · exact s2Step176EarlyControl_sigma
  · exact s2Step176EarlyControl_branch

private theorem s2Step176EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step176EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 807 42 s2Step176EarlyControlLog=some s2Step176EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step176EarlyControlPlan s2Step176EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 807 42 s2Step176EarlyControl_logged

private def s2Step176EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩

private def s2Step176EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step176EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],769⟩

private def s2Step176EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩

private def s2Step176FrontBank : WindowBank := ⟨s2Step176EntryFRow,s2Step176EntryGRow,s2Step176EntryFvRow,s2Step176EntryGvRow⟩

private def s2Step176Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 793, 768]

private def s2Step176Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830, 794, 769]

private def s2Step176Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 847, 770]

private def s2Step176Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 785, 771]

private theorem s2Step176Counter_apart : Disjoint s2Step176HeadFvAfter.live s2Step176CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step176HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176Counter_borrowed : s2Step176HeadFvAfter.checkBorrow 4 s2Step176CounterWork=some s2Step176CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step176HeadFvAfter s2Step176CounterDuring s2Step176CounterWork.toFinset s2Step176Counter_bounded s2Step176Counter_apart rfl

private theorem s2Step176Counter_owned : (846::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step176HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step176HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176Counter_checked : compileHmrCounterStepLog s2Step176HeadFvAfter true 846 [772, 773, 774, 775, 776, 777] s2Step176CounterWork=some s2Step176CounterDuring := by
  have owned : ∀q∈846::[772, 773, 774, 775, 776, 777],q∈s2Step176HeadFvAfter.live := fun q hq => s2Step176Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step176Counter_borrowed

private def s2Step176EntryFAfter : Arena := s2Step176EntryFBefore

private theorem s2Step176EntryBank_incomingDistinct : ([s2Step176EntryFRow,s2Step176EntryGRow,s2Step176EntryFvRow,s2Step176EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176EntryF_Incoming : rowsOwned s2Step176EntryFBefore [s2Step176EntryFRow,s2Step176EntryGRow,s2Step176EntryFvRow,s2Step176EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176EntryFRow,s2Step176EntryGRow,s2Step176EntryFvRow,s2Step176EntryGvRow] 0 s2Step176EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176EntryBank_outgoingOwned : rowsOwned s2Step176EntryGvAfter [s2Step176EntryFOut,s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step176EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176EntryF_Outgoing : rowsOwned s2Step176EntryGvAfter [s2Step176EntryFOut,s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut] :=
  hmrRows_owned_drop s2Step176EntryGvAfter [s2Step176EntryFOut,s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut] 0 s2Step176EntryBank_outgoingOwned

private theorem s2Step176EntryF_distinct : (s2Step176EntryFRow.sign::s2Step176EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176EntryF_owned : (s2Step176EntryFRow.sign::s2Step176EntryFRow.payload).toFinset⊆s2Step176EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EntryF_reserved : s2Step176EntryFBefore.reserve s2Step176EntryFFresh.toFinset=some s2Step176EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step176EntryFFresh,arenaWires]
  · norm_num [s2Step176EntryFBefore,s2Step176EntryFFresh,arenaWires]
  · simp only [s2Step176EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step176EntryF_checked : planRowResizeLog s2Step176EntryFBefore s2Step176EntryFRow 182 s2Step176EntryFFresh=
    some (s2Step176EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩,growRow 768 s2Step176EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step176EntryFBefore s2Step176EntryFAfter s2Step176EntryFRow 182 s2Step176EntryFFresh
    s2Step176EntryF_distinct s2Step176EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step176EntryF_reserved
  have rowEq : WindowRow.mk (s2Step176EntryFRow.payload++s2Step176EntryFFresh) s2Step176EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step176EntryFvAfter : Arena := s2Step176EntryGAfter

private def s2Step176EntryFvBefore : Arena := s2Step176EntryGAfter

private theorem s2Step176EntryFv_Incoming : rowsOwned s2Step176EntryFvBefore [s2Step176EntryFvRow,s2Step176EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176EntryFRow,s2Step176EntryGRow,s2Step176EntryFvRow,s2Step176EntryGvRow] 2 s2Step176EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176EntryFv_Outgoing : rowsOwned s2Step176EntryGvAfter [s2Step176EntryFvOut,s2Step176EntryGvOut] :=
  hmrRows_owned_drop s2Step176EntryGvAfter [s2Step176EntryFOut,s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut] 2 s2Step176EntryBank_outgoingOwned

private theorem s2Step176EntryFv_distinct : (s2Step176EntryFvRow.sign::s2Step176EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176EntryFv_owned : (s2Step176EntryFvRow.sign::s2Step176EntryFvRow.payload).toFinset⊆s2Step176EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EntryFv_reserved : s2Step176EntryFvBefore.reserve s2Step176EntryFvFresh.toFinset=some s2Step176EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step176EntryFvFresh,arenaWires]
  · norm_num [s2Step176EntryFvBefore,s2Step176EntryGAfter,s2Step176EntryFvFresh,arenaWires]
  · simp only [s2Step176EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step176EntryFv_checked : planRowResizeLog s2Step176EntryFvBefore s2Step176EntryFvRow 102 s2Step176EntryFvFresh=
    some (s2Step176EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩,growRow 770 s2Step176EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step176EntryFvBefore s2Step176EntryFvAfter s2Step176EntryFvRow 102 s2Step176EntryFvFresh
    s2Step176EntryFv_distinct s2Step176EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step176EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step176EntryFvRow.payload++s2Step176EntryFvFresh) s2Step176EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step176EntryGBefore : Arena := s2Step176EntryFBefore

private theorem s2Step176EntryG_Incoming : rowsOwned s2Step176EntryGBefore [s2Step176EntryGRow,s2Step176EntryFvRow,s2Step176EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176EntryFRow,s2Step176EntryGRow,s2Step176EntryFvRow,s2Step176EntryGvRow] 1 s2Step176EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176EntryG_Outgoing : rowsOwned s2Step176EntryGvAfter [s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut] :=
  hmrRows_owned_drop s2Step176EntryGvAfter [s2Step176EntryFOut,s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut] 1 s2Step176EntryBank_outgoingOwned

private theorem s2Step176EntryG_distinct : (s2Step176EntryGRow.sign::s2Step176EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176EntryG_owned : (s2Step176EntryGRow.sign::s2Step176EntryGRow.payload).toFinset⊆s2Step176EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EntryG_reserved : s2Step176EntryGBefore.reserve s2Step176EntryGFresh.toFinset=some s2Step176EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step176EntryGFresh,arenaWires]
  · norm_num [s2Step176EntryGBefore,s2Step176EntryFBefore,s2Step176EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step176EntryGAfter,s2Step176EntryGBefore,s2Step176EntryFBefore,s2Step176EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step176EntryG_checked : planRowResizeLog s2Step176EntryGBefore s2Step176EntryGRow 182 s2Step176EntryGFresh=
    some (s2Step176EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830],769⟩,growRow 769 s2Step176EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step176EntryGBefore s2Step176EntryGAfter s2Step176EntryGRow 182 s2Step176EntryGFresh
    s2Step176EntryG_distinct s2Step176EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step176EntryG_reserved
  have rowEq : WindowRow.mk (s2Step176EntryGRow.payload++s2Step176EntryGFresh) s2Step176EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step176EntryGvBefore : Arena := s2Step176EntryGAfter

private theorem s2Step176EntryGv_Incoming : rowsOwned s2Step176EntryGvBefore [s2Step176EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176EntryFRow,s2Step176EntryGRow,s2Step176EntryFvRow,s2Step176EntryGvRow] 3 s2Step176EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176EntryGv_Outgoing : rowsOwned s2Step176EntryGvAfter [s2Step176EntryGvOut] :=
  hmrRows_owned_drop s2Step176EntryGvAfter [s2Step176EntryFOut,s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut] 3 s2Step176EntryBank_outgoingOwned

private theorem s2Step176EntryGv_distinct : (s2Step176EntryGvRow.sign::s2Step176EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176EntryGv_owned : (s2Step176EntryGvRow.sign::s2Step176EntryGvRow.payload).toFinset⊆s2Step176EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176EntryGv_reserved : s2Step176EntryGvBefore.reserve s2Step176EntryGvFresh.toFinset=some s2Step176EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step176EntryGvFresh,arenaWires]
  · norm_num [s2Step176EntryGvBefore,s2Step176EntryGAfter,s2Step176EntryGvFresh,arenaWires]
  · simp only [s2Step176EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step176EntryGv_checked : planRowResizeLog s2Step176EntryGvBefore s2Step176EntryGvRow 102 s2Step176EntryGvFresh=
    some (s2Step176EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩,growRow 771 s2Step176EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step176EntryGvBefore s2Step176EntryGvAfter s2Step176EntryGvRow 102 s2Step176EntryGvFresh
    s2Step176EntryGv_distinct s2Step176EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step176EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step176EntryGvRow.payload++s2Step176EntryGvFresh) s2Step176EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step176EntryBank_rows : planWindowRowsLog s2Step176EntryFBefore [(s2Step176EntryFRow,182),(s2Step176EntryGRow,182),(s2Step176EntryFvRow,102),(s2Step176EntryGvRow,102)] [s2Step176EntryFFresh,s2Step176EntryGFresh,s2Step176EntryFvFresh,s2Step176EntryGvFresh]=
    some (s2Step176EntryGvAfter,[s2Step176EntryFOut,s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut],(growRow 768 s2Step176EntryFFresh ++ (growRow 769 s2Step176EntryGFresh ++ (growRow 770 s2Step176EntryFvFresh ++ (growRow 771 s2Step176EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step176EntryGvAfter [] []=some (s2Step176EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step176EntryGvBefore s2Step176EntryGvAfter s2Step176EntryGvAfter
    s2Step176EntryGvRow s2Step176EntryGvOut 102 s2Step176EntryGvFresh [] [] []
    (growRow 771 s2Step176EntryGvFresh) ([]) s2Step176EntryGv_Incoming s2Step176EntryGv_checked h4 s2Step176EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step176EntryFvBefore s2Step176EntryFvAfter s2Step176EntryGvAfter
    s2Step176EntryFvRow s2Step176EntryFvOut 102 s2Step176EntryFvFresh [(s2Step176EntryGvRow,102)] [s2Step176EntryGvFresh] [s2Step176EntryGvOut]
    (growRow 770 s2Step176EntryFvFresh) ((growRow 771 s2Step176EntryGvFresh ++ [])) s2Step176EntryFv_Incoming s2Step176EntryFv_checked h3 s2Step176EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step176EntryGBefore s2Step176EntryGAfter s2Step176EntryGvAfter
    s2Step176EntryGRow s2Step176EntryGOut 182 s2Step176EntryGFresh [(s2Step176EntryFvRow,102),(s2Step176EntryGvRow,102)] [s2Step176EntryFvFresh,s2Step176EntryGvFresh] [s2Step176EntryFvOut,s2Step176EntryGvOut]
    (growRow 769 s2Step176EntryGFresh) ((growRow 770 s2Step176EntryFvFresh ++ (growRow 771 s2Step176EntryGvFresh ++ []))) s2Step176EntryG_Incoming s2Step176EntryG_checked h2 s2Step176EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step176EntryFBefore s2Step176EntryFAfter s2Step176EntryGvAfter
    s2Step176EntryFRow s2Step176EntryFOut 182 s2Step176EntryFFresh [(s2Step176EntryGRow,182),(s2Step176EntryFvRow,102),(s2Step176EntryGvRow,102)] [s2Step176EntryGFresh,s2Step176EntryFvFresh,s2Step176EntryGvFresh] [s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut]
    (growRow 768 s2Step176EntryFFresh) ((growRow 769 s2Step176EntryGFresh ++ (growRow 770 s2Step176EntryFvFresh ++ (growRow 771 s2Step176EntryGvFresh ++ [])))) s2Step176EntryF_Incoming s2Step176EntryF_checked h1 s2Step176EntryF_Outgoing
  exact h0

private theorem s2Step176EntryBank_checked : compileHmrBankResizeLog .entry s2Step176EntryFBefore ⟨s2Step176EntryFRow,s2Step176EntryGRow,s2Step176EntryFvRow,s2Step176EntryGvRow⟩ ⟨182,182,102,102⟩ [s2Step176EntryFFresh,s2Step176EntryGFresh,s2Step176EntryFvFresh,s2Step176EntryGvFresh]=
    some (s2Step176EntryGvAfter,⟨s2Step176EntryFOut,s2Step176EntryGOut,s2Step176EntryFvOut,s2Step176EntryGvOut⟩,(growRow 768 s2Step176EntryFFresh ++ (growRow 769 s2Step176EntryGFresh ++ (growRow 770 s2Step176EntryFvFresh ++ (growRow 771 s2Step176EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step176EntryBank_rows]
  rfl

private def s2Step176ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<693) ∨ (694≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176ExitFBefore : Arena := s2Step176ExitGAfter

private def s2Step176ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 793],768⟩

private def s2Step176ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 847],770⟩

private def s2Step176ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830, 794],769⟩

private def s2Step176ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 785],771⟩

private theorem s2Step176ExitBank_incomingDistinct : ([s2Step176ExitGRow,s2Step176ExitFRow,s2Step176ExitFvRow,s2Step176ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176ExitF_Incoming : rowsOwned s2Step176ExitFBefore [s2Step176ExitFRow,s2Step176ExitFvRow,s2Step176ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176ExitGRow,s2Step176ExitFRow,s2Step176ExitFvRow,s2Step176ExitGvRow] 1 s2Step176ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176ExitBank_outgoingOwned : rowsOwned s2Step176ExitGvAfter [s2Step176ExitGOut,s2Step176ExitFOut,s2Step176ExitFvOut,s2Step176ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step176ExitGvAfter (fun q => (0≤q ∧ q<693) ∨ (694≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176ExitF_Outgoing : rowsOwned s2Step176ExitGvAfter [s2Step176ExitFOut,s2Step176ExitFvOut,s2Step176ExitGvOut] :=
  hmrRows_owned_drop s2Step176ExitGvAfter [s2Step176ExitGOut,s2Step176ExitFOut,s2Step176ExitFvOut,s2Step176ExitGvOut] 1 s2Step176ExitBank_outgoingOwned

private theorem s2Step176ExitF_distinct : (s2Step176ExitFRow.sign::s2Step176ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176ExitF_owned : (s2Step176ExitFRow.sign::s2Step176ExitFRow.payload).toFinset⊆s2Step176ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176ExitF_retired : s2Step176ExitFBefore.retireSet s2Step176ExitFExtra.toFinset=s2Step176ExitFAfter := by
  unfold Arena.retireSet s2Step176ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step176ExitFBefore,s2Step176ExitGAfter,s2Step176ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step176ExitF_checked : planRowResizeLog s2Step176ExitFBefore s2Step176ExitFRow 181 []=
    some (s2Step176ExitFAfter,s2Step176ExitFOut,shrinkRow 768 s2Step176ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step176ExitFBefore s2Step176ExitFRow 181 s2Step176ExitF_distinct s2Step176ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step176ExitFRow.payload.take 181) s2Step176ExitFRow.sign=s2Step176ExitFOut := by decide +kernel
  have hi : s2Step176ExitFRow.payload.drop 181=s2Step176ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step176ExitF_retired] at result
  exact result

private def s2Step176ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<693) ∨ (694≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176ExitFvBefore : Arena := s2Step176ExitFAfter

private theorem s2Step176ExitFv_Incoming : rowsOwned s2Step176ExitFvBefore [s2Step176ExitFvRow,s2Step176ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176ExitGRow,s2Step176ExitFRow,s2Step176ExitFvRow,s2Step176ExitGvRow] 2 s2Step176ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176ExitFvBefore (fun q => (0≤q ∧ q<693) ∨ (694≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176ExitFv_Outgoing : rowsOwned s2Step176ExitGvAfter [s2Step176ExitFvOut,s2Step176ExitGvOut] :=
  hmrRows_owned_drop s2Step176ExitGvAfter [s2Step176ExitGOut,s2Step176ExitFOut,s2Step176ExitFvOut,s2Step176ExitGvOut] 2 s2Step176ExitBank_outgoingOwned

private theorem s2Step176ExitFv_distinct : (s2Step176ExitFvRow.sign::s2Step176ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176ExitFv_owned : (s2Step176ExitFvRow.sign::s2Step176ExitFvRow.payload).toFinset⊆s2Step176ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176ExitFvBefore (fun q => (0≤q ∧ q<693) ∨ (694≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176ExitFv_retired : s2Step176ExitFvBefore.retireSet s2Step176ExitFvExtra.toFinset=s2Step176ExitFvAfter := by
  unfold Arena.retireSet s2Step176ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step176ExitFvBefore,s2Step176ExitFAfter,s2Step176ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step176ExitFv_checked : planRowResizeLog s2Step176ExitFvBefore s2Step176ExitFvRow 102 []=
    some (s2Step176ExitFvAfter,s2Step176ExitFvOut,shrinkRow 770 s2Step176ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step176ExitFvBefore s2Step176ExitFvRow 102 s2Step176ExitFv_distinct s2Step176ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step176ExitFvRow.payload.take 102) s2Step176ExitFvRow.sign=s2Step176ExitFvOut := by decide +kernel
  have hi : s2Step176ExitFvRow.payload.drop 102=s2Step176ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step176ExitFv_retired] at result
  exact result

private def s2Step176ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step176ExitG_Incoming : rowsOwned s2Step176ExitGBefore [s2Step176ExitGRow,s2Step176ExitFRow,s2Step176ExitFvRow,s2Step176ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176ExitGRow,s2Step176ExitFRow,s2Step176ExitFvRow,s2Step176ExitGvRow] 0 s2Step176ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176ExitG_Outgoing : rowsOwned s2Step176ExitGvAfter [s2Step176ExitGOut,s2Step176ExitFOut,s2Step176ExitFvOut,s2Step176ExitGvOut] :=
  hmrRows_owned_drop s2Step176ExitGvAfter [s2Step176ExitGOut,s2Step176ExitFOut,s2Step176ExitFvOut,s2Step176ExitGvOut] 0 s2Step176ExitBank_outgoingOwned

private theorem s2Step176ExitG_distinct : (s2Step176ExitGRow.sign::s2Step176ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176ExitG_owned : (s2Step176ExitGRow.sign::s2Step176ExitGRow.payload).toFinset⊆s2Step176ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176ExitG_retired : s2Step176ExitGBefore.retireSet s2Step176ExitGExtra.toFinset=s2Step176ExitGAfter := by
  unfold Arena.retireSet s2Step176ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step176ExitGBefore,s2Step176ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step176ExitG_checked : planRowResizeLog s2Step176ExitGBefore s2Step176ExitGRow 181 []=
    some (s2Step176ExitGAfter,s2Step176ExitGOut,shrinkRow 769 s2Step176ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step176ExitGBefore s2Step176ExitGRow 181 s2Step176ExitG_distinct s2Step176ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step176ExitGRow.payload.take 181) s2Step176ExitGRow.sign=s2Step176ExitGOut := by decide +kernel
  have hi : s2Step176ExitGRow.payload.drop 181=s2Step176ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step176ExitG_retired] at result
  exact result

private def s2Step176ExitGvBefore : Arena := s2Step176ExitFvAfter

private theorem s2Step176ExitGv_Incoming : rowsOwned s2Step176ExitGvBefore [s2Step176ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176ExitGRow,s2Step176ExitFRow,s2Step176ExitFvRow,s2Step176ExitGvRow] 3 s2Step176ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176ExitGvBefore (fun q => (0≤q ∧ q<693) ∨ (694≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176ExitGv_Outgoing : rowsOwned s2Step176ExitGvAfter [s2Step176ExitGvOut] :=
  hmrRows_owned_drop s2Step176ExitGvAfter [s2Step176ExitGOut,s2Step176ExitFOut,s2Step176ExitFvOut,s2Step176ExitGvOut] 3 s2Step176ExitBank_outgoingOwned

private theorem s2Step176ExitGv_distinct : (s2Step176ExitGvRow.sign::s2Step176ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176ExitGv_owned : (s2Step176ExitGvRow.sign::s2Step176ExitGvRow.payload).toFinset⊆s2Step176ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176ExitGvBefore (fun q => (0≤q ∧ q<693) ∨ (694≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176ExitGv_retired : s2Step176ExitGvBefore.retireSet s2Step176ExitGvExtra.toFinset=s2Step176ExitGvAfter := by
  unfold Arena.retireSet s2Step176ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step176ExitGvBefore,s2Step176ExitFvAfter,s2Step176ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step176ExitGv_checked : planRowResizeLog s2Step176ExitGvBefore s2Step176ExitGvRow 102 []=
    some (s2Step176ExitGvAfter,s2Step176ExitGvOut,shrinkRow 771 s2Step176ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step176ExitGvBefore s2Step176ExitGvRow 102 s2Step176ExitGv_distinct s2Step176ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step176ExitGvRow.payload.take 102) s2Step176ExitGvRow.sign=s2Step176ExitGvOut := by decide +kernel
  have hi : s2Step176ExitGvRow.payload.drop 102=s2Step176ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step176ExitGv_retired] at result
  exact result

private theorem s2Step176ExitBank_rows : planWindowRowsLog s2Step176ExitGBefore [(s2Step176ExitGRow,181),(s2Step176ExitFRow,181),(s2Step176ExitFvRow,102),(s2Step176ExitGvRow,102)] [[],[],[],[]]=
    some (s2Step176ExitGvAfter,[s2Step176ExitGOut,s2Step176ExitFOut,s2Step176ExitFvOut,s2Step176ExitGvOut],(shrinkRow 769 s2Step176ExitGExtra ++ (shrinkRow 768 s2Step176ExitFExtra ++ (shrinkRow 770 s2Step176ExitFvExtra ++ (shrinkRow 771 s2Step176ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step176ExitGvAfter [] []=some (s2Step176ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step176ExitGvBefore s2Step176ExitGvAfter s2Step176ExitGvAfter
    s2Step176ExitGvRow s2Step176ExitGvOut 102 [] [] [] []
    (shrinkRow 771 s2Step176ExitGvExtra) ([]) s2Step176ExitGv_Incoming s2Step176ExitGv_checked h4 s2Step176ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step176ExitFvBefore s2Step176ExitFvAfter s2Step176ExitGvAfter
    s2Step176ExitFvRow s2Step176ExitFvOut 102 [] [(s2Step176ExitGvRow,102)] [[]] [s2Step176ExitGvOut]
    (shrinkRow 770 s2Step176ExitFvExtra) ((shrinkRow 771 s2Step176ExitGvExtra ++ [])) s2Step176ExitFv_Incoming s2Step176ExitFv_checked h3 s2Step176ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step176ExitFBefore s2Step176ExitFAfter s2Step176ExitGvAfter
    s2Step176ExitFRow s2Step176ExitFOut 181 [] [(s2Step176ExitFvRow,102),(s2Step176ExitGvRow,102)] [[],[]] [s2Step176ExitFvOut,s2Step176ExitGvOut]
    (shrinkRow 768 s2Step176ExitFExtra) ((shrinkRow 770 s2Step176ExitFvExtra ++ (shrinkRow 771 s2Step176ExitGvExtra ++ []))) s2Step176ExitF_Incoming s2Step176ExitF_checked h2 s2Step176ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step176ExitGBefore s2Step176ExitGAfter s2Step176ExitGvAfter
    s2Step176ExitGRow s2Step176ExitGOut 181 [] [(s2Step176ExitFRow,181),(s2Step176ExitFvRow,102),(s2Step176ExitGvRow,102)] [[],[],[]] [s2Step176ExitFOut,s2Step176ExitFvOut,s2Step176ExitGvOut]
    (shrinkRow 769 s2Step176ExitGExtra) ((shrinkRow 768 s2Step176ExitFExtra ++ (shrinkRow 770 s2Step176ExitFvExtra ++ (shrinkRow 771 s2Step176ExitGvExtra ++ [])))) s2Step176ExitG_Incoming s2Step176ExitG_checked h1 s2Step176ExitG_Outgoing
  exact h0

private theorem s2Step176ExitBank_checked : compileHmrBankResizeLog .exit s2Step176ExitGBefore ⟨s2Step176ExitFRow,s2Step176ExitGRow,s2Step176ExitFvRow,s2Step176ExitGvRow⟩ ⟨181,181,102,102⟩ [[],[],[],[]]=
    some (s2Step176ExitGvAfter,⟨s2Step176ExitFOut,s2Step176ExitGOut,s2Step176ExitFvOut,s2Step176ExitGvOut⟩,(shrinkRow 769 s2Step176ExitGExtra ++ (shrinkRow 768 s2Step176ExitFExtra ++ (shrinkRow 770 s2Step176ExitFvExtra ++ (shrinkRow 771 s2Step176ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step176ExitBank_rows]
  rfl

private theorem s2Step176Add0_apart : Disjoint s2Step176Add0Arena.live s2Step176Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step176Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176Add0_card : s2Step176Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step176Add0_borrowed : s2Step176Add0Arena.checkBorrow (hmrHybridCount s2Step176Add0Arena s2Step176Add0B.length) s2Step176Add0Work=some s2Step176Add0During := by
  have len : s2Step176Add0Work.length=hmrHybridCount s2Step176Add0Arena s2Step176Add0B.length := by
    rw [hmrHybridCount,s2Step176Add0_card]
    decide +kernel
  have nd : s2Step176Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step176Add0Arena s2Step176Add0During s2Step176Add0Work.toFinset s2Step176Add0_bounded s2Step176Add0_apart rfl

private theorem s2Step176Add0_distinct : (803::807::799::(s2Step176Add0A++s2Step176Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176Add0_owned : (803::807::799::(s2Step176Add0A++s2Step176Add0B)).toFinset⊆s2Step176Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step176Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176Add0_checked : compileHmrHybridCinLog s2Step176Add0Arena 807 803 799 s2Step176Add0A s2Step176Add0B s2Step176Add0Work=some s2Step176Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step176Add0Arena s2Step176Add0During 807 803 799 s2Step176Add0A s2Step176Add0B s2Step176Add0Work
    (by decide +kernel) (by decide +kernel) s2Step176Add0_distinct
    (fun q hq => s2Step176Add0_owned (List.mem_toFinset.mpr hq)) s2Step176Add0_borrowed

private theorem s2Step176Add1_apart : Disjoint s2Step176Add1Arena.live s2Step176Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step176Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176Add1_card : s2Step176Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step176Add1_borrowed : s2Step176Add1Arena.checkBorrow (hmrHybridCount s2Step176Add1Arena s2Step176Add1B.length) s2Step176Add1Work=some s2Step176Add1During := by
  have len : s2Step176Add1Work.length=hmrHybridCount s2Step176Add1Arena s2Step176Add1B.length := by
    rw [hmrHybridCount,s2Step176Add1_card]
    decide +kernel
  have nd : s2Step176Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step176Add1Arena s2Step176Add1During s2Step176Add1Work.toFinset s2Step176Add1_bounded s2Step176Add1_apart rfl

private theorem s2Step176Add1_distinct : (803::807::799::(s2Step176Add1A++s2Step176Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176Add1_owned : (803::807::799::(s2Step176Add1A++s2Step176Add1B)).toFinset⊆s2Step176Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step176Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176Add1_checked : compileHmrHybridCinLog s2Step176Add1Arena 807 803 799 s2Step176Add1A s2Step176Add1B s2Step176Add1Work=some s2Step176Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step176Add1Arena s2Step176Add1During 807 803 799 s2Step176Add1A s2Step176Add1B s2Step176Add1Work
    (by decide +kernel) (by decide +kernel) s2Step176Add1_distinct
    (fun q hq => s2Step176Add1_owned (List.mem_toFinset.mpr hq)) s2Step176Add1_borrowed

private theorem s2Step176F4_apart : Disjoint (s2Step176Add0A++s2Step176Add0B).toFinset (s2Step176Add1A++s2Step176Add1B).toFinset := by
  have nd : ((s2Step176Add0A++s2Step176Add0B)++(s2Step176Add1A++s2Step176Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step176F4_carry : s2Step176F4FlagArena.checkBorrow 1 [799]=some s2Step176Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step176F4FlagArena,s2Step176HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step176F4FlagArena,s2Step176HeadFvAfter,s2Step176Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step176F4_distinct : (846::807::803::799::((s2Step176Add0A++s2Step176Add1A)++(s2Step176Add0B++s2Step176Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176F4_flag : s2Step176HeadFvAfter.checkBorrow 1 [803]=some s2Step176F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step176HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step176F4_owned : (846::807::((s2Step176Add0A++s2Step176Add1A)++(s2Step176Add0B++s2Step176Add1B))).toFinset⊆s2Step176HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step176HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176F4_checked : compileHmrHybridF4Log s2Step176HeadFvAfter 846 807 s2Step176Add0A s2Step176Add0B s2Step176Add1A s2Step176Add1B [803] [799] s2Step176Add0Work s2Step176Add1Work=some s2Step176F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step176HeadFvAfter s2Step176F4FlagArena s2Step176Add0Arena s2Step176Add0During s2Step176Add1During 846 807
    s2Step176Add0A s2Step176Add0B s2Step176Add1A s2Step176Add1B [803] [799] s2Step176Add0Work s2Step176Add1Work
    (fun q hq => s2Step176F4_owned (List.mem_toFinset.mpr hq)) s2Step176F4_flag s2Step176F4_carry
    s2Step176F4_distinct s2Step176F4_apart s2Step176Add0_checked s2Step176Add1_checked

private theorem s2Step176Front_branch : s2Step176FrontSigmaArena.checkBorrow 1 [807]=some s2Step176HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step176FrontSigmaArena,s2Step176EntryGvAfter,s2Step176EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step176FrontSigmaArena,s2Step176EntryGvAfter,s2Step176EntryGAfter,s2Step176HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step176Front_entry : HmrFrontEntryValid s2Step176EntryFBefore s2Step176FrontBank 182 102 ⟨181,181,102,102⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step176FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step176EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step176EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step176FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step176Front_sigma : s2Step176EntryGvAfter.checkBorrow 1 [846]=some s2Step176FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step176EntryGvAfter,s2Step176EntryGAfter,arenaWires]
  · rfl

private def s2Step176HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176HeadFBefore : Arena := s2Step176HeadGAfter

private def s2Step176HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩

private def s2Step176HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step176HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830],769⟩

private def s2Step176HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩

private theorem s2Step176HeadBank_incomingDistinct : ([s2Step176HeadGRow,s2Step176HeadFRow,s2Step176HeadGvRow,s2Step176HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176HeadF_Incoming : rowsOwned s2Step176HeadFBefore [s2Step176HeadFRow,s2Step176HeadGvRow,s2Step176HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176HeadGRow,s2Step176HeadFRow,s2Step176HeadGvRow,s2Step176HeadFvRow] 1 s2Step176HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176HeadBank_outgoingOwned : rowsOwned s2Step176HeadFvAfter [s2Step176HeadGOut,s2Step176HeadFOut,s2Step176HeadGvOut,s2Step176HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step176HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176HeadF_Outgoing : rowsOwned s2Step176HeadFvAfter [s2Step176HeadFOut,s2Step176HeadGvOut,s2Step176HeadFvOut] :=
  hmrRows_owned_drop s2Step176HeadFvAfter [s2Step176HeadGOut,s2Step176HeadFOut,s2Step176HeadGvOut,s2Step176HeadFvOut] 1 s2Step176HeadBank_outgoingOwned

private theorem s2Step176HeadF_distinct : (s2Step176HeadFRow.sign::s2Step176HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176HeadF_owned : (s2Step176HeadFRow.sign::s2Step176HeadFRow.payload).toFinset⊆s2Step176HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176HeadF_reserved : s2Step176HeadFBefore.reserve s2Step176HeadFFresh.toFinset=some s2Step176HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step176HeadFFresh,arenaWires]
  · norm_num [s2Step176HeadFBefore,s2Step176HeadGAfter,s2Step176HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step176HeadFAfter,s2Step176HeadFBefore,s2Step176HeadGAfter,s2Step176HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step176HeadF_checked : planRowResizeLog s2Step176HeadFBefore s2Step176HeadFRow 183 s2Step176HeadFFresh=
    some (s2Step176HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 793],768⟩,growRow 768 s2Step176HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step176HeadFBefore s2Step176HeadFAfter s2Step176HeadFRow 183 s2Step176HeadFFresh
    s2Step176HeadF_distinct s2Step176HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step176HeadF_reserved
  have rowEq : WindowRow.mk (s2Step176HeadFRow.payload++s2Step176HeadFFresh) s2Step176HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step176HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step176HeadFvBefore : Arena := s2Step176HeadGvAfter

private theorem s2Step176HeadFv_Incoming : rowsOwned s2Step176HeadFvBefore [s2Step176HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176HeadGRow,s2Step176HeadFRow,s2Step176HeadGvRow,s2Step176HeadFvRow] 3 s2Step176HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176HeadFv_Outgoing : rowsOwned s2Step176HeadFvAfter [s2Step176HeadFvOut] :=
  hmrRows_owned_drop s2Step176HeadFvAfter [s2Step176HeadGOut,s2Step176HeadFOut,s2Step176HeadGvOut,s2Step176HeadFvOut] 3 s2Step176HeadBank_outgoingOwned

private theorem s2Step176HeadFv_distinct : (s2Step176HeadFvRow.sign::s2Step176HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176HeadFv_owned : (s2Step176HeadFvRow.sign::s2Step176HeadFvRow.payload).toFinset⊆s2Step176HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176HeadFv_reserved : s2Step176HeadFvBefore.reserve s2Step176HeadFvFresh.toFinset=some s2Step176HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step176HeadFvFresh,arenaWires]
  · norm_num [s2Step176HeadFvBefore,s2Step176HeadGvAfter,s2Step176HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step176HeadFvAfter,s2Step176HeadFvBefore,s2Step176HeadGvAfter,s2Step176HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step176HeadFv_checked : planRowResizeLog s2Step176HeadFvBefore s2Step176HeadFvRow 103 s2Step176HeadFvFresh=
    some (s2Step176HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 847],770⟩,growRow 770 s2Step176HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step176HeadFvBefore s2Step176HeadFvAfter s2Step176HeadFvRow 103 s2Step176HeadFvFresh
    s2Step176HeadFv_distinct s2Step176HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step176HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step176HeadFvRow.payload++s2Step176HeadFvFresh) s2Step176HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 847],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step176HeadG_Incoming : rowsOwned s2Step176HeadGBefore [s2Step176HeadGRow,s2Step176HeadFRow,s2Step176HeadGvRow,s2Step176HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176HeadGRow,s2Step176HeadFRow,s2Step176HeadGvRow,s2Step176HeadFvRow] 0 s2Step176HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176HeadG_Outgoing : rowsOwned s2Step176HeadFvAfter [s2Step176HeadGOut,s2Step176HeadFOut,s2Step176HeadGvOut,s2Step176HeadFvOut] :=
  hmrRows_owned_drop s2Step176HeadFvAfter [s2Step176HeadGOut,s2Step176HeadFOut,s2Step176HeadGvOut,s2Step176HeadFvOut] 0 s2Step176HeadBank_outgoingOwned

private theorem s2Step176HeadG_distinct : (s2Step176HeadGRow.sign::s2Step176HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176HeadG_owned : (s2Step176HeadGRow.sign::s2Step176HeadGRow.payload).toFinset⊆s2Step176HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176HeadG_reserved : s2Step176HeadGBefore.reserve s2Step176HeadGFresh.toFinset=some s2Step176HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step176HeadGFresh,arenaWires]
  · norm_num [s2Step176HeadGBefore,s2Step176HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step176HeadGAfter,s2Step176HeadGBefore,s2Step176HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step176HeadG_checked : planRowResizeLog s2Step176HeadGBefore s2Step176HeadGRow 183 s2Step176HeadGFresh=
    some (s2Step176HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830, 794],769⟩,growRow 769 s2Step176HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step176HeadGBefore s2Step176HeadGAfter s2Step176HeadGRow 183 s2Step176HeadGFresh
    s2Step176HeadG_distinct s2Step176HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step176HeadG_reserved
  have rowEq : WindowRow.mk (s2Step176HeadGRow.payload++s2Step176HeadGFresh) s2Step176HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step176HeadGvBefore : Arena := s2Step176HeadFAfter

private theorem s2Step176HeadGv_Incoming : rowsOwned s2Step176HeadGvBefore [s2Step176HeadGvRow,s2Step176HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step176HeadGRow,s2Step176HeadFRow,s2Step176HeadGvRow,s2Step176HeadFvRow] 2 s2Step176HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step176HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step176HeadGv_Outgoing : rowsOwned s2Step176HeadFvAfter [s2Step176HeadGvOut,s2Step176HeadFvOut] :=
  hmrRows_owned_drop s2Step176HeadFvAfter [s2Step176HeadGOut,s2Step176HeadFOut,s2Step176HeadGvOut,s2Step176HeadFvOut] 2 s2Step176HeadBank_outgoingOwned

private theorem s2Step176HeadGv_distinct : (s2Step176HeadGvRow.sign::s2Step176HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step176HeadGv_owned : (s2Step176HeadGvRow.sign::s2Step176HeadGvRow.payload).toFinset⊆s2Step176HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step176HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step176HeadGv_reserved : s2Step176HeadGvBefore.reserve s2Step176HeadGvFresh.toFinset=some s2Step176HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step176HeadGvFresh,arenaWires]
  · norm_num [s2Step176HeadGvBefore,s2Step176HeadFAfter,s2Step176HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step176HeadGvAfter,s2Step176HeadGvBefore,s2Step176HeadFAfter,s2Step176HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step176HeadGv_checked : planRowResizeLog s2Step176HeadGvBefore s2Step176HeadGvRow 103 s2Step176HeadGvFresh=
    some (s2Step176HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 785],771⟩,growRow 771 s2Step176HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step176HeadGvBefore s2Step176HeadGvAfter s2Step176HeadGvRow 103 s2Step176HeadGvFresh
    s2Step176HeadGv_distinct s2Step176HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step176HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step176HeadGvRow.payload++s2Step176HeadGvFresh) s2Step176HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step176HeadBank_rows : planWindowRowsLog s2Step176HeadGBefore [(s2Step176HeadGRow,183),(s2Step176HeadFRow,183),(s2Step176HeadGvRow,103),(s2Step176HeadFvRow,103)] [s2Step176HeadGFresh,s2Step176HeadFFresh,s2Step176HeadGvFresh,s2Step176HeadFvFresh]=
    some (s2Step176HeadFvAfter,[s2Step176HeadGOut,s2Step176HeadFOut,s2Step176HeadGvOut,s2Step176HeadFvOut],(growRow 769 s2Step176HeadGFresh ++ (growRow 768 s2Step176HeadFFresh ++ (growRow 771 s2Step176HeadGvFresh ++ (growRow 770 s2Step176HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step176HeadFvAfter [] []=some (s2Step176HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step176HeadFvBefore s2Step176HeadFvAfter s2Step176HeadFvAfter
    s2Step176HeadFvRow s2Step176HeadFvOut 103 s2Step176HeadFvFresh [] [] []
    (growRow 770 s2Step176HeadFvFresh) ([]) s2Step176HeadFv_Incoming s2Step176HeadFv_checked h4 s2Step176HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step176HeadGvBefore s2Step176HeadGvAfter s2Step176HeadFvAfter
    s2Step176HeadGvRow s2Step176HeadGvOut 103 s2Step176HeadGvFresh [(s2Step176HeadFvRow,103)] [s2Step176HeadFvFresh] [s2Step176HeadFvOut]
    (growRow 771 s2Step176HeadGvFresh) ((growRow 770 s2Step176HeadFvFresh ++ [])) s2Step176HeadGv_Incoming s2Step176HeadGv_checked h3 s2Step176HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step176HeadFBefore s2Step176HeadFAfter s2Step176HeadFvAfter
    s2Step176HeadFRow s2Step176HeadFOut 183 s2Step176HeadFFresh [(s2Step176HeadGvRow,103),(s2Step176HeadFvRow,103)] [s2Step176HeadGvFresh,s2Step176HeadFvFresh] [s2Step176HeadGvOut,s2Step176HeadFvOut]
    (growRow 768 s2Step176HeadFFresh) ((growRow 771 s2Step176HeadGvFresh ++ (growRow 770 s2Step176HeadFvFresh ++ []))) s2Step176HeadF_Incoming s2Step176HeadF_checked h2 s2Step176HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step176HeadGBefore s2Step176HeadGAfter s2Step176HeadFvAfter
    s2Step176HeadGRow s2Step176HeadGOut 183 s2Step176HeadGFresh [(s2Step176HeadFRow,183),(s2Step176HeadGvRow,103),(s2Step176HeadFvRow,103)] [s2Step176HeadFFresh,s2Step176HeadGvFresh,s2Step176HeadFvFresh] [s2Step176HeadFOut,s2Step176HeadGvOut,s2Step176HeadFvOut]
    (growRow 769 s2Step176HeadGFresh) ((growRow 768 s2Step176HeadFFresh ++ (growRow 771 s2Step176HeadGvFresh ++ (growRow 770 s2Step176HeadFvFresh ++ [])))) s2Step176HeadG_Incoming s2Step176HeadG_checked h1 s2Step176HeadG_Outgoing
  exact h0

private theorem s2Step176HeadBank_checked : compileHmrBankResizeLog .headroom s2Step176HeadGBefore ⟨s2Step176HeadFRow,s2Step176HeadGRow,s2Step176HeadFvRow,s2Step176HeadGvRow⟩ ⟨183,183,103,103⟩ [s2Step176HeadGFresh,s2Step176HeadFFresh,s2Step176HeadGvFresh,s2Step176HeadFvFresh]=
    some (s2Step176HeadFvAfter,⟨s2Step176HeadFOut,s2Step176HeadGOut,s2Step176HeadFvOut,s2Step176HeadGvOut⟩,(growRow 769 s2Step176HeadGFresh ++ (growRow 768 s2Step176HeadFFresh ++ (growRow 771 s2Step176HeadGvFresh ++ (growRow 770 s2Step176HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step176HeadBank_rows]
  rfl

private theorem s2Step176Front_checked : compileHmrSourceFrontLog s2Step176EntryFBefore s2Step176FrontBank 182 102 ⟨181,181,102,102⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step176FrontLog=some s2Step176FrontPlan := by
  have pairEq : s2Step176FrontPair=⟨s2Step176HeadFRow,s2Step176HeadGRow,s2Step176HeadFvRow,s2Step176HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step176FrontHead=⟨s2Step176ExitFRow,s2Step176ExitGRow,s2Step176ExitFvRow,s2Step176ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step176Add0A=s2Step176FrontHead.f.wires := by decide +kernel
  have gEq : s2Step176Add0B=s2Step176FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step176Add1A=s2Step176FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step176Add1B=s2Step176FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step176EntryFBefore s2Step176FrontBank 182 102 ⟨181,181,102,102⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step176FrontLog s2Step176FrontPlan
  · exact s2Step176Front_entry
  · exact s2Step176EntryBank_checked
  · exact s2Step176Front_sigma
  · rfl
  · exact s2Step176Front_branch
  · rfl
  · simpa only [s2Step176FrontPlan,pairEq] using s2Step176HeadBank_checked
  · simpa only [s2Step176FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step176F4_checked
  · exact s2Step176Counter_checked
  · rfl
  · simpa only [s2Step176FrontPlan,headEq] using s2Step176ExitBank_checked

private theorem s2Step176Complete_explicit_checked : compileHmrEarlyStepLog s2Step176EntryFBefore s2Step176FrontBank 182 102 ⟨181,181,102,102⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step176CompleteLog=some s2Step176CompletePlan := by
  let Q := s2Step176EarlyControlPlan
  have hq := s2Step176EarlyControl_plan_checked
  have fv1 : s2Step176CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step176CompleteOut.fv.payload[2]?.getD s2Step176CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step176CompleteOut.fv.payload[3]?.getD s2Step176CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step176CompleteOut.fv.payload[4]?.getD s2Step176CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step176EntryFBefore s2Step176EarlyControlArena s2Step176FrontBank 182 102 ⟨181,181,102,102⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step176CompleteLog s2Step176FrontPlan Q
    s2Step176Front_checked s2Step176Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step176Complete_owned s2Step176Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step176EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 s2Step176CompleteOut.fv.second (s2Step176CompleteOut.fv.payload[2]?.getD s2Step176CompleteOut.fv.sign) (s2Step176CompleteOut.fv.payload[3]?.getD s2Step176CompleteOut.fv.sign) (s2Step176CompleteOut.fv.payload[4]?.getD s2Step176CompleteOut.fv.sign) 807 42 s2Step176EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep176Arena : Arena := s2Step176EntryFBefore
def s2PrivateStep176Bank : WindowBank := s2Step176FrontBank
def s2PrivateStep176Spec : HmrSourceWalkStepLog := ⟨182,102,⟨181,181,102,102⟩,42,.early s2Step176CompleteLog⟩
def s2PrivateStep176Plan : HmrSourceStepPlan := .early s2Step176CompletePlan
theorem s2PrivateStep176_source : s2PrivateStep176Spec=s2ObservedLogs176[0] := rfl
theorem s2PrivateStep176_checked : compileHmrSourceStepLog s2PrivateStep176Arena s2PrivateStep176Bank
    s2PrivateStep176Spec.fgWidth s2PrivateStep176Spec.vWidth s2PrivateStep176Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 176 s2PrivateStep176Spec.need none s2PrivateStep176Spec.log=some s2PrivateStep176Plan := by
  change compileHmrSourceStepLog s2Step176EntryFBefore s2Step176FrontBank 182 102 ⟨181,181,102,102⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 176 42 none (.early s2Step176CompleteLog)=some (.early s2Step176CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 176<498)]
  rw [s2Step176Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
