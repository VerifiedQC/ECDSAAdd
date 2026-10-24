import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep173
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

private def s2Step175CompleteMoves : List (Wire × Wire) := [(807,181)]

private def s2Step175EarlyControlLog : HmrEarlyControlLog := ⟨[807, 794, 793, 785, 847],[803],[799],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step175FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [821]],[[847], [785], [794], [793]],[[], [], [], []]⟩,[846],[830],[803],[799],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877]⟩

private def s2Step175CompleteLog : HmrEarlyStepLog := ⟨s2Step175FrontLog,s2Step175CompleteMoves,s2Step175EarlyControlLog⟩

private def s2Step175ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩

private def s2Step175ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step175ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],769⟩

private def s2Step175ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩

private def s2Step175FrontOut : WindowBank := ⟨s2Step175ExitFOut,s2Step175ExitGOut,s2Step175ExitFvOut,s2Step175ExitGvOut⟩

private def s2Step175CompleteOut : WindowBank := s2Step175FrontOut.repacked s2Step175CompleteMoves

private def s2Step175EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step175EarlyControlPositiveArena,[803],s2Step175EarlyControlEqualityArena,[799],⟨⟨846,false⟩,[⟨⟨803,false⟩,799⟩]⟩⟩

private def s2Step175EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,807⟩,⟨⟨774,false⟩,794⟩,⟨⟨775,false⟩,793⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,847⟩]⟩

private def s2Step175EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step175EarlyControlZeroArena,s2Step175EarlyControlZeroPlan,s2Step175EarlyControlClassPlan,s2Step175EarlyControlFlagArena,s2Step175EarlyControlFittedArena,s2Step175EarlyControlHistoryArena,s2Step175EarlyControlSigmaArena,s2Step175EarlyControlOutputArena,s2Step175EarlyControlLog⟩

private def s2Step175CounterWork : List Wire := [803, 799, 867, 877]

private theorem s2Step175Counter_bounded : s2Step175CounterWork.toFinset⊆arenaWires := by norm_num [s2Step175CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step175HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175CounterDuring : Arena := ⟨s2Step175HeadFvAfter.live∪s2Step175CounterWork.toFinset,Finset.union_subset s2Step175HeadFvAfter.bounded s2Step175Counter_bounded⟩

private def s2Step175EntryFFresh : List Wire := []

private def s2Step175EntryFvFresh : List Wire := []

private def s2Step175EntryGFresh : List Wire := []

private def s2Step175EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EntryGvFresh : List Wire := [821]

private def s2Step175ExitFExtra : List Wire := [785]

private def s2Step175ExitFvExtra : List Wire := [793]

private def s2Step175ExitGExtra : List Wire := [181, 847]

private def s2Step175ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175ExitGvExtra : List Wire := [794]

private def s2Step175Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step175Add0_bounded : s2Step175Add0Work.toFinset⊆arenaWires := by
  have h : s2Step175Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step175Add0During : Arena := ⟨s2Step175Add0Arena.live∪s2Step175Add0Work.toFinset,Finset.union_subset s2Step175Add0Arena.bounded s2Step175Add0_bounded⟩

private def s2Step175Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step175Add1_bounded : s2Step175Add1Work.toFinset⊆arenaWires := by
  have h : s2Step175Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step175Add1During : Arena := ⟨s2Step175Add1Arena.live∪s2Step175Add1Work.toFinset,Finset.union_subset s2Step175Add1Arena.bounded s2Step175Add1_bounded⟩

private def s2Step175F4FlagArena : Arena := ⟨s2Step175HeadFvAfter.live∪{803},Finset.union_subset s2Step175HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step175F4Plan : HmrHybridF4Plan := ⟨s2Step175F4FlagArena,[803],s2Step175Add0Arena,[799],s2Step175Add0During,s2Step175Add0Work,s2Step175Add1During,s2Step175Add1Work⟩

private def s2Step175HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 785],768⟩

private def s2Step175HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step175HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 847],769⟩

private def s2Step175HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 794],771⟩

private def s2Step175FrontHead : WindowBank := ⟨s2Step175HeadFOut,s2Step175HeadGOut,s2Step175HeadFvOut,s2Step175HeadGvOut⟩

private def s2Step175EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩

private def s2Step175EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step175EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],769⟩

private def s2Step175EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩

private def s2Step175FrontPair : WindowBank := ⟨s2Step175EntryFOut,s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut⟩

private def s2Step175FrontSigmaArena : Arena := ⟨s2Step175EntryGvAfter.live∪{846},Finset.union_subset s2Step175EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step175HeadFFresh : List Wire := [785]

private def s2Step175HeadFvFresh : List Wire := [793]

private def s2Step175HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175HeadGFresh : List Wire := [847]

private def s2Step175HeadGvFresh : List Wire := [794]

private def s2Step175FrontPlan : HmrSourceFront := ⟨s2Step175EntryGvAfter,s2Step175FrontPair,(growRow 768 s2Step175EntryFFresh ++ (growRow 769 s2Step175EntryGFresh ++ (growRow 770 s2Step175EntryFvFresh ++ (growRow 771 s2Step175EntryGvFresh ++ [])))),s2Step175FrontSigmaArena,[846],s2Step175HeadGBefore,[830],
  s2Step175HeadFvAfter,s2Step175FrontHead,(growRow 769 s2Step175HeadGFresh ++ (growRow 768 s2Step175HeadFFresh ++ (growRow 771 s2Step175HeadGvFresh ++ (growRow 770 s2Step175HeadFvFresh ++ [])))),s2Step175F4Plan,s2Step175CounterDuring,s2Step175CounterWork,s2Step175ExitGvAfter,s2Step175FrontOut,(shrinkRow 769 s2Step175ExitGExtra ++ (shrinkRow 768 s2Step175ExitFExtra ++ (shrinkRow 770 s2Step175ExitFvExtra ++ (shrinkRow 771 s2Step175ExitGvExtra ++ []))))⟩

private def s2Step175CompletePlan : HmrEarlyStepPlan := ⟨s2Step175FrontPlan,s2Step175EarlyControlArena,s2Step175EarlyControlPlan,s2Step175CompleteMoves⟩

private theorem s2Step175Complete_apart : List.Disjoint (s2Step175CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [846, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step175CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[846, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step175Complete_owned : (s2Step175CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step175EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step175CompleteMoveArena : Arena := ⟨s2Step175ExitGvAfter.live∪{181},Finset.union_subset s2Step175ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step175Complete_repack : s2Step175ExitGvAfter.checkRepack s2Step175CompleteMoves=some s2Step175EarlyControlArena := by
  have owned : 807∈s2Step175ExitGvAfter.live := by norm_num [s2Step175ExitGvAfter,arenaWires]
  have reserve : s2Step175ExitGvAfter.reserve {181}=some s2Step175CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step175ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step175CompleteMoveArena.retireSet {807}=s2Step175EarlyControlArena := by
    unfold Arena.retireSet s2Step175EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step175CompleteMoveArena,s2Step175ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step175CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step175CompleteMoveArena.retireSet {807}).checkRepack []=some s2Step175EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step175EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s2Step175EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_branch : compileHmrBranchRetirement s2Step175EarlyControlSigmaArena 830=some s2Step175EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step175EarlyControl_branchOwned
  · ext q
    simp [s2Step175EarlyControlOutputArena,s2Step175EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step175EarlyControl_classEqualityBorrow : s2Step175EarlyControlPositiveArena.checkBorrow (([846, 803] : List Wire).length-1) s2Step175EarlyControlLog.classWork=some s2Step175EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step175EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step175EarlyControlEqualityArena,s2Step175EarlyControlPositiveArena,s2Step175EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step175EarlyControl_classEqualityOwned : ([846, 803] : List Wire).toFinset⊆s2Step175EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_classEquality : compileHmrEqualityLog s2Step175EarlyControlPositiveArena [846, 803] 0 s2Step175EarlyControlLog.classWork=some (s2Step175EarlyControlEqualityArena,s2Step175EarlyControlLog.classWork,s2Step175EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step175EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step175EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step175EarlyControl_classOwned : ([777, 847, 846] : List Wire).toFinset⊆s2Step175EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_positiveBorrow : s2Step175EarlyControlZeroArena.checkBorrow (1) s2Step175EarlyControlLog.positiveWork=some s2Step175EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step175EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step175EarlyControlPositiveArena,s2Step175EarlyControlZeroArena,s2Step175EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step175EarlyControl_class : compileHmrSourceClassLog s2Step175EarlyControlZeroArena false 777 s2Step175EarlyControlZeroPlan.top 0 846 s2Step175EarlyControlLog.positiveWork s2Step175EarlyControlLog.classWork=some s2Step175EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step175EarlyControlClassPlan s2Step175EarlyControlZeroArena false 777 s2Step175EarlyControlZeroPlan.top 0 846
  constructor
  · decide +kernel
  · exact s2Step175EarlyControl_classOwned
  · exact s2Step175EarlyControl_positiveBorrow
  · exact s2Step175EarlyControl_classEquality

private theorem s2Step175EarlyControl_entryRecordOwned : ([830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step175EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_entrySigmaOwned : ([846, 254] : List Wire).toFinset⊆s2Step175EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_fitBorrow : s2Step175EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step175EarlyControlLog.recordFresh=some s2Step175EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step175EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step175EarlyControlFittedArena,s2Step175EarlyControlFlagArena,s2Step175EarlyControlLog,arenaWires]

private theorem s2Step175EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step175EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_fit : compileHmrRecordGrowLog s2Step175EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step175EarlyControlLog.recordFresh=some s2Step175EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step175EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step175EarlyControl_fitBorrow

private theorem s2Step175EarlyControl_flagsBorrow : s2Step175EarlyControlEqualityArena.checkBorrow (6) s2Step175EarlyControlLog.flagWork=some s2Step175EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step175EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step175EarlyControlFlagArena,s2Step175EarlyControlEqualityArena,s2Step175EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step175EarlyControl_flagsOwned : ([799, 253, 252, 251] : List Wire).toFinset⊆s2Step175EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_flags : compileHmrFlagsLog s2Step175EarlyControlClassPlan.equalityArena s2Step175EarlyControlClassPlan.equality.top 253 252 251 s2Step175EarlyControlLog.flagWork=some s2Step175EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step175EarlyControl_flagsOwned⟩
  · exact s2Step175EarlyControl_flagsBorrow

private theorem s2Step175EarlyControl_historyBorrow : s2Step175EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step175EarlyControlLog.recordFresh=some s2Step175EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step175EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step175EarlyControlHistoryArena,s2Step175EarlyControlArena,s2Step175EarlyControlLog,arenaWires]

private theorem s2Step175EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step175EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_history : compileHmrRecordGrowLog s2Step175EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step175EarlyControlLog.recordFresh=some s2Step175EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step175EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step175EarlyControl_historyBorrow

private theorem s2Step175EarlyControl_sigmaOwned : ([254, 846] : List Wire).toFinset⊆s2Step175EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_sigmaReleaseOwned : ([846] : List Wire).toFinset⊆s2Step175EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_sigmaRelease : s2Step175EarlyControlHistoryArena.release {846} (fun _ => false)=some s2Step175EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step175EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step175EarlyControlSigmaArena,s2Step175EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step175EarlyControl_sigma : compileHmrSigmaDropLog s2Step175EarlyControlHistoryArena false 0 0 254 846 []=some s2Step175EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step175EarlyControl_sigmaOwned⟩
  · exact s2Step175EarlyControl_sigmaRelease

private theorem s2Step175EarlyControl_zeroBorrow : s2Step175EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step175EarlyControlLog.zeroWork=some s2Step175EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step175EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step175EarlyControlZeroArena,s2Step175EarlyControlArena,s2Step175EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step175EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step175EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step175EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EarlyControl_zero : compileHmrEqualityLog s2Step175EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step175EarlyControlLog.zeroWork=some (s2Step175EarlyControlZeroArena,s2Step175EarlyControlLog.zeroWork,s2Step175EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step175EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step175EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step175EarlyControl_logged : s2Step175EarlyControlPlan.Logged s2Step175EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 830 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step175EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step175EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step175EarlyControl_zero
  · exact s2Step175EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step175EarlyControl_flags
  · exact s2Step175EarlyControl_fit
  · exact s2Step175EarlyControl_history
  · exact s2Step175EarlyControl_sigma
  · exact s2Step175EarlyControl_branch

private theorem s2Step175EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step175EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 830 42 s2Step175EarlyControlLog=some s2Step175EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step175EarlyControlPlan s2Step175EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 830 42 s2Step175EarlyControl_logged

private def s2Step175EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩

private def s2Step175EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step175EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],769⟩

private def s2Step175EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩

private def s2Step175FrontBank : WindowBank := ⟨s2Step175EntryFRow,s2Step175EntryGRow,s2Step175EntryFvRow,s2Step175EntryGvRow⟩

private def s2Step175Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 785, 768]

private def s2Step175Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 847, 769]

private def s2Step175Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 770]

private def s2Step175Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 794, 771]

private theorem s2Step175Counter_apart : Disjoint s2Step175HeadFvAfter.live s2Step175CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step175HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175Counter_borrowed : s2Step175HeadFvAfter.checkBorrow 4 s2Step175CounterWork=some s2Step175CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step175HeadFvAfter s2Step175CounterDuring s2Step175CounterWork.toFinset s2Step175Counter_bounded s2Step175Counter_apart rfl

private theorem s2Step175Counter_owned : (846::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step175HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step175HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175Counter_checked : compileHmrCounterStepLog s2Step175HeadFvAfter true 846 [772, 773, 774, 775, 776, 777] s2Step175CounterWork=some s2Step175CounterDuring := by
  have owned : ∀q∈846::[772, 773, 774, 775, 776, 777],q∈s2Step175HeadFvAfter.live := fun q hq => s2Step175Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step175Counter_borrowed

private def s2Step175EntryFAfter : Arena := s2Step175EntryFBefore

private theorem s2Step175EntryBank_incomingDistinct : ([s2Step175EntryFRow,s2Step175EntryGRow,s2Step175EntryFvRow,s2Step175EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175EntryF_Incoming : rowsOwned s2Step175EntryFBefore [s2Step175EntryFRow,s2Step175EntryGRow,s2Step175EntryFvRow,s2Step175EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175EntryFRow,s2Step175EntryGRow,s2Step175EntryFvRow,s2Step175EntryGvRow] 0 s2Step175EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175EntryBank_outgoingOwned : rowsOwned s2Step175EntryGvAfter [s2Step175EntryFOut,s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step175EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175EntryF_Outgoing : rowsOwned s2Step175EntryGvAfter [s2Step175EntryFOut,s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut] :=
  hmrRows_owned_drop s2Step175EntryGvAfter [s2Step175EntryFOut,s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut] 0 s2Step175EntryBank_outgoingOwned

private theorem s2Step175EntryF_distinct : (s2Step175EntryFRow.sign::s2Step175EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175EntryF_owned : (s2Step175EntryFRow.sign::s2Step175EntryFRow.payload).toFinset⊆s2Step175EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EntryF_reserved : s2Step175EntryFBefore.reserve s2Step175EntryFFresh.toFinset=some s2Step175EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step175EntryFFresh,arenaWires]
  · norm_num [s2Step175EntryFBefore,s2Step175EntryFFresh,arenaWires]
  · simp only [s2Step175EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step175EntryF_checked : planRowResizeLog s2Step175EntryFBefore s2Step175EntryFRow 182 s2Step175EntryFFresh=
    some (s2Step175EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩,growRow 768 s2Step175EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step175EntryFBefore s2Step175EntryFAfter s2Step175EntryFRow 182 s2Step175EntryFFresh
    s2Step175EntryF_distinct s2Step175EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step175EntryF_reserved
  have rowEq : WindowRow.mk (s2Step175EntryFRow.payload++s2Step175EntryFFresh) s2Step175EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step175EntryFvAfter : Arena := s2Step175EntryFBefore

private def s2Step175EntryFvBefore : Arena := s2Step175EntryFBefore

private theorem s2Step175EntryFv_Incoming : rowsOwned s2Step175EntryFvBefore [s2Step175EntryFvRow,s2Step175EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175EntryFRow,s2Step175EntryGRow,s2Step175EntryFvRow,s2Step175EntryGvRow] 2 s2Step175EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175EntryFv_Outgoing : rowsOwned s2Step175EntryGvAfter [s2Step175EntryFvOut,s2Step175EntryGvOut] :=
  hmrRows_owned_drop s2Step175EntryGvAfter [s2Step175EntryFOut,s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut] 2 s2Step175EntryBank_outgoingOwned

private theorem s2Step175EntryFv_distinct : (s2Step175EntryFvRow.sign::s2Step175EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175EntryFv_owned : (s2Step175EntryFvRow.sign::s2Step175EntryFvRow.payload).toFinset⊆s2Step175EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EntryFv_reserved : s2Step175EntryFvBefore.reserve s2Step175EntryFvFresh.toFinset=some s2Step175EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step175EntryFvFresh,arenaWires]
  · norm_num [s2Step175EntryFvBefore,s2Step175EntryFBefore,s2Step175EntryFvFresh,arenaWires]
  · simp only [s2Step175EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step175EntryFv_checked : planRowResizeLog s2Step175EntryFvBefore s2Step175EntryFvRow 102 s2Step175EntryFvFresh=
    some (s2Step175EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩,growRow 770 s2Step175EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step175EntryFvBefore s2Step175EntryFvAfter s2Step175EntryFvRow 102 s2Step175EntryFvFresh
    s2Step175EntryFv_distinct s2Step175EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step175EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step175EntryFvRow.payload++s2Step175EntryFvFresh) s2Step175EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step175EntryGAfter : Arena := s2Step175EntryFBefore

private def s2Step175EntryGBefore : Arena := s2Step175EntryFBefore

private theorem s2Step175EntryG_Incoming : rowsOwned s2Step175EntryGBefore [s2Step175EntryGRow,s2Step175EntryFvRow,s2Step175EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175EntryFRow,s2Step175EntryGRow,s2Step175EntryFvRow,s2Step175EntryGvRow] 1 s2Step175EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175EntryG_Outgoing : rowsOwned s2Step175EntryGvAfter [s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut] :=
  hmrRows_owned_drop s2Step175EntryGvAfter [s2Step175EntryFOut,s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut] 1 s2Step175EntryBank_outgoingOwned

private theorem s2Step175EntryG_distinct : (s2Step175EntryGRow.sign::s2Step175EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175EntryG_owned : (s2Step175EntryGRow.sign::s2Step175EntryGRow.payload).toFinset⊆s2Step175EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EntryG_reserved : s2Step175EntryGBefore.reserve s2Step175EntryGFresh.toFinset=some s2Step175EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step175EntryGFresh,arenaWires]
  · norm_num [s2Step175EntryGBefore,s2Step175EntryFBefore,s2Step175EntryGFresh,arenaWires]
  · simp only [s2Step175EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step175EntryG_checked : planRowResizeLog s2Step175EntryGBefore s2Step175EntryGRow 182 s2Step175EntryGFresh=
    some (s2Step175EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],769⟩,growRow 769 s2Step175EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step175EntryGBefore s2Step175EntryGAfter s2Step175EntryGRow 182 s2Step175EntryGFresh
    s2Step175EntryG_distinct s2Step175EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step175EntryG_reserved
  have rowEq : WindowRow.mk (s2Step175EntryGRow.payload++s2Step175EntryGFresh) s2Step175EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step175EntryGvBefore : Arena := s2Step175EntryFBefore

private theorem s2Step175EntryGv_Incoming : rowsOwned s2Step175EntryGvBefore [s2Step175EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175EntryFRow,s2Step175EntryGRow,s2Step175EntryFvRow,s2Step175EntryGvRow] 3 s2Step175EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175EntryGv_Outgoing : rowsOwned s2Step175EntryGvAfter [s2Step175EntryGvOut] :=
  hmrRows_owned_drop s2Step175EntryGvAfter [s2Step175EntryFOut,s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut] 3 s2Step175EntryBank_outgoingOwned

private theorem s2Step175EntryGv_distinct : (s2Step175EntryGvRow.sign::s2Step175EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175EntryGv_owned : (s2Step175EntryGvRow.sign::s2Step175EntryGvRow.payload).toFinset⊆s2Step175EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175EntryGv_reserved : s2Step175EntryGvBefore.reserve s2Step175EntryGvFresh.toFinset=some s2Step175EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step175EntryGvFresh,arenaWires]
  · norm_num [s2Step175EntryGvBefore,s2Step175EntryFBefore,s2Step175EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step175EntryGvAfter,s2Step175EntryGvBefore,s2Step175EntryFBefore,s2Step175EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step175EntryGv_checked : planRowResizeLog s2Step175EntryGvBefore s2Step175EntryGvRow 102 s2Step175EntryGvFresh=
    some (s2Step175EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩,growRow 771 s2Step175EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step175EntryGvBefore s2Step175EntryGvAfter s2Step175EntryGvRow 102 s2Step175EntryGvFresh
    s2Step175EntryGv_distinct s2Step175EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step175EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step175EntryGvRow.payload++s2Step175EntryGvFresh) s2Step175EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step175EntryBank_rows : planWindowRowsLog s2Step175EntryFBefore [(s2Step175EntryFRow,182),(s2Step175EntryGRow,182),(s2Step175EntryFvRow,102),(s2Step175EntryGvRow,102)] [s2Step175EntryFFresh,s2Step175EntryGFresh,s2Step175EntryFvFresh,s2Step175EntryGvFresh]=
    some (s2Step175EntryGvAfter,[s2Step175EntryFOut,s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut],(growRow 768 s2Step175EntryFFresh ++ (growRow 769 s2Step175EntryGFresh ++ (growRow 770 s2Step175EntryFvFresh ++ (growRow 771 s2Step175EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step175EntryGvAfter [] []=some (s2Step175EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step175EntryGvBefore s2Step175EntryGvAfter s2Step175EntryGvAfter
    s2Step175EntryGvRow s2Step175EntryGvOut 102 s2Step175EntryGvFresh [] [] []
    (growRow 771 s2Step175EntryGvFresh) ([]) s2Step175EntryGv_Incoming s2Step175EntryGv_checked h4 s2Step175EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step175EntryFvBefore s2Step175EntryFvAfter s2Step175EntryGvAfter
    s2Step175EntryFvRow s2Step175EntryFvOut 102 s2Step175EntryFvFresh [(s2Step175EntryGvRow,102)] [s2Step175EntryGvFresh] [s2Step175EntryGvOut]
    (growRow 770 s2Step175EntryFvFresh) ((growRow 771 s2Step175EntryGvFresh ++ [])) s2Step175EntryFv_Incoming s2Step175EntryFv_checked h3 s2Step175EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step175EntryGBefore s2Step175EntryGAfter s2Step175EntryGvAfter
    s2Step175EntryGRow s2Step175EntryGOut 182 s2Step175EntryGFresh [(s2Step175EntryFvRow,102),(s2Step175EntryGvRow,102)] [s2Step175EntryFvFresh,s2Step175EntryGvFresh] [s2Step175EntryFvOut,s2Step175EntryGvOut]
    (growRow 769 s2Step175EntryGFresh) ((growRow 770 s2Step175EntryFvFresh ++ (growRow 771 s2Step175EntryGvFresh ++ []))) s2Step175EntryG_Incoming s2Step175EntryG_checked h2 s2Step175EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step175EntryFBefore s2Step175EntryFAfter s2Step175EntryGvAfter
    s2Step175EntryFRow s2Step175EntryFOut 182 s2Step175EntryFFresh [(s2Step175EntryGRow,182),(s2Step175EntryFvRow,102),(s2Step175EntryGvRow,102)] [s2Step175EntryGFresh,s2Step175EntryFvFresh,s2Step175EntryGvFresh] [s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut]
    (growRow 768 s2Step175EntryFFresh) ((growRow 769 s2Step175EntryGFresh ++ (growRow 770 s2Step175EntryFvFresh ++ (growRow 771 s2Step175EntryGvFresh ++ [])))) s2Step175EntryF_Incoming s2Step175EntryF_checked h1 s2Step175EntryF_Outgoing
  exact h0

private theorem s2Step175EntryBank_checked : compileHmrBankResizeLog .entry s2Step175EntryFBefore ⟨s2Step175EntryFRow,s2Step175EntryGRow,s2Step175EntryFvRow,s2Step175EntryGvRow⟩ ⟨182,182,102,102⟩ [s2Step175EntryFFresh,s2Step175EntryGFresh,s2Step175EntryFvFresh,s2Step175EntryGvFresh]=
    some (s2Step175EntryGvAfter,⟨s2Step175EntryFOut,s2Step175EntryGOut,s2Step175EntryFvOut,s2Step175EntryGvOut⟩,(growRow 768 s2Step175EntryFFresh ++ (growRow 769 s2Step175EntryGFresh ++ (growRow 770 s2Step175EntryFvFresh ++ (growRow 771 s2Step175EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step175EntryBank_rows]
  rfl

private def s2Step175ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175ExitFBefore : Arena := s2Step175ExitGAfter

private def s2Step175ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 785],768⟩

private def s2Step175ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step175ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 847],769⟩

private def s2Step175ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 794],771⟩

private theorem s2Step175ExitBank_incomingDistinct : ([s2Step175ExitGRow,s2Step175ExitFRow,s2Step175ExitFvRow,s2Step175ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175ExitF_Incoming : rowsOwned s2Step175ExitFBefore [s2Step175ExitFRow,s2Step175ExitFvRow,s2Step175ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175ExitGRow,s2Step175ExitFRow,s2Step175ExitFvRow,s2Step175ExitGvRow] 1 s2Step175ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175ExitFBefore (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175ExitBank_outgoingOwned : rowsOwned s2Step175ExitGvAfter [s2Step175ExitGOut,s2Step175ExitFOut,s2Step175ExitFvOut,s2Step175ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step175ExitGvAfter (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175ExitF_Outgoing : rowsOwned s2Step175ExitGvAfter [s2Step175ExitFOut,s2Step175ExitFvOut,s2Step175ExitGvOut] :=
  hmrRows_owned_drop s2Step175ExitGvAfter [s2Step175ExitGOut,s2Step175ExitFOut,s2Step175ExitFvOut,s2Step175ExitGvOut] 1 s2Step175ExitBank_outgoingOwned

private theorem s2Step175ExitF_distinct : (s2Step175ExitFRow.sign::s2Step175ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175ExitF_owned : (s2Step175ExitFRow.sign::s2Step175ExitFRow.payload).toFinset⊆s2Step175ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175ExitFBefore (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175ExitF_retired : s2Step175ExitFBefore.retireSet s2Step175ExitFExtra.toFinset=s2Step175ExitFAfter := by
  unfold Arena.retireSet s2Step175ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step175ExitFBefore,s2Step175ExitGAfter,s2Step175ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step175ExitF_checked : planRowResizeLog s2Step175ExitFBefore s2Step175ExitFRow 182 []=
    some (s2Step175ExitFAfter,s2Step175ExitFOut,shrinkRow 768 s2Step175ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step175ExitFBefore s2Step175ExitFRow 182 s2Step175ExitF_distinct s2Step175ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step175ExitFRow.payload.take 182) s2Step175ExitFRow.sign=s2Step175ExitFOut := by decide +kernel
  have hi : s2Step175ExitFRow.payload.drop 182=s2Step175ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step175ExitF_retired] at result
  exact result

private def s2Step175ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175ExitFvBefore : Arena := s2Step175ExitFAfter

private theorem s2Step175ExitFv_Incoming : rowsOwned s2Step175ExitFvBefore [s2Step175ExitFvRow,s2Step175ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175ExitGRow,s2Step175ExitFRow,s2Step175ExitFvRow,s2Step175ExitGvRow] 2 s2Step175ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175ExitFvBefore (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175ExitFv_Outgoing : rowsOwned s2Step175ExitGvAfter [s2Step175ExitFvOut,s2Step175ExitGvOut] :=
  hmrRows_owned_drop s2Step175ExitGvAfter [s2Step175ExitGOut,s2Step175ExitFOut,s2Step175ExitFvOut,s2Step175ExitGvOut] 2 s2Step175ExitBank_outgoingOwned

private theorem s2Step175ExitFv_distinct : (s2Step175ExitFvRow.sign::s2Step175ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175ExitFv_owned : (s2Step175ExitFvRow.sign::s2Step175ExitFvRow.payload).toFinset⊆s2Step175ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175ExitFvBefore (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175ExitFv_retired : s2Step175ExitFvBefore.retireSet s2Step175ExitFvExtra.toFinset=s2Step175ExitFvAfter := by
  unfold Arena.retireSet s2Step175ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step175ExitFvBefore,s2Step175ExitFAfter,s2Step175ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step175ExitFv_checked : planRowResizeLog s2Step175ExitFvBefore s2Step175ExitFvRow 102 []=
    some (s2Step175ExitFvAfter,s2Step175ExitFvOut,shrinkRow 770 s2Step175ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step175ExitFvBefore s2Step175ExitFvRow 102 s2Step175ExitFv_distinct s2Step175ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step175ExitFvRow.payload.take 102) s2Step175ExitFvRow.sign=s2Step175ExitFvOut := by decide +kernel
  have hi : s2Step175ExitFvRow.payload.drop 102=s2Step175ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step175ExitFv_retired] at result
  exact result

private def s2Step175ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step175ExitG_Incoming : rowsOwned s2Step175ExitGBefore [s2Step175ExitGRow,s2Step175ExitFRow,s2Step175ExitFvRow,s2Step175ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175ExitGRow,s2Step175ExitFRow,s2Step175ExitFvRow,s2Step175ExitGvRow] 0 s2Step175ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175ExitG_Outgoing : rowsOwned s2Step175ExitGvAfter [s2Step175ExitGOut,s2Step175ExitFOut,s2Step175ExitFvOut,s2Step175ExitGvOut] :=
  hmrRows_owned_drop s2Step175ExitGvAfter [s2Step175ExitGOut,s2Step175ExitFOut,s2Step175ExitFvOut,s2Step175ExitGvOut] 0 s2Step175ExitBank_outgoingOwned

private theorem s2Step175ExitG_distinct : (s2Step175ExitGRow.sign::s2Step175ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175ExitG_owned : (s2Step175ExitGRow.sign::s2Step175ExitGRow.payload).toFinset⊆s2Step175ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175ExitG_retired : s2Step175ExitGBefore.retireSet s2Step175ExitGExtra.toFinset=s2Step175ExitGAfter := by
  unfold Arena.retireSet s2Step175ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step175ExitGBefore,s2Step175ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step175ExitG_checked : planRowResizeLog s2Step175ExitGBefore s2Step175ExitGRow 181 []=
    some (s2Step175ExitGAfter,s2Step175ExitGOut,shrinkRow 769 s2Step175ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step175ExitGBefore s2Step175ExitGRow 181 s2Step175ExitG_distinct s2Step175ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step175ExitGRow.payload.take 181) s2Step175ExitGRow.sign=s2Step175ExitGOut := by decide +kernel
  have hi : s2Step175ExitGRow.payload.drop 181=s2Step175ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step175ExitG_retired] at result
  exact result

private def s2Step175ExitGvBefore : Arena := s2Step175ExitFvAfter

private theorem s2Step175ExitGv_Incoming : rowsOwned s2Step175ExitGvBefore [s2Step175ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175ExitGRow,s2Step175ExitFRow,s2Step175ExitFvRow,s2Step175ExitGvRow] 3 s2Step175ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175ExitGvBefore (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175ExitGv_Outgoing : rowsOwned s2Step175ExitGvAfter [s2Step175ExitGvOut] :=
  hmrRows_owned_drop s2Step175ExitGvAfter [s2Step175ExitGOut,s2Step175ExitFOut,s2Step175ExitFvOut,s2Step175ExitGvOut] 3 s2Step175ExitBank_outgoingOwned

private theorem s2Step175ExitGv_distinct : (s2Step175ExitGvRow.sign::s2Step175ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175ExitGv_owned : (s2Step175ExitGvRow.sign::s2Step175ExitGvRow.payload).toFinset⊆s2Step175ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175ExitGvBefore (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175ExitGv_retired : s2Step175ExitGvBefore.retireSet s2Step175ExitGvExtra.toFinset=s2Step175ExitGvAfter := by
  unfold Arena.retireSet s2Step175ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step175ExitGvBefore,s2Step175ExitFvAfter,s2Step175ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step175ExitGv_checked : planRowResizeLog s2Step175ExitGvBefore s2Step175ExitGvRow 102 []=
    some (s2Step175ExitGvAfter,s2Step175ExitGvOut,shrinkRow 771 s2Step175ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step175ExitGvBefore s2Step175ExitGvRow 102 s2Step175ExitGv_distinct s2Step175ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step175ExitGvRow.payload.take 102) s2Step175ExitGvRow.sign=s2Step175ExitGvOut := by decide +kernel
  have hi : s2Step175ExitGvRow.payload.drop 102=s2Step175ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step175ExitGv_retired] at result
  exact result

private theorem s2Step175ExitBank_rows : planWindowRowsLog s2Step175ExitGBefore [(s2Step175ExitGRow,181),(s2Step175ExitFRow,182),(s2Step175ExitFvRow,102),(s2Step175ExitGvRow,102)] [[],[],[],[]]=
    some (s2Step175ExitGvAfter,[s2Step175ExitGOut,s2Step175ExitFOut,s2Step175ExitFvOut,s2Step175ExitGvOut],(shrinkRow 769 s2Step175ExitGExtra ++ (shrinkRow 768 s2Step175ExitFExtra ++ (shrinkRow 770 s2Step175ExitFvExtra ++ (shrinkRow 771 s2Step175ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step175ExitGvAfter [] []=some (s2Step175ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step175ExitGvBefore s2Step175ExitGvAfter s2Step175ExitGvAfter
    s2Step175ExitGvRow s2Step175ExitGvOut 102 [] [] [] []
    (shrinkRow 771 s2Step175ExitGvExtra) ([]) s2Step175ExitGv_Incoming s2Step175ExitGv_checked h4 s2Step175ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step175ExitFvBefore s2Step175ExitFvAfter s2Step175ExitGvAfter
    s2Step175ExitFvRow s2Step175ExitFvOut 102 [] [(s2Step175ExitGvRow,102)] [[]] [s2Step175ExitGvOut]
    (shrinkRow 770 s2Step175ExitFvExtra) ((shrinkRow 771 s2Step175ExitGvExtra ++ [])) s2Step175ExitFv_Incoming s2Step175ExitFv_checked h3 s2Step175ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step175ExitFBefore s2Step175ExitFAfter s2Step175ExitGvAfter
    s2Step175ExitFRow s2Step175ExitFOut 182 [] [(s2Step175ExitFvRow,102),(s2Step175ExitGvRow,102)] [[],[]] [s2Step175ExitFvOut,s2Step175ExitGvOut]
    (shrinkRow 768 s2Step175ExitFExtra) ((shrinkRow 770 s2Step175ExitFvExtra ++ (shrinkRow 771 s2Step175ExitGvExtra ++ []))) s2Step175ExitF_Incoming s2Step175ExitF_checked h2 s2Step175ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step175ExitGBefore s2Step175ExitGAfter s2Step175ExitGvAfter
    s2Step175ExitGRow s2Step175ExitGOut 181 [] [(s2Step175ExitFRow,182),(s2Step175ExitFvRow,102),(s2Step175ExitGvRow,102)] [[],[],[]] [s2Step175ExitFOut,s2Step175ExitFvOut,s2Step175ExitGvOut]
    (shrinkRow 769 s2Step175ExitGExtra) ((shrinkRow 768 s2Step175ExitFExtra ++ (shrinkRow 770 s2Step175ExitFvExtra ++ (shrinkRow 771 s2Step175ExitGvExtra ++ [])))) s2Step175ExitG_Incoming s2Step175ExitG_checked h1 s2Step175ExitG_Outgoing
  exact h0

private theorem s2Step175ExitBank_checked : compileHmrBankResizeLog .exit s2Step175ExitGBefore ⟨s2Step175ExitFRow,s2Step175ExitGRow,s2Step175ExitFvRow,s2Step175ExitGvRow⟩ ⟨182,181,102,102⟩ [[],[],[],[]]=
    some (s2Step175ExitGvAfter,⟨s2Step175ExitFOut,s2Step175ExitGOut,s2Step175ExitFvOut,s2Step175ExitGvOut⟩,(shrinkRow 769 s2Step175ExitGExtra ++ (shrinkRow 768 s2Step175ExitFExtra ++ (shrinkRow 770 s2Step175ExitFvExtra ++ (shrinkRow 771 s2Step175ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step175ExitBank_rows]
  rfl

private theorem s2Step175Add0_apart : Disjoint s2Step175Add0Arena.live s2Step175Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step175Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175Add0_card : s2Step175Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step175Add0_borrowed : s2Step175Add0Arena.checkBorrow (hmrHybridCount s2Step175Add0Arena s2Step175Add0B.length) s2Step175Add0Work=some s2Step175Add0During := by
  have len : s2Step175Add0Work.length=hmrHybridCount s2Step175Add0Arena s2Step175Add0B.length := by
    rw [hmrHybridCount,s2Step175Add0_card]
    decide +kernel
  have nd : s2Step175Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step175Add0Arena s2Step175Add0During s2Step175Add0Work.toFinset s2Step175Add0_bounded s2Step175Add0_apart rfl

private theorem s2Step175Add0_distinct : (803::830::799::(s2Step175Add0A++s2Step175Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175Add0_owned : (803::830::799::(s2Step175Add0A++s2Step175Add0B)).toFinset⊆s2Step175Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step175Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175Add0_checked : compileHmrHybridCinLog s2Step175Add0Arena 830 803 799 s2Step175Add0A s2Step175Add0B s2Step175Add0Work=some s2Step175Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step175Add0Arena s2Step175Add0During 830 803 799 s2Step175Add0A s2Step175Add0B s2Step175Add0Work
    (by decide +kernel) (by decide +kernel) s2Step175Add0_distinct
    (fun q hq => s2Step175Add0_owned (List.mem_toFinset.mpr hq)) s2Step175Add0_borrowed

private theorem s2Step175Add1_apart : Disjoint s2Step175Add1Arena.live s2Step175Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step175Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175Add1_card : s2Step175Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step175Add1_borrowed : s2Step175Add1Arena.checkBorrow (hmrHybridCount s2Step175Add1Arena s2Step175Add1B.length) s2Step175Add1Work=some s2Step175Add1During := by
  have len : s2Step175Add1Work.length=hmrHybridCount s2Step175Add1Arena s2Step175Add1B.length := by
    rw [hmrHybridCount,s2Step175Add1_card]
    decide +kernel
  have nd : s2Step175Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step175Add1Arena s2Step175Add1During s2Step175Add1Work.toFinset s2Step175Add1_bounded s2Step175Add1_apart rfl

private theorem s2Step175Add1_distinct : (803::830::799::(s2Step175Add1A++s2Step175Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175Add1_owned : (803::830::799::(s2Step175Add1A++s2Step175Add1B)).toFinset⊆s2Step175Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step175Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175Add1_checked : compileHmrHybridCinLog s2Step175Add1Arena 830 803 799 s2Step175Add1A s2Step175Add1B s2Step175Add1Work=some s2Step175Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step175Add1Arena s2Step175Add1During 830 803 799 s2Step175Add1A s2Step175Add1B s2Step175Add1Work
    (by decide +kernel) (by decide +kernel) s2Step175Add1_distinct
    (fun q hq => s2Step175Add1_owned (List.mem_toFinset.mpr hq)) s2Step175Add1_borrowed

private theorem s2Step175F4_apart : Disjoint (s2Step175Add0A++s2Step175Add0B).toFinset (s2Step175Add1A++s2Step175Add1B).toFinset := by
  have nd : ((s2Step175Add0A++s2Step175Add0B)++(s2Step175Add1A++s2Step175Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step175F4_carry : s2Step175F4FlagArena.checkBorrow 1 [799]=some s2Step175Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step175F4FlagArena,s2Step175HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step175F4FlagArena,s2Step175HeadFvAfter,s2Step175Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step175F4_distinct : (846::830::803::799::((s2Step175Add0A++s2Step175Add1A)++(s2Step175Add0B++s2Step175Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175F4_flag : s2Step175HeadFvAfter.checkBorrow 1 [803]=some s2Step175F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step175HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step175F4_owned : (846::830::((s2Step175Add0A++s2Step175Add1A)++(s2Step175Add0B++s2Step175Add1B))).toFinset⊆s2Step175HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step175HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175F4_checked : compileHmrHybridF4Log s2Step175HeadFvAfter 846 830 s2Step175Add0A s2Step175Add0B s2Step175Add1A s2Step175Add1B [803] [799] s2Step175Add0Work s2Step175Add1Work=some s2Step175F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step175HeadFvAfter s2Step175F4FlagArena s2Step175Add0Arena s2Step175Add0During s2Step175Add1During 846 830
    s2Step175Add0A s2Step175Add0B s2Step175Add1A s2Step175Add1B [803] [799] s2Step175Add0Work s2Step175Add1Work
    (fun q hq => s2Step175F4_owned (List.mem_toFinset.mpr hq)) s2Step175F4_flag s2Step175F4_carry
    s2Step175F4_distinct s2Step175F4_apart s2Step175Add0_checked s2Step175Add1_checked

private theorem s2Step175Front_branch : s2Step175FrontSigmaArena.checkBorrow 1 [830]=some s2Step175HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step175FrontSigmaArena,s2Step175EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step175FrontSigmaArena,s2Step175EntryGvAfter,s2Step175HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step175Front_entry : HmrFrontEntryValid s2Step175EntryFBefore s2Step175FrontBank 182 102 ⟨182,181,102,102⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step175FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step175EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step175EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step175FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step175Front_sigma : s2Step175EntryGvAfter.checkBorrow 1 [846]=some s2Step175FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step175EntryGvAfter,arenaWires]
  · rfl

private def s2Step175HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175HeadFBefore : Arena := s2Step175HeadGAfter

private def s2Step175HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩

private def s2Step175HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step175HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],769⟩

private def s2Step175HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩

private theorem s2Step175HeadBank_incomingDistinct : ([s2Step175HeadGRow,s2Step175HeadFRow,s2Step175HeadGvRow,s2Step175HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175HeadF_Incoming : rowsOwned s2Step175HeadFBefore [s2Step175HeadFRow,s2Step175HeadGvRow,s2Step175HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175HeadGRow,s2Step175HeadFRow,s2Step175HeadGvRow,s2Step175HeadFvRow] 1 s2Step175HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175HeadBank_outgoingOwned : rowsOwned s2Step175HeadFvAfter [s2Step175HeadGOut,s2Step175HeadFOut,s2Step175HeadGvOut,s2Step175HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step175HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175HeadF_Outgoing : rowsOwned s2Step175HeadFvAfter [s2Step175HeadFOut,s2Step175HeadGvOut,s2Step175HeadFvOut] :=
  hmrRows_owned_drop s2Step175HeadFvAfter [s2Step175HeadGOut,s2Step175HeadFOut,s2Step175HeadGvOut,s2Step175HeadFvOut] 1 s2Step175HeadBank_outgoingOwned

private theorem s2Step175HeadF_distinct : (s2Step175HeadFRow.sign::s2Step175HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175HeadF_owned : (s2Step175HeadFRow.sign::s2Step175HeadFRow.payload).toFinset⊆s2Step175HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175HeadF_reserved : s2Step175HeadFBefore.reserve s2Step175HeadFFresh.toFinset=some s2Step175HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step175HeadFFresh,arenaWires]
  · norm_num [s2Step175HeadFBefore,s2Step175HeadGAfter,s2Step175HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step175HeadFAfter,s2Step175HeadFBefore,s2Step175HeadGAfter,s2Step175HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step175HeadF_checked : planRowResizeLog s2Step175HeadFBefore s2Step175HeadFRow 183 s2Step175HeadFFresh=
    some (s2Step175HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 785],768⟩,growRow 768 s2Step175HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step175HeadFBefore s2Step175HeadFAfter s2Step175HeadFRow 183 s2Step175HeadFFresh
    s2Step175HeadF_distinct s2Step175HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step175HeadF_reserved
  have rowEq : WindowRow.mk (s2Step175HeadFRow.payload++s2Step175HeadFFresh) s2Step175HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step175HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step175HeadFvBefore : Arena := s2Step175HeadGvAfter

private theorem s2Step175HeadFv_Incoming : rowsOwned s2Step175HeadFvBefore [s2Step175HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175HeadGRow,s2Step175HeadFRow,s2Step175HeadGvRow,s2Step175HeadFvRow] 3 s2Step175HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175HeadFv_Outgoing : rowsOwned s2Step175HeadFvAfter [s2Step175HeadFvOut] :=
  hmrRows_owned_drop s2Step175HeadFvAfter [s2Step175HeadGOut,s2Step175HeadFOut,s2Step175HeadGvOut,s2Step175HeadFvOut] 3 s2Step175HeadBank_outgoingOwned

private theorem s2Step175HeadFv_distinct : (s2Step175HeadFvRow.sign::s2Step175HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175HeadFv_owned : (s2Step175HeadFvRow.sign::s2Step175HeadFvRow.payload).toFinset⊆s2Step175HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175HeadFv_reserved : s2Step175HeadFvBefore.reserve s2Step175HeadFvFresh.toFinset=some s2Step175HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step175HeadFvFresh,arenaWires]
  · norm_num [s2Step175HeadFvBefore,s2Step175HeadGvAfter,s2Step175HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step175HeadFvAfter,s2Step175HeadFvBefore,s2Step175HeadGvAfter,s2Step175HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step175HeadFv_checked : planRowResizeLog s2Step175HeadFvBefore s2Step175HeadFvRow 103 s2Step175HeadFvFresh=
    some (s2Step175HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩,growRow 770 s2Step175HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step175HeadFvBefore s2Step175HeadFvAfter s2Step175HeadFvRow 103 s2Step175HeadFvFresh
    s2Step175HeadFv_distinct s2Step175HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step175HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step175HeadFvRow.payload++s2Step175HeadFvFresh) s2Step175HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step175HeadG_Incoming : rowsOwned s2Step175HeadGBefore [s2Step175HeadGRow,s2Step175HeadFRow,s2Step175HeadGvRow,s2Step175HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175HeadGRow,s2Step175HeadFRow,s2Step175HeadGvRow,s2Step175HeadFvRow] 0 s2Step175HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175HeadG_Outgoing : rowsOwned s2Step175HeadFvAfter [s2Step175HeadGOut,s2Step175HeadFOut,s2Step175HeadGvOut,s2Step175HeadFvOut] :=
  hmrRows_owned_drop s2Step175HeadFvAfter [s2Step175HeadGOut,s2Step175HeadFOut,s2Step175HeadGvOut,s2Step175HeadFvOut] 0 s2Step175HeadBank_outgoingOwned

private theorem s2Step175HeadG_distinct : (s2Step175HeadGRow.sign::s2Step175HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175HeadG_owned : (s2Step175HeadGRow.sign::s2Step175HeadGRow.payload).toFinset⊆s2Step175HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175HeadG_reserved : s2Step175HeadGBefore.reserve s2Step175HeadGFresh.toFinset=some s2Step175HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step175HeadGFresh,arenaWires]
  · norm_num [s2Step175HeadGBefore,s2Step175HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step175HeadGAfter,s2Step175HeadGBefore,s2Step175HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step175HeadG_checked : planRowResizeLog s2Step175HeadGBefore s2Step175HeadGRow 183 s2Step175HeadGFresh=
    some (s2Step175HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 847],769⟩,growRow 769 s2Step175HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step175HeadGBefore s2Step175HeadGAfter s2Step175HeadGRow 183 s2Step175HeadGFresh
    s2Step175HeadG_distinct s2Step175HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step175HeadG_reserved
  have rowEq : WindowRow.mk (s2Step175HeadGRow.payload++s2Step175HeadGFresh) s2Step175HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 847],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step175HeadGvBefore : Arena := s2Step175HeadFAfter

private theorem s2Step175HeadGv_Incoming : rowsOwned s2Step175HeadGvBefore [s2Step175HeadGvRow,s2Step175HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step175HeadGRow,s2Step175HeadFRow,s2Step175HeadGvRow,s2Step175HeadFvRow] 2 s2Step175HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step175HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step175HeadGv_Outgoing : rowsOwned s2Step175HeadFvAfter [s2Step175HeadGvOut,s2Step175HeadFvOut] :=
  hmrRows_owned_drop s2Step175HeadFvAfter [s2Step175HeadGOut,s2Step175HeadFOut,s2Step175HeadGvOut,s2Step175HeadFvOut] 2 s2Step175HeadBank_outgoingOwned

private theorem s2Step175HeadGv_distinct : (s2Step175HeadGvRow.sign::s2Step175HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step175HeadGv_owned : (s2Step175HeadGvRow.sign::s2Step175HeadGvRow.payload).toFinset⊆s2Step175HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step175HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step175HeadGv_reserved : s2Step175HeadGvBefore.reserve s2Step175HeadGvFresh.toFinset=some s2Step175HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step175HeadGvFresh,arenaWires]
  · norm_num [s2Step175HeadGvBefore,s2Step175HeadFAfter,s2Step175HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step175HeadGvAfter,s2Step175HeadGvBefore,s2Step175HeadFAfter,s2Step175HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step175HeadGv_checked : planRowResizeLog s2Step175HeadGvBefore s2Step175HeadGvRow 103 s2Step175HeadGvFresh=
    some (s2Step175HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 794],771⟩,growRow 771 s2Step175HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step175HeadGvBefore s2Step175HeadGvAfter s2Step175HeadGvRow 103 s2Step175HeadGvFresh
    s2Step175HeadGv_distinct s2Step175HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step175HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step175HeadGvRow.payload++s2Step175HeadGvFresh) s2Step175HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step175HeadBank_rows : planWindowRowsLog s2Step175HeadGBefore [(s2Step175HeadGRow,183),(s2Step175HeadFRow,183),(s2Step175HeadGvRow,103),(s2Step175HeadFvRow,103)] [s2Step175HeadGFresh,s2Step175HeadFFresh,s2Step175HeadGvFresh,s2Step175HeadFvFresh]=
    some (s2Step175HeadFvAfter,[s2Step175HeadGOut,s2Step175HeadFOut,s2Step175HeadGvOut,s2Step175HeadFvOut],(growRow 769 s2Step175HeadGFresh ++ (growRow 768 s2Step175HeadFFresh ++ (growRow 771 s2Step175HeadGvFresh ++ (growRow 770 s2Step175HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step175HeadFvAfter [] []=some (s2Step175HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step175HeadFvBefore s2Step175HeadFvAfter s2Step175HeadFvAfter
    s2Step175HeadFvRow s2Step175HeadFvOut 103 s2Step175HeadFvFresh [] [] []
    (growRow 770 s2Step175HeadFvFresh) ([]) s2Step175HeadFv_Incoming s2Step175HeadFv_checked h4 s2Step175HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step175HeadGvBefore s2Step175HeadGvAfter s2Step175HeadFvAfter
    s2Step175HeadGvRow s2Step175HeadGvOut 103 s2Step175HeadGvFresh [(s2Step175HeadFvRow,103)] [s2Step175HeadFvFresh] [s2Step175HeadFvOut]
    (growRow 771 s2Step175HeadGvFresh) ((growRow 770 s2Step175HeadFvFresh ++ [])) s2Step175HeadGv_Incoming s2Step175HeadGv_checked h3 s2Step175HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step175HeadFBefore s2Step175HeadFAfter s2Step175HeadFvAfter
    s2Step175HeadFRow s2Step175HeadFOut 183 s2Step175HeadFFresh [(s2Step175HeadGvRow,103),(s2Step175HeadFvRow,103)] [s2Step175HeadGvFresh,s2Step175HeadFvFresh] [s2Step175HeadGvOut,s2Step175HeadFvOut]
    (growRow 768 s2Step175HeadFFresh) ((growRow 771 s2Step175HeadGvFresh ++ (growRow 770 s2Step175HeadFvFresh ++ []))) s2Step175HeadF_Incoming s2Step175HeadF_checked h2 s2Step175HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step175HeadGBefore s2Step175HeadGAfter s2Step175HeadFvAfter
    s2Step175HeadGRow s2Step175HeadGOut 183 s2Step175HeadGFresh [(s2Step175HeadFRow,183),(s2Step175HeadGvRow,103),(s2Step175HeadFvRow,103)] [s2Step175HeadFFresh,s2Step175HeadGvFresh,s2Step175HeadFvFresh] [s2Step175HeadFOut,s2Step175HeadGvOut,s2Step175HeadFvOut]
    (growRow 769 s2Step175HeadGFresh) ((growRow 768 s2Step175HeadFFresh ++ (growRow 771 s2Step175HeadGvFresh ++ (growRow 770 s2Step175HeadFvFresh ++ [])))) s2Step175HeadG_Incoming s2Step175HeadG_checked h1 s2Step175HeadG_Outgoing
  exact h0

private theorem s2Step175HeadBank_checked : compileHmrBankResizeLog .headroom s2Step175HeadGBefore ⟨s2Step175HeadFRow,s2Step175HeadGRow,s2Step175HeadFvRow,s2Step175HeadGvRow⟩ ⟨183,183,103,103⟩ [s2Step175HeadGFresh,s2Step175HeadFFresh,s2Step175HeadGvFresh,s2Step175HeadFvFresh]=
    some (s2Step175HeadFvAfter,⟨s2Step175HeadFOut,s2Step175HeadGOut,s2Step175HeadFvOut,s2Step175HeadGvOut⟩,(growRow 769 s2Step175HeadGFresh ++ (growRow 768 s2Step175HeadFFresh ++ (growRow 771 s2Step175HeadGvFresh ++ (growRow 770 s2Step175HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step175HeadBank_rows]
  rfl

private theorem s2Step175Front_checked : compileHmrSourceFrontLog s2Step175EntryFBefore s2Step175FrontBank 182 102 ⟨182,181,102,102⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step175FrontLog=some s2Step175FrontPlan := by
  have pairEq : s2Step175FrontPair=⟨s2Step175HeadFRow,s2Step175HeadGRow,s2Step175HeadFvRow,s2Step175HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step175FrontHead=⟨s2Step175ExitFRow,s2Step175ExitGRow,s2Step175ExitFvRow,s2Step175ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step175Add0A=s2Step175FrontHead.f.wires := by decide +kernel
  have gEq : s2Step175Add0B=s2Step175FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step175Add1A=s2Step175FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step175Add1B=s2Step175FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step175EntryFBefore s2Step175FrontBank 182 102 ⟨182,181,102,102⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step175FrontLog s2Step175FrontPlan
  · exact s2Step175Front_entry
  · exact s2Step175EntryBank_checked
  · exact s2Step175Front_sigma
  · rfl
  · exact s2Step175Front_branch
  · rfl
  · simpa only [s2Step175FrontPlan,pairEq] using s2Step175HeadBank_checked
  · simpa only [s2Step175FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step175F4_checked
  · exact s2Step175Counter_checked
  · rfl
  · simpa only [s2Step175FrontPlan,headEq] using s2Step175ExitBank_checked

private theorem s2Step175Complete_explicit_checked : compileHmrEarlyStepLog s2Step175EntryFBefore s2Step175FrontBank 182 102 ⟨182,181,102,102⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step175CompleteLog=some s2Step175CompletePlan := by
  let Q := s2Step175EarlyControlPlan
  have hq := s2Step175EarlyControl_plan_checked
  have fv1 : s2Step175CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step175CompleteOut.fv.payload[2]?.getD s2Step175CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step175CompleteOut.fv.payload[3]?.getD s2Step175CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step175CompleteOut.fv.payload[4]?.getD s2Step175CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step175EntryFBefore s2Step175EarlyControlArena s2Step175FrontBank 182 102 ⟨182,181,102,102⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step175CompleteLog s2Step175FrontPlan Q
    s2Step175Front_checked s2Step175Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step175Complete_owned s2Step175Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step175EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 s2Step175CompleteOut.fv.second (s2Step175CompleteOut.fv.payload[2]?.getD s2Step175CompleteOut.fv.sign) (s2Step175CompleteOut.fv.payload[3]?.getD s2Step175CompleteOut.fv.sign) (s2Step175CompleteOut.fv.payload[4]?.getD s2Step175CompleteOut.fv.sign) 830 42 s2Step175EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep175Arena : Arena := s2Step175EntryFBefore
def s2PrivateStep175Bank : WindowBank := s2Step175FrontBank
def s2PrivateStep175Spec : HmrSourceWalkStepLog := ⟨182,102,⟨182,181,102,102⟩,42,.early s2Step175CompleteLog⟩
def s2PrivateStep175Plan : HmrSourceStepPlan := .early s2Step175CompletePlan
theorem s2PrivateStep175_source : s2PrivateStep175Spec=s2ObservedLogs160[15] := rfl
theorem s2PrivateStep175_checked : compileHmrSourceStepLog s2PrivateStep175Arena s2PrivateStep175Bank
    s2PrivateStep175Spec.fgWidth s2PrivateStep175Spec.vWidth s2PrivateStep175Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 175 s2PrivateStep175Spec.need none s2PrivateStep175Spec.log=some s2PrivateStep175Plan := by
  change compileHmrSourceStepLog s2Step175EntryFBefore s2Step175FrontBank 182 102 ⟨182,181,102,102⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 175 42 none (.early s2Step175CompleteLog)=some (.early s2Step175CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 175<498)]
  rw [s2Step175Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
