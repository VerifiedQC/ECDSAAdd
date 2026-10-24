import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep169
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

private def s2Step171CompleteMoves : List (Wire × Wire) := [(846,183),(805,696)]

private def s2Step171EarlyControlLog : HmrEarlyControlLog := ⟨[805, 846, 820, 799, 785],[787],[793],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step171FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [787], [], [820]],[[793], [785], [799], [847]],[[], [], [], []]⟩,[809],[803],[867],[877],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step171CompleteLog : HmrEarlyStepLog := ⟨s2Step171FrontLog,s2Step171CompleteMoves,s2Step171EarlyControlLog⟩

private def s2Step171ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695],768⟩

private def s2Step171ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 847],770⟩

private def s2Step171ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],769⟩

private def s2Step171ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private def s2Step171FrontOut : WindowBank := ⟨s2Step171ExitFOut,s2Step171ExitGOut,s2Step171ExitFvOut,s2Step171ExitGvOut⟩

private def s2Step171CompleteOut : WindowBank := s2Step171FrontOut.repacked s2Step171CompleteMoves

private def s2Step171EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step171EarlyControlPositiveArena,[787],s2Step171EarlyControlEqualityArena,[793],⟨⟨809,false⟩,[⟨⟨787,false⟩,793⟩]⟩⟩

private def s2Step171EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨774,false⟩,846⟩,⟨⟨775,false⟩,820⟩,⟨⟨776,false⟩,799⟩,⟨⟨777,false⟩,785⟩]⟩

private def s2Step171EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step171EarlyControlZeroArena,s2Step171EarlyControlZeroPlan,s2Step171EarlyControlClassPlan,s2Step171EarlyControlFlagArena,s2Step171EarlyControlFittedArena,s2Step171EarlyControlHistoryArena,s2Step171EarlyControlSigmaArena,s2Step171EarlyControlOutputArena,s2Step171EarlyControlLog⟩

private def s2Step171CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step171Counter_bounded : s2Step171CounterWork.toFinset⊆arenaWires := by norm_num [s2Step171CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step171HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171CounterDuring : Arena := ⟨s2Step171HeadFvAfter.live∪s2Step171CounterWork.toFinset,Finset.union_subset s2Step171HeadFvAfter.bounded s2Step171Counter_bounded⟩

private def s2Step171EntryFFresh : List Wire := []

private def s2Step171EntryFvFresh : List Wire := []

private def s2Step171EntryGFresh : List Wire := [787]

private def s2Step171EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EntryGvFresh : List Wire := [820]

private def s2Step171ExitFExtra : List Wire := [696, 785]

private def s2Step171ExitGExtra : List Wire := [183, 787, 793]

private def s2Step171ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<696) ∨ (697≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<820) ∨ (821≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171ExitGvExtra : List Wire := [820, 799]

private def s2Step171Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171Add0Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step171Add0_bounded : s2Step171Add0Work.toFinset⊆arenaWires := by
  have h : s2Step171Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step171Add0During : Arena := ⟨s2Step171Add0Arena.live∪s2Step171Add0Work.toFinset,Finset.union_subset s2Step171Add0Arena.bounded s2Step171Add0_bounded⟩

private def s2Step171Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171Add1Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step171Add1_bounded : s2Step171Add1Work.toFinset⊆arenaWires := by
  have h : s2Step171Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step171Add1During : Arena := ⟨s2Step171Add1Arena.live∪s2Step171Add1Work.toFinset,Finset.union_subset s2Step171Add1Arena.bounded s2Step171Add1_bounded⟩

private def s2Step171F4FlagArena : Arena := ⟨s2Step171HeadFvAfter.live∪{867},Finset.union_subset s2Step171HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step171F4Plan : HmrHybridF4Plan := ⟨s2Step171F4FlagArena,[867],s2Step171Add0Arena,[877],s2Step171Add0During,s2Step171Add0Work,s2Step171Add1During,s2Step171Add1Work⟩

private def s2Step171HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 785],768⟩

private def s2Step171HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 847],770⟩

private def s2Step171HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 787, 793],769⟩

private def s2Step171HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 820, 799],771⟩

private def s2Step171FrontHead : WindowBank := ⟨s2Step171HeadFOut,s2Step171HeadGOut,s2Step171HeadFvOut,s2Step171HeadGvOut⟩

private def s2Step171EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step171EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩

private def s2Step171EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 787],769⟩

private def s2Step171EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 820],771⟩

private def s2Step171FrontPair : WindowBank := ⟨s2Step171EntryFOut,s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut⟩

private def s2Step171FrontSigmaArena : Arena := ⟨s2Step171EntryGvAfter.live∪{809},Finset.union_subset s2Step171EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step171HeadFFresh : List Wire := [785]

private def s2Step171HeadFvFresh : List Wire := [847]

private def s2Step171HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171HeadGFresh : List Wire := [793]

private def s2Step171HeadGvFresh : List Wire := [799]

private def s2Step171FrontPlan : HmrSourceFront := ⟨s2Step171EntryGvAfter,s2Step171FrontPair,(growRow 768 s2Step171EntryFFresh ++ (growRow 769 s2Step171EntryGFresh ++ (growRow 770 s2Step171EntryFvFresh ++ (growRow 771 s2Step171EntryGvFresh ++ [])))),s2Step171FrontSigmaArena,[809],s2Step171HeadGBefore,[803],
  s2Step171HeadFvAfter,s2Step171FrontHead,(growRow 769 s2Step171HeadGFresh ++ (growRow 768 s2Step171HeadFFresh ++ (growRow 771 s2Step171HeadGvFresh ++ (growRow 770 s2Step171HeadFvFresh ++ [])))),s2Step171F4Plan,s2Step171CounterDuring,s2Step171CounterWork,s2Step171ExitGvAfter,s2Step171FrontOut,(shrinkRow 769 s2Step171ExitGExtra ++ (shrinkRow 768 s2Step171ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step171ExitGvExtra ++ []))))⟩

private def s2Step171CompletePlan : HmrEarlyStepPlan := ⟨s2Step171FrontPlan,s2Step171EarlyControlArena,s2Step171EarlyControlPlan,s2Step171CompleteMoves⟩

private theorem s2Step171Complete_apart : List.Disjoint (s2Step171CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [809, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step171CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[809, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step171Complete_owned : (s2Step171CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step171EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step171CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,696),(697,785),(786,787),(788,793),(794,799),(800,820),(821,846),(847,867),(868,877),(878,879),(880,882),(883,885),(886,888),(889,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step171CompleteRelocationMove0Borrowed : Arena := ⟨s2Step171ExitGvAfter.live∪{183},Finset.union_subset s2Step171ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step171CompleteRelocationMove1Borrowed : Arena := ⟨s2Step171CompleteRelocationMove0After.live∪{696},Finset.union_subset s2Step171CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step171CompleteRelocation_move0_owned : 846∈s2Step171ExitGvAfter.live := by norm_num [s2Step171ExitGvAfter,arenaWires]

private theorem s2Step171CompleteRelocation_move0_reserve : s2Step171ExitGvAfter.reserve {183}=some s2Step171CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step171ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step171CompleteRelocation_move0_retire : s2Step171CompleteRelocationMove0Borrowed.retireSet {846}=s2Step171CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step171CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step171CompleteRelocationMove0Borrowed,s2Step171ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step171CompleteRelocation_move1_owned : 805∈s2Step171CompleteRelocationMove0After.live := by norm_num [s2Step171CompleteRelocationMove0After,arenaWires]

private theorem s2Step171CompleteRelocation_move1_reserve : s2Step171CompleteRelocationMove0After.reserve {696}=some s2Step171CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step171CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step171CompleteRelocation_move1_retire : s2Step171CompleteRelocationMove1Borrowed.retireSet {805}=s2Step171EarlyControlArena := by
  unfold Arena.retireSet s2Step171EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step171CompleteRelocationMove1Borrowed,s2Step171CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step171CompleteRelocation_checked : s2Step171ExitGvAfter.checkRepack [(846,183),(805,696)]=some s2Step171EarlyControlArena := by
  have tail2 : s2Step171EarlyControlArena.checkRepack []=some s2Step171EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step171CompleteRelocationMove0After s2Step171CompleteRelocationMove1Borrowed s2Step171EarlyControlArena s2Step171EarlyControlArena 805 696 []
    s2Step171CompleteRelocation_move1_owned s2Step171CompleteRelocation_move1_reserve s2Step171CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step171ExitGvAfter s2Step171CompleteRelocationMove0Borrowed s2Step171CompleteRelocationMove0After s2Step171EarlyControlArena 846 183 [(805,696)]
    s2Step171CompleteRelocation_move0_owned s2Step171CompleteRelocation_move0_reserve s2Step171CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step171Complete_repack : s2Step171ExitGvAfter.checkRepack s2Step171CompleteMoves=some s2Step171EarlyControlArena := by
  simpa only [s2Step171CompleteMoves] using s2Step171CompleteRelocation_checked

private theorem s2Step171EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s2Step171EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_branch : compileHmrBranchRetirement s2Step171EarlyControlSigmaArena 803=some s2Step171EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step171EarlyControl_branchOwned
  · ext q
    simp [s2Step171EarlyControlOutputArena,s2Step171EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step171EarlyControl_classEqualityBorrow : s2Step171EarlyControlPositiveArena.checkBorrow (([809, 787] : List Wire).length-1) s2Step171EarlyControlLog.classWork=some s2Step171EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step171EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step171EarlyControlEqualityArena,s2Step171EarlyControlPositiveArena,s2Step171EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step171EarlyControl_classEqualityOwned : ([809, 787] : List Wire).toFinset⊆s2Step171EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_classEquality : compileHmrEqualityLog s2Step171EarlyControlPositiveArena [809, 787] 0 s2Step171EarlyControlLog.classWork=some (s2Step171EarlyControlEqualityArena,s2Step171EarlyControlLog.classWork,s2Step171EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step171EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step171EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step171EarlyControl_classOwned : ([777, 785, 809] : List Wire).toFinset⊆s2Step171EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_positiveBorrow : s2Step171EarlyControlZeroArena.checkBorrow (1) s2Step171EarlyControlLog.positiveWork=some s2Step171EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step171EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step171EarlyControlPositiveArena,s2Step171EarlyControlZeroArena,s2Step171EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step171EarlyControl_class : compileHmrSourceClassLog s2Step171EarlyControlZeroArena false 777 s2Step171EarlyControlZeroPlan.top 0 809 s2Step171EarlyControlLog.positiveWork s2Step171EarlyControlLog.classWork=some s2Step171EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step171EarlyControlClassPlan s2Step171EarlyControlZeroArena false 777 s2Step171EarlyControlZeroPlan.top 0 809
  constructor
  · decide +kernel
  · exact s2Step171EarlyControl_classOwned
  · exact s2Step171EarlyControl_positiveBorrow
  · exact s2Step171EarlyControl_classEquality

private theorem s2Step171EarlyControl_entryRecordOwned : ([803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step171EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_entrySigmaOwned : ([809, 254] : List Wire).toFinset⊆s2Step171EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_fitBorrow : s2Step171EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step171EarlyControlLog.recordFresh=some s2Step171EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step171EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step171EarlyControlFittedArena,s2Step171EarlyControlFlagArena,s2Step171EarlyControlLog,arenaWires]

private theorem s2Step171EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step171EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_fit : compileHmrRecordGrowLog s2Step171EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step171EarlyControlLog.recordFresh=some s2Step171EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step171EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step171EarlyControl_fitBorrow

private theorem s2Step171EarlyControl_flagsBorrow : s2Step171EarlyControlEqualityArena.checkBorrow (6) s2Step171EarlyControlLog.flagWork=some s2Step171EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step171EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step171EarlyControlFlagArena,s2Step171EarlyControlEqualityArena,s2Step171EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step171EarlyControl_flagsOwned : ([793, 253, 252, 251] : List Wire).toFinset⊆s2Step171EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_flags : compileHmrFlagsLog s2Step171EarlyControlClassPlan.equalityArena s2Step171EarlyControlClassPlan.equality.top 253 252 251 s2Step171EarlyControlLog.flagWork=some s2Step171EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step171EarlyControl_flagsOwned⟩
  · exact s2Step171EarlyControl_flagsBorrow

private theorem s2Step171EarlyControl_historyBorrow : s2Step171EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step171EarlyControlLog.recordFresh=some s2Step171EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step171EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step171EarlyControlHistoryArena,s2Step171EarlyControlArena,s2Step171EarlyControlLog,arenaWires]

private theorem s2Step171EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step171EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_history : compileHmrRecordGrowLog s2Step171EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step171EarlyControlLog.recordFresh=some s2Step171EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step171EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step171EarlyControl_historyBorrow

private theorem s2Step171EarlyControl_sigmaOwned : ([254, 809] : List Wire).toFinset⊆s2Step171EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_sigmaReleaseOwned : ([809] : List Wire).toFinset⊆s2Step171EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_sigmaRelease : s2Step171EarlyControlHistoryArena.release {809} (fun _ => false)=some s2Step171EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step171EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step171EarlyControlSigmaArena,s2Step171EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step171EarlyControl_sigma : compileHmrSigmaDropLog s2Step171EarlyControlHistoryArena false 0 0 254 809 []=some s2Step171EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step171EarlyControl_sigmaOwned⟩
  · exact s2Step171EarlyControl_sigmaRelease

private theorem s2Step171EarlyControl_zeroBorrow : s2Step171EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step171EarlyControlLog.zeroWork=some s2Step171EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step171EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step171EarlyControlZeroArena,s2Step171EarlyControlArena,s2Step171EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step171EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step171EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step171EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EarlyControl_zero : compileHmrEqualityLog s2Step171EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step171EarlyControlLog.zeroWork=some (s2Step171EarlyControlZeroArena,s2Step171EarlyControlLog.zeroWork,s2Step171EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step171EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step171EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step171EarlyControl_logged : s2Step171EarlyControlPlan.Logged s2Step171EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 809 254 253 252 251 803 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step171EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step171EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step171EarlyControl_zero
  · exact s2Step171EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step171EarlyControl_flags
  · exact s2Step171EarlyControl_fit
  · exact s2Step171EarlyControl_history
  · exact s2Step171EarlyControl_sigma
  · exact s2Step171EarlyControl_branch

private theorem s2Step171EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step171EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 809 254 253 252 251 803 42 s2Step171EarlyControlLog=some s2Step171EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step171EarlyControlPlan s2Step171EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 809 254 253 252 251 803 42 s2Step171EarlyControl_logged

private def s2Step171EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step171EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩

private def s2Step171EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183],769⟩

private def s2Step171EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private def s2Step171FrontBank : WindowBank := ⟨s2Step171EntryFRow,s2Step171EntryGRow,s2Step171EntryFvRow,s2Step171EntryGvRow⟩

private def s2Step171Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 785, 768]

private def s2Step171Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 787, 793, 769]

private def s2Step171Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 847, 770]

private def s2Step171Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 820, 799, 771]

private theorem s2Step171Counter_apart : Disjoint s2Step171HeadFvAfter.live s2Step171CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step171HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171Counter_borrowed : s2Step171HeadFvAfter.checkBorrow 4 s2Step171CounterWork=some s2Step171CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step171HeadFvAfter s2Step171CounterDuring s2Step171CounterWork.toFinset s2Step171Counter_bounded s2Step171Counter_apart rfl

private theorem s2Step171Counter_owned : (809::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step171HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step171HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171Counter_checked : compileHmrCounterStepLog s2Step171HeadFvAfter true 809 [772, 773, 774, 775, 776, 777] s2Step171CounterWork=some s2Step171CounterDuring := by
  have owned : ∀q∈809::[772, 773, 774, 775, 776, 777],q∈s2Step171HeadFvAfter.live := fun q hq => s2Step171Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step171Counter_borrowed

private def s2Step171EntryFAfter : Arena := s2Step171EntryFBefore

private theorem s2Step171EntryBank_incomingDistinct : ([s2Step171EntryFRow,s2Step171EntryGRow,s2Step171EntryFvRow,s2Step171EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171EntryF_Incoming : rowsOwned s2Step171EntryFBefore [s2Step171EntryFRow,s2Step171EntryGRow,s2Step171EntryFvRow,s2Step171EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171EntryFRow,s2Step171EntryGRow,s2Step171EntryFvRow,s2Step171EntryGvRow] 0 s2Step171EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171EntryBank_outgoingOwned : rowsOwned s2Step171EntryGvAfter [s2Step171EntryFOut,s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step171EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171EntryF_Outgoing : rowsOwned s2Step171EntryGvAfter [s2Step171EntryFOut,s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut] :=
  hmrRows_owned_drop s2Step171EntryGvAfter [s2Step171EntryFOut,s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut] 0 s2Step171EntryBank_outgoingOwned

private theorem s2Step171EntryF_distinct : (s2Step171EntryFRow.sign::s2Step171EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171EntryF_owned : (s2Step171EntryFRow.sign::s2Step171EntryFRow.payload).toFinset⊆s2Step171EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EntryF_reserved : s2Step171EntryFBefore.reserve s2Step171EntryFFresh.toFinset=some s2Step171EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step171EntryFFresh,arenaWires]
  · norm_num [s2Step171EntryFBefore,s2Step171EntryFFresh,arenaWires]
  · simp only [s2Step171EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step171EntryF_checked : planRowResizeLog s2Step171EntryFBefore s2Step171EntryFRow 185 s2Step171EntryFFresh=
    some (s2Step171EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩,growRow 768 s2Step171EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step171EntryFBefore s2Step171EntryFAfter s2Step171EntryFRow 185 s2Step171EntryFFresh
    s2Step171EntryF_distinct s2Step171EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step171EntryF_reserved
  have rowEq : WindowRow.mk (s2Step171EntryFRow.payload++s2Step171EntryFFresh) s2Step171EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step171EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171EntryFvAfter : Arena := s2Step171EntryGAfter

private def s2Step171EntryFvBefore : Arena := s2Step171EntryGAfter

private theorem s2Step171EntryFv_Incoming : rowsOwned s2Step171EntryFvBefore [s2Step171EntryFvRow,s2Step171EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171EntryFRow,s2Step171EntryGRow,s2Step171EntryFvRow,s2Step171EntryGvRow] 2 s2Step171EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171EntryFv_Outgoing : rowsOwned s2Step171EntryGvAfter [s2Step171EntryFvOut,s2Step171EntryGvOut] :=
  hmrRows_owned_drop s2Step171EntryGvAfter [s2Step171EntryFOut,s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut] 2 s2Step171EntryBank_outgoingOwned

private theorem s2Step171EntryFv_distinct : (s2Step171EntryFvRow.sign::s2Step171EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171EntryFv_owned : (s2Step171EntryFvRow.sign::s2Step171EntryFvRow.payload).toFinset⊆s2Step171EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EntryFv_reserved : s2Step171EntryFvBefore.reserve s2Step171EntryFvFresh.toFinset=some s2Step171EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step171EntryFvFresh,arenaWires]
  · norm_num [s2Step171EntryFvBefore,s2Step171EntryGAfter,s2Step171EntryFvFresh,arenaWires]
  · simp only [s2Step171EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step171EntryFv_checked : planRowResizeLog s2Step171EntryFvBefore s2Step171EntryFvRow 100 s2Step171EntryFvFresh=
    some (s2Step171EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩,growRow 770 s2Step171EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step171EntryFvBefore s2Step171EntryFvAfter s2Step171EntryFvRow 100 s2Step171EntryFvFresh
    s2Step171EntryFv_distinct s2Step171EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step171EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step171EntryFvRow.payload++s2Step171EntryFvFresh) s2Step171EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step171EntryGBefore : Arena := s2Step171EntryFBefore

private theorem s2Step171EntryG_Incoming : rowsOwned s2Step171EntryGBefore [s2Step171EntryGRow,s2Step171EntryFvRow,s2Step171EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171EntryFRow,s2Step171EntryGRow,s2Step171EntryFvRow,s2Step171EntryGvRow] 1 s2Step171EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171EntryG_Outgoing : rowsOwned s2Step171EntryGvAfter [s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut] :=
  hmrRows_owned_drop s2Step171EntryGvAfter [s2Step171EntryFOut,s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut] 1 s2Step171EntryBank_outgoingOwned

private theorem s2Step171EntryG_distinct : (s2Step171EntryGRow.sign::s2Step171EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171EntryG_owned : (s2Step171EntryGRow.sign::s2Step171EntryGRow.payload).toFinset⊆s2Step171EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EntryG_reserved : s2Step171EntryGBefore.reserve s2Step171EntryGFresh.toFinset=some s2Step171EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step171EntryGFresh,arenaWires]
  · norm_num [s2Step171EntryGBefore,s2Step171EntryFBefore,s2Step171EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step171EntryGAfter,s2Step171EntryGBefore,s2Step171EntryFBefore,s2Step171EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step171EntryG_checked : planRowResizeLog s2Step171EntryGBefore s2Step171EntryGRow 185 s2Step171EntryGFresh=
    some (s2Step171EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 787],769⟩,growRow 769 s2Step171EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step171EntryGBefore s2Step171EntryGAfter s2Step171EntryGRow 185 s2Step171EntryGFresh
    s2Step171EntryG_distinct s2Step171EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step171EntryG_reserved
  have rowEq : WindowRow.mk (s2Step171EntryGRow.payload++s2Step171EntryGFresh) s2Step171EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step171EntryGvBefore : Arena := s2Step171EntryGAfter

private theorem s2Step171EntryGv_Incoming : rowsOwned s2Step171EntryGvBefore [s2Step171EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171EntryFRow,s2Step171EntryGRow,s2Step171EntryFvRow,s2Step171EntryGvRow] 3 s2Step171EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171EntryGv_Outgoing : rowsOwned s2Step171EntryGvAfter [s2Step171EntryGvOut] :=
  hmrRows_owned_drop s2Step171EntryGvAfter [s2Step171EntryFOut,s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut] 3 s2Step171EntryBank_outgoingOwned

private theorem s2Step171EntryGv_distinct : (s2Step171EntryGvRow.sign::s2Step171EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171EntryGv_owned : (s2Step171EntryGvRow.sign::s2Step171EntryGvRow.payload).toFinset⊆s2Step171EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171EntryGv_reserved : s2Step171EntryGvBefore.reserve s2Step171EntryGvFresh.toFinset=some s2Step171EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step171EntryGvFresh,arenaWires]
  · norm_num [s2Step171EntryGvBefore,s2Step171EntryGAfter,s2Step171EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step171EntryGvAfter,s2Step171EntryGvBefore,s2Step171EntryGAfter,s2Step171EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step171EntryGv_checked : planRowResizeLog s2Step171EntryGvBefore s2Step171EntryGvRow 100 s2Step171EntryGvFresh=
    some (s2Step171EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 820],771⟩,growRow 771 s2Step171EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step171EntryGvBefore s2Step171EntryGvAfter s2Step171EntryGvRow 100 s2Step171EntryGvFresh
    s2Step171EntryGv_distinct s2Step171EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step171EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step171EntryGvRow.payload++s2Step171EntryGvFresh) s2Step171EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 820],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step171EntryBank_rows : planWindowRowsLog s2Step171EntryFBefore [(s2Step171EntryFRow,185),(s2Step171EntryGRow,185),(s2Step171EntryFvRow,100),(s2Step171EntryGvRow,100)] [s2Step171EntryFFresh,s2Step171EntryGFresh,s2Step171EntryFvFresh,s2Step171EntryGvFresh]=
    some (s2Step171EntryGvAfter,[s2Step171EntryFOut,s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut],(growRow 768 s2Step171EntryFFresh ++ (growRow 769 s2Step171EntryGFresh ++ (growRow 770 s2Step171EntryFvFresh ++ (growRow 771 s2Step171EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step171EntryGvAfter [] []=some (s2Step171EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step171EntryGvBefore s2Step171EntryGvAfter s2Step171EntryGvAfter
    s2Step171EntryGvRow s2Step171EntryGvOut 100 s2Step171EntryGvFresh [] [] []
    (growRow 771 s2Step171EntryGvFresh) ([]) s2Step171EntryGv_Incoming s2Step171EntryGv_checked h4 s2Step171EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step171EntryFvBefore s2Step171EntryFvAfter s2Step171EntryGvAfter
    s2Step171EntryFvRow s2Step171EntryFvOut 100 s2Step171EntryFvFresh [(s2Step171EntryGvRow,100)] [s2Step171EntryGvFresh] [s2Step171EntryGvOut]
    (growRow 770 s2Step171EntryFvFresh) ((growRow 771 s2Step171EntryGvFresh ++ [])) s2Step171EntryFv_Incoming s2Step171EntryFv_checked h3 s2Step171EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step171EntryGBefore s2Step171EntryGAfter s2Step171EntryGvAfter
    s2Step171EntryGRow s2Step171EntryGOut 185 s2Step171EntryGFresh [(s2Step171EntryFvRow,100),(s2Step171EntryGvRow,100)] [s2Step171EntryFvFresh,s2Step171EntryGvFresh] [s2Step171EntryFvOut,s2Step171EntryGvOut]
    (growRow 769 s2Step171EntryGFresh) ((growRow 770 s2Step171EntryFvFresh ++ (growRow 771 s2Step171EntryGvFresh ++ []))) s2Step171EntryG_Incoming s2Step171EntryG_checked h2 s2Step171EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step171EntryFBefore s2Step171EntryFAfter s2Step171EntryGvAfter
    s2Step171EntryFRow s2Step171EntryFOut 185 s2Step171EntryFFresh [(s2Step171EntryGRow,185),(s2Step171EntryFvRow,100),(s2Step171EntryGvRow,100)] [s2Step171EntryGFresh,s2Step171EntryFvFresh,s2Step171EntryGvFresh] [s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut]
    (growRow 768 s2Step171EntryFFresh) ((growRow 769 s2Step171EntryGFresh ++ (growRow 770 s2Step171EntryFvFresh ++ (growRow 771 s2Step171EntryGvFresh ++ [])))) s2Step171EntryF_Incoming s2Step171EntryF_checked h1 s2Step171EntryF_Outgoing
  exact h0

private theorem s2Step171EntryBank_checked : compileHmrBankResizeLog .entry s2Step171EntryFBefore ⟨s2Step171EntryFRow,s2Step171EntryGRow,s2Step171EntryFvRow,s2Step171EntryGvRow⟩ ⟨185,185,100,100⟩ [s2Step171EntryFFresh,s2Step171EntryGFresh,s2Step171EntryFvFresh,s2Step171EntryGvFresh]=
    some (s2Step171EntryGvAfter,⟨s2Step171EntryFOut,s2Step171EntryGOut,s2Step171EntryFvOut,s2Step171EntryGvOut⟩,(growRow 768 s2Step171EntryFFresh ++ (growRow 769 s2Step171EntryGFresh ++ (growRow 770 s2Step171EntryFvFresh ++ (growRow 771 s2Step171EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step171EntryBank_rows]
  rfl

private def s2Step171ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<696) ∨ (697≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171ExitFBefore : Arena := s2Step171ExitGAfter

private def s2Step171ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 785],768⟩

private def s2Step171ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 847],770⟩

private def s2Step171ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 787, 793],769⟩

private def s2Step171ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 820, 799],771⟩

private theorem s2Step171ExitBank_incomingDistinct : ([s2Step171ExitGRow,s2Step171ExitFRow,s2Step171ExitFvRow,s2Step171ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171ExitF_Incoming : rowsOwned s2Step171ExitFBefore [s2Step171ExitFRow,s2Step171ExitFvRow,s2Step171ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171ExitGRow,s2Step171ExitFRow,s2Step171ExitFvRow,s2Step171ExitGvRow] 1 s2Step171ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171ExitFBefore (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171ExitBank_outgoingOwned : rowsOwned s2Step171ExitGvAfter [s2Step171ExitGOut,s2Step171ExitFOut,s2Step171ExitFvOut,s2Step171ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step171ExitGvAfter (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<696) ∨ (697≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<820) ∨ (821≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171ExitF_Outgoing : rowsOwned s2Step171ExitGvAfter [s2Step171ExitFOut,s2Step171ExitFvOut,s2Step171ExitGvOut] :=
  hmrRows_owned_drop s2Step171ExitGvAfter [s2Step171ExitGOut,s2Step171ExitFOut,s2Step171ExitFvOut,s2Step171ExitGvOut] 1 s2Step171ExitBank_outgoingOwned

private theorem s2Step171ExitF_distinct : (s2Step171ExitFRow.sign::s2Step171ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171ExitF_owned : (s2Step171ExitFRow.sign::s2Step171ExitFRow.payload).toFinset⊆s2Step171ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171ExitFBefore (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171ExitF_retired : s2Step171ExitFBefore.retireSet s2Step171ExitFExtra.toFinset=s2Step171ExitFAfter := by
  unfold Arena.retireSet s2Step171ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step171ExitFBefore,s2Step171ExitGAfter,s2Step171ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step171ExitF_checked : planRowResizeLog s2Step171ExitFBefore s2Step171ExitFRow 184 []=
    some (s2Step171ExitFAfter,s2Step171ExitFOut,shrinkRow 768 s2Step171ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step171ExitFBefore s2Step171ExitFRow 184 s2Step171ExitF_distinct s2Step171ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step171ExitFRow.payload.take 184) s2Step171ExitFRow.sign=s2Step171ExitFOut := by decide +kernel
  have hi : s2Step171ExitFRow.payload.drop 184=s2Step171ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step171ExitF_retired] at result
  exact result

private def s2Step171ExitFvAfter : Arena := s2Step171ExitFAfter

private def s2Step171ExitFvBefore : Arena := s2Step171ExitFAfter

private theorem s2Step171ExitFv_Incoming : rowsOwned s2Step171ExitFvBefore [s2Step171ExitFvRow,s2Step171ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171ExitGRow,s2Step171ExitFRow,s2Step171ExitFvRow,s2Step171ExitGvRow] 2 s2Step171ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171ExitFvBefore (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<696) ∨ (697≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171ExitFv_Outgoing : rowsOwned s2Step171ExitGvAfter [s2Step171ExitFvOut,s2Step171ExitGvOut] :=
  hmrRows_owned_drop s2Step171ExitGvAfter [s2Step171ExitGOut,s2Step171ExitFOut,s2Step171ExitFvOut,s2Step171ExitGvOut] 2 s2Step171ExitBank_outgoingOwned

private theorem s2Step171ExitFv_distinct : (s2Step171ExitFvRow.sign::s2Step171ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171ExitFv_owned : (s2Step171ExitFvRow.sign::s2Step171ExitFvRow.payload).toFinset⊆s2Step171ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171ExitFvBefore (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<696) ∨ (697≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171ExitFv_reserved : s2Step171ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step171ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step171ExitFv_checked : planRowResizeLog s2Step171ExitFvBefore s2Step171ExitFvRow 101 []=
    some (s2Step171ExitFvAfter,s2Step171ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step171ExitFvBefore s2Step171ExitFvAfter s2Step171ExitFvRow 101 []
    s2Step171ExitFv_distinct s2Step171ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step171ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step171ExitFvRow.payload++[]) s2Step171ExitFvRow.sign=s2Step171ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step171ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step171ExitG_Incoming : rowsOwned s2Step171ExitGBefore [s2Step171ExitGRow,s2Step171ExitFRow,s2Step171ExitFvRow,s2Step171ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171ExitGRow,s2Step171ExitFRow,s2Step171ExitFvRow,s2Step171ExitGvRow] 0 s2Step171ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171ExitG_Outgoing : rowsOwned s2Step171ExitGvAfter [s2Step171ExitGOut,s2Step171ExitFOut,s2Step171ExitFvOut,s2Step171ExitGvOut] :=
  hmrRows_owned_drop s2Step171ExitGvAfter [s2Step171ExitGOut,s2Step171ExitFOut,s2Step171ExitFvOut,s2Step171ExitGvOut] 0 s2Step171ExitBank_outgoingOwned

private theorem s2Step171ExitG_distinct : (s2Step171ExitGRow.sign::s2Step171ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171ExitG_owned : (s2Step171ExitGRow.sign::s2Step171ExitGRow.payload).toFinset⊆s2Step171ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171ExitG_retired : s2Step171ExitGBefore.retireSet s2Step171ExitGExtra.toFinset=s2Step171ExitGAfter := by
  unfold Arena.retireSet s2Step171ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step171ExitGBefore,s2Step171ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step171ExitG_checked : planRowResizeLog s2Step171ExitGBefore s2Step171ExitGRow 183 []=
    some (s2Step171ExitGAfter,s2Step171ExitGOut,shrinkRow 769 s2Step171ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step171ExitGBefore s2Step171ExitGRow 183 s2Step171ExitG_distinct s2Step171ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step171ExitGRow.payload.take 183) s2Step171ExitGRow.sign=s2Step171ExitGOut := by decide +kernel
  have hi : s2Step171ExitGRow.payload.drop 183=s2Step171ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step171ExitG_retired] at result
  exact result

private def s2Step171ExitGvBefore : Arena := s2Step171ExitFAfter

private theorem s2Step171ExitGv_Incoming : rowsOwned s2Step171ExitGvBefore [s2Step171ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171ExitGRow,s2Step171ExitFRow,s2Step171ExitFvRow,s2Step171ExitGvRow] 3 s2Step171ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171ExitGvBefore (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<696) ∨ (697≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171ExitGv_Outgoing : rowsOwned s2Step171ExitGvAfter [s2Step171ExitGvOut] :=
  hmrRows_owned_drop s2Step171ExitGvAfter [s2Step171ExitGOut,s2Step171ExitFOut,s2Step171ExitFvOut,s2Step171ExitGvOut] 3 s2Step171ExitBank_outgoingOwned

private theorem s2Step171ExitGv_distinct : (s2Step171ExitGvRow.sign::s2Step171ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171ExitGv_owned : (s2Step171ExitGvRow.sign::s2Step171ExitGvRow.payload).toFinset⊆s2Step171ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171ExitGvBefore (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<696) ∨ (697≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171ExitGv_retired : s2Step171ExitGvBefore.retireSet s2Step171ExitGvExtra.toFinset=s2Step171ExitGvAfter := by
  unfold Arena.retireSet s2Step171ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step171ExitGvBefore,s2Step171ExitFAfter,s2Step171ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step171ExitGv_checked : planRowResizeLog s2Step171ExitGvBefore s2Step171ExitGvRow 99 []=
    some (s2Step171ExitGvAfter,s2Step171ExitGvOut,shrinkRow 771 s2Step171ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step171ExitGvBefore s2Step171ExitGvRow 99 s2Step171ExitGv_distinct s2Step171ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step171ExitGvRow.payload.take 99) s2Step171ExitGvRow.sign=s2Step171ExitGvOut := by decide +kernel
  have hi : s2Step171ExitGvRow.payload.drop 99=s2Step171ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step171ExitGv_retired] at result
  exact result

private theorem s2Step171ExitBank_rows : planWindowRowsLog s2Step171ExitGBefore [(s2Step171ExitGRow,183),(s2Step171ExitFRow,184),(s2Step171ExitFvRow,101),(s2Step171ExitGvRow,99)] [[],[],[],[]]=
    some (s2Step171ExitGvAfter,[s2Step171ExitGOut,s2Step171ExitFOut,s2Step171ExitFvOut,s2Step171ExitGvOut],(shrinkRow 769 s2Step171ExitGExtra ++ (shrinkRow 768 s2Step171ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step171ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step171ExitGvAfter [] []=some (s2Step171ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step171ExitGvBefore s2Step171ExitGvAfter s2Step171ExitGvAfter
    s2Step171ExitGvRow s2Step171ExitGvOut 99 [] [] [] []
    (shrinkRow 771 s2Step171ExitGvExtra) ([]) s2Step171ExitGv_Incoming s2Step171ExitGv_checked h4 s2Step171ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step171ExitFvBefore s2Step171ExitFvAfter s2Step171ExitGvAfter
    s2Step171ExitFvRow s2Step171ExitFvOut 101 [] [(s2Step171ExitGvRow,99)] [[]] [s2Step171ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step171ExitGvExtra ++ [])) s2Step171ExitFv_Incoming s2Step171ExitFv_checked h3 s2Step171ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step171ExitFBefore s2Step171ExitFAfter s2Step171ExitGvAfter
    s2Step171ExitFRow s2Step171ExitFOut 184 [] [(s2Step171ExitFvRow,101),(s2Step171ExitGvRow,99)] [[],[]] [s2Step171ExitFvOut,s2Step171ExitGvOut]
    (shrinkRow 768 s2Step171ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step171ExitGvExtra ++ []))) s2Step171ExitF_Incoming s2Step171ExitF_checked h2 s2Step171ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step171ExitGBefore s2Step171ExitGAfter s2Step171ExitGvAfter
    s2Step171ExitGRow s2Step171ExitGOut 183 [] [(s2Step171ExitFRow,184),(s2Step171ExitFvRow,101),(s2Step171ExitGvRow,99)] [[],[],[]] [s2Step171ExitFOut,s2Step171ExitFvOut,s2Step171ExitGvOut]
    (shrinkRow 769 s2Step171ExitGExtra) ((shrinkRow 768 s2Step171ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step171ExitGvExtra ++ [])))) s2Step171ExitG_Incoming s2Step171ExitG_checked h1 s2Step171ExitG_Outgoing
  exact h0

private theorem s2Step171ExitBank_checked : compileHmrBankResizeLog .exit s2Step171ExitGBefore ⟨s2Step171ExitFRow,s2Step171ExitGRow,s2Step171ExitFvRow,s2Step171ExitGvRow⟩ ⟨184,183,101,99⟩ [[],[],[],[]]=
    some (s2Step171ExitGvAfter,⟨s2Step171ExitFOut,s2Step171ExitGOut,s2Step171ExitFvOut,s2Step171ExitGvOut⟩,(shrinkRow 769 s2Step171ExitGExtra ++ (shrinkRow 768 s2Step171ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step171ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step171ExitBank_rows]
  rfl

private theorem s2Step171Add0_apart : Disjoint s2Step171Add0Arena.live s2Step171Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step171Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171Add0_card : s2Step171Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step171Add0_borrowed : s2Step171Add0Arena.checkBorrow (hmrHybridCount s2Step171Add0Arena s2Step171Add0B.length) s2Step171Add0Work=some s2Step171Add0During := by
  have len : s2Step171Add0Work.length=hmrHybridCount s2Step171Add0Arena s2Step171Add0B.length := by
    rw [hmrHybridCount,s2Step171Add0_card]
    decide +kernel
  have nd : s2Step171Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step171Add0Arena s2Step171Add0During s2Step171Add0Work.toFinset s2Step171Add0_bounded s2Step171Add0_apart rfl

private theorem s2Step171Add0_distinct : (867::803::877::(s2Step171Add0A++s2Step171Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171Add0_owned : (867::803::877::(s2Step171Add0A++s2Step171Add0B)).toFinset⊆s2Step171Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step171Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171Add0_checked : compileHmrHybridCinLog s2Step171Add0Arena 803 867 877 s2Step171Add0A s2Step171Add0B s2Step171Add0Work=some s2Step171Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step171Add0Arena s2Step171Add0During 803 867 877 s2Step171Add0A s2Step171Add0B s2Step171Add0Work
    (by decide +kernel) (by decide +kernel) s2Step171Add0_distinct
    (fun q hq => s2Step171Add0_owned (List.mem_toFinset.mpr hq)) s2Step171Add0_borrowed

private theorem s2Step171Add1_apart : Disjoint s2Step171Add1Arena.live s2Step171Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step171Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171Add1_card : s2Step171Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step171Add1_borrowed : s2Step171Add1Arena.checkBorrow (hmrHybridCount s2Step171Add1Arena s2Step171Add1B.length) s2Step171Add1Work=some s2Step171Add1During := by
  have len : s2Step171Add1Work.length=hmrHybridCount s2Step171Add1Arena s2Step171Add1B.length := by
    rw [hmrHybridCount,s2Step171Add1_card]
    decide +kernel
  have nd : s2Step171Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step171Add1Arena s2Step171Add1During s2Step171Add1Work.toFinset s2Step171Add1_bounded s2Step171Add1_apart rfl

private theorem s2Step171Add1_distinct : (867::803::877::(s2Step171Add1A++s2Step171Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171Add1_owned : (867::803::877::(s2Step171Add1A++s2Step171Add1B)).toFinset⊆s2Step171Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step171Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171Add1_checked : compileHmrHybridCinLog s2Step171Add1Arena 803 867 877 s2Step171Add1A s2Step171Add1B s2Step171Add1Work=some s2Step171Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step171Add1Arena s2Step171Add1During 803 867 877 s2Step171Add1A s2Step171Add1B s2Step171Add1Work
    (by decide +kernel) (by decide +kernel) s2Step171Add1_distinct
    (fun q hq => s2Step171Add1_owned (List.mem_toFinset.mpr hq)) s2Step171Add1_borrowed

private theorem s2Step171F4_apart : Disjoint (s2Step171Add0A++s2Step171Add0B).toFinset (s2Step171Add1A++s2Step171Add1B).toFinset := by
  have nd : ((s2Step171Add0A++s2Step171Add0B)++(s2Step171Add1A++s2Step171Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step171F4_carry : s2Step171F4FlagArena.checkBorrow 1 [877]=some s2Step171Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step171F4FlagArena,s2Step171HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step171F4FlagArena,s2Step171HeadFvAfter,s2Step171Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step171F4_distinct : (809::803::867::877::((s2Step171Add0A++s2Step171Add1A)++(s2Step171Add0B++s2Step171Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171F4_flag : s2Step171HeadFvAfter.checkBorrow 1 [867]=some s2Step171F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step171HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step171F4_owned : (809::803::((s2Step171Add0A++s2Step171Add1A)++(s2Step171Add0B++s2Step171Add1B))).toFinset⊆s2Step171HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step171HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171F4_checked : compileHmrHybridF4Log s2Step171HeadFvAfter 809 803 s2Step171Add0A s2Step171Add0B s2Step171Add1A s2Step171Add1B [867] [877] s2Step171Add0Work s2Step171Add1Work=some s2Step171F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step171HeadFvAfter s2Step171F4FlagArena s2Step171Add0Arena s2Step171Add0During s2Step171Add1During 809 803
    s2Step171Add0A s2Step171Add0B s2Step171Add1A s2Step171Add1B [867] [877] s2Step171Add0Work s2Step171Add1Work
    (fun q hq => s2Step171F4_owned (List.mem_toFinset.mpr hq)) s2Step171F4_flag s2Step171F4_carry
    s2Step171F4_distinct s2Step171F4_apart s2Step171Add0_checked s2Step171Add1_checked

private theorem s2Step171Front_branch : s2Step171FrontSigmaArena.checkBorrow 1 [803]=some s2Step171HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step171FrontSigmaArena,s2Step171EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step171FrontSigmaArena,s2Step171EntryGvAfter,s2Step171HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step171Front_entry : HmrFrontEntryValid s2Step171EntryFBefore s2Step171FrontBank 185 100 ⟨184,183,101,99⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step171FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step171EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step171EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step171FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step171Front_sigma : s2Step171EntryGvAfter.checkBorrow 1 [809]=some s2Step171FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step171EntryGvAfter,arenaWires]
  · rfl

private def s2Step171HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171HeadFBefore : Arena := s2Step171HeadGAfter

private def s2Step171HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step171HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩

private def s2Step171HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 787],769⟩

private def s2Step171HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 820],771⟩

private theorem s2Step171HeadBank_incomingDistinct : ([s2Step171HeadGRow,s2Step171HeadFRow,s2Step171HeadGvRow,s2Step171HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171HeadF_Incoming : rowsOwned s2Step171HeadFBefore [s2Step171HeadFRow,s2Step171HeadGvRow,s2Step171HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171HeadGRow,s2Step171HeadFRow,s2Step171HeadGvRow,s2Step171HeadFvRow] 1 s2Step171HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171HeadBank_outgoingOwned : rowsOwned s2Step171HeadFvAfter [s2Step171HeadGOut,s2Step171HeadFOut,s2Step171HeadGvOut,s2Step171HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step171HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171HeadF_Outgoing : rowsOwned s2Step171HeadFvAfter [s2Step171HeadFOut,s2Step171HeadGvOut,s2Step171HeadFvOut] :=
  hmrRows_owned_drop s2Step171HeadFvAfter [s2Step171HeadGOut,s2Step171HeadFOut,s2Step171HeadGvOut,s2Step171HeadFvOut] 1 s2Step171HeadBank_outgoingOwned

private theorem s2Step171HeadF_distinct : (s2Step171HeadFRow.sign::s2Step171HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171HeadF_owned : (s2Step171HeadFRow.sign::s2Step171HeadFRow.payload).toFinset⊆s2Step171HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171HeadF_reserved : s2Step171HeadFBefore.reserve s2Step171HeadFFresh.toFinset=some s2Step171HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step171HeadFFresh,arenaWires]
  · norm_num [s2Step171HeadFBefore,s2Step171HeadGAfter,s2Step171HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step171HeadFAfter,s2Step171HeadFBefore,s2Step171HeadGAfter,s2Step171HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step171HeadF_checked : planRowResizeLog s2Step171HeadFBefore s2Step171HeadFRow 186 s2Step171HeadFFresh=
    some (s2Step171HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 785],768⟩,growRow 768 s2Step171HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step171HeadFBefore s2Step171HeadFAfter s2Step171HeadFRow 186 s2Step171HeadFFresh
    s2Step171HeadF_distinct s2Step171HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step171HeadF_reserved
  have rowEq : WindowRow.mk (s2Step171HeadFRow.payload++s2Step171HeadFFresh) s2Step171HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step171HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step171HeadFvBefore : Arena := s2Step171HeadGvAfter

private theorem s2Step171HeadFv_Incoming : rowsOwned s2Step171HeadFvBefore [s2Step171HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171HeadGRow,s2Step171HeadFRow,s2Step171HeadGvRow,s2Step171HeadFvRow] 3 s2Step171HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171HeadFvBefore (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171HeadFv_Outgoing : rowsOwned s2Step171HeadFvAfter [s2Step171HeadFvOut] :=
  hmrRows_owned_drop s2Step171HeadFvAfter [s2Step171HeadGOut,s2Step171HeadFOut,s2Step171HeadGvOut,s2Step171HeadFvOut] 3 s2Step171HeadBank_outgoingOwned

private theorem s2Step171HeadFv_distinct : (s2Step171HeadFvRow.sign::s2Step171HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171HeadFv_owned : (s2Step171HeadFvRow.sign::s2Step171HeadFvRow.payload).toFinset⊆s2Step171HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171HeadFvBefore (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171HeadFv_reserved : s2Step171HeadFvBefore.reserve s2Step171HeadFvFresh.toFinset=some s2Step171HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step171HeadFvFresh,arenaWires]
  · norm_num [s2Step171HeadFvBefore,s2Step171HeadGvAfter,s2Step171HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step171HeadFvAfter,s2Step171HeadFvBefore,s2Step171HeadGvAfter,s2Step171HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step171HeadFv_checked : planRowResizeLog s2Step171HeadFvBefore s2Step171HeadFvRow 101 s2Step171HeadFvFresh=
    some (s2Step171HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 847],770⟩,growRow 770 s2Step171HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step171HeadFvBefore s2Step171HeadFvAfter s2Step171HeadFvRow 101 s2Step171HeadFvFresh
    s2Step171HeadFv_distinct s2Step171HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step171HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step171HeadFvRow.payload++s2Step171HeadFvFresh) s2Step171HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 847],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step171HeadG_Incoming : rowsOwned s2Step171HeadGBefore [s2Step171HeadGRow,s2Step171HeadFRow,s2Step171HeadGvRow,s2Step171HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171HeadGRow,s2Step171HeadFRow,s2Step171HeadGvRow,s2Step171HeadFvRow] 0 s2Step171HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171HeadG_Outgoing : rowsOwned s2Step171HeadFvAfter [s2Step171HeadGOut,s2Step171HeadFOut,s2Step171HeadGvOut,s2Step171HeadFvOut] :=
  hmrRows_owned_drop s2Step171HeadFvAfter [s2Step171HeadGOut,s2Step171HeadFOut,s2Step171HeadGvOut,s2Step171HeadFvOut] 0 s2Step171HeadBank_outgoingOwned

private theorem s2Step171HeadG_distinct : (s2Step171HeadGRow.sign::s2Step171HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171HeadG_owned : (s2Step171HeadGRow.sign::s2Step171HeadGRow.payload).toFinset⊆s2Step171HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171HeadG_reserved : s2Step171HeadGBefore.reserve s2Step171HeadGFresh.toFinset=some s2Step171HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step171HeadGFresh,arenaWires]
  · norm_num [s2Step171HeadGBefore,s2Step171HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step171HeadGAfter,s2Step171HeadGBefore,s2Step171HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step171HeadG_checked : planRowResizeLog s2Step171HeadGBefore s2Step171HeadGRow 186 s2Step171HeadGFresh=
    some (s2Step171HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 787, 793],769⟩,growRow 769 s2Step171HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step171HeadGBefore s2Step171HeadGAfter s2Step171HeadGRow 186 s2Step171HeadGFresh
    s2Step171HeadG_distinct s2Step171HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step171HeadG_reserved
  have rowEq : WindowRow.mk (s2Step171HeadGRow.payload++s2Step171HeadGFresh) s2Step171HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 787, 793],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step171HeadGvBefore : Arena := s2Step171HeadFAfter

private theorem s2Step171HeadGv_Incoming : rowsOwned s2Step171HeadGvBefore [s2Step171HeadGvRow,s2Step171HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step171HeadGRow,s2Step171HeadFRow,s2Step171HeadGvRow,s2Step171HeadFvRow] 2 s2Step171HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step171HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step171HeadGv_Outgoing : rowsOwned s2Step171HeadFvAfter [s2Step171HeadGvOut,s2Step171HeadFvOut] :=
  hmrRows_owned_drop s2Step171HeadFvAfter [s2Step171HeadGOut,s2Step171HeadFOut,s2Step171HeadGvOut,s2Step171HeadFvOut] 2 s2Step171HeadBank_outgoingOwned

private theorem s2Step171HeadGv_distinct : (s2Step171HeadGvRow.sign::s2Step171HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step171HeadGv_owned : (s2Step171HeadGvRow.sign::s2Step171HeadGvRow.payload).toFinset⊆s2Step171HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step171HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step171HeadGv_reserved : s2Step171HeadGvBefore.reserve s2Step171HeadGvFresh.toFinset=some s2Step171HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step171HeadGvFresh,arenaWires]
  · norm_num [s2Step171HeadGvBefore,s2Step171HeadFAfter,s2Step171HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step171HeadGvAfter,s2Step171HeadGvBefore,s2Step171HeadFAfter,s2Step171HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step171HeadGv_checked : planRowResizeLog s2Step171HeadGvBefore s2Step171HeadGvRow 101 s2Step171HeadGvFresh=
    some (s2Step171HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 820, 799],771⟩,growRow 771 s2Step171HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step171HeadGvBefore s2Step171HeadGvAfter s2Step171HeadGvRow 101 s2Step171HeadGvFresh
    s2Step171HeadGv_distinct s2Step171HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step171HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step171HeadGvRow.payload++s2Step171HeadGvFresh) s2Step171HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 820, 799],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step171HeadBank_rows : planWindowRowsLog s2Step171HeadGBefore [(s2Step171HeadGRow,186),(s2Step171HeadFRow,186),(s2Step171HeadGvRow,101),(s2Step171HeadFvRow,101)] [s2Step171HeadGFresh,s2Step171HeadFFresh,s2Step171HeadGvFresh,s2Step171HeadFvFresh]=
    some (s2Step171HeadFvAfter,[s2Step171HeadGOut,s2Step171HeadFOut,s2Step171HeadGvOut,s2Step171HeadFvOut],(growRow 769 s2Step171HeadGFresh ++ (growRow 768 s2Step171HeadFFresh ++ (growRow 771 s2Step171HeadGvFresh ++ (growRow 770 s2Step171HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step171HeadFvAfter [] []=some (s2Step171HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step171HeadFvBefore s2Step171HeadFvAfter s2Step171HeadFvAfter
    s2Step171HeadFvRow s2Step171HeadFvOut 101 s2Step171HeadFvFresh [] [] []
    (growRow 770 s2Step171HeadFvFresh) ([]) s2Step171HeadFv_Incoming s2Step171HeadFv_checked h4 s2Step171HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step171HeadGvBefore s2Step171HeadGvAfter s2Step171HeadFvAfter
    s2Step171HeadGvRow s2Step171HeadGvOut 101 s2Step171HeadGvFresh [(s2Step171HeadFvRow,101)] [s2Step171HeadFvFresh] [s2Step171HeadFvOut]
    (growRow 771 s2Step171HeadGvFresh) ((growRow 770 s2Step171HeadFvFresh ++ [])) s2Step171HeadGv_Incoming s2Step171HeadGv_checked h3 s2Step171HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step171HeadFBefore s2Step171HeadFAfter s2Step171HeadFvAfter
    s2Step171HeadFRow s2Step171HeadFOut 186 s2Step171HeadFFresh [(s2Step171HeadGvRow,101),(s2Step171HeadFvRow,101)] [s2Step171HeadGvFresh,s2Step171HeadFvFresh] [s2Step171HeadGvOut,s2Step171HeadFvOut]
    (growRow 768 s2Step171HeadFFresh) ((growRow 771 s2Step171HeadGvFresh ++ (growRow 770 s2Step171HeadFvFresh ++ []))) s2Step171HeadF_Incoming s2Step171HeadF_checked h2 s2Step171HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step171HeadGBefore s2Step171HeadGAfter s2Step171HeadFvAfter
    s2Step171HeadGRow s2Step171HeadGOut 186 s2Step171HeadGFresh [(s2Step171HeadFRow,186),(s2Step171HeadGvRow,101),(s2Step171HeadFvRow,101)] [s2Step171HeadFFresh,s2Step171HeadGvFresh,s2Step171HeadFvFresh] [s2Step171HeadFOut,s2Step171HeadGvOut,s2Step171HeadFvOut]
    (growRow 769 s2Step171HeadGFresh) ((growRow 768 s2Step171HeadFFresh ++ (growRow 771 s2Step171HeadGvFresh ++ (growRow 770 s2Step171HeadFvFresh ++ [])))) s2Step171HeadG_Incoming s2Step171HeadG_checked h1 s2Step171HeadG_Outgoing
  exact h0

private theorem s2Step171HeadBank_checked : compileHmrBankResizeLog .headroom s2Step171HeadGBefore ⟨s2Step171HeadFRow,s2Step171HeadGRow,s2Step171HeadFvRow,s2Step171HeadGvRow⟩ ⟨186,186,101,101⟩ [s2Step171HeadGFresh,s2Step171HeadFFresh,s2Step171HeadGvFresh,s2Step171HeadFvFresh]=
    some (s2Step171HeadFvAfter,⟨s2Step171HeadFOut,s2Step171HeadGOut,s2Step171HeadFvOut,s2Step171HeadGvOut⟩,(growRow 769 s2Step171HeadGFresh ++ (growRow 768 s2Step171HeadFFresh ++ (growRow 771 s2Step171HeadGvFresh ++ (growRow 770 s2Step171HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step171HeadBank_rows]
  rfl

private theorem s2Step171Front_checked : compileHmrSourceFrontLog s2Step171EntryFBefore s2Step171FrontBank 185 100 ⟨184,183,101,99⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step171FrontLog=some s2Step171FrontPlan := by
  have pairEq : s2Step171FrontPair=⟨s2Step171HeadFRow,s2Step171HeadGRow,s2Step171HeadFvRow,s2Step171HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step171FrontHead=⟨s2Step171ExitFRow,s2Step171ExitGRow,s2Step171ExitFvRow,s2Step171ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step171Add0A=s2Step171FrontHead.f.wires := by decide +kernel
  have gEq : s2Step171Add0B=s2Step171FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step171Add1A=s2Step171FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step171Add1B=s2Step171FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step171EntryFBefore s2Step171FrontBank 185 100 ⟨184,183,101,99⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step171FrontLog s2Step171FrontPlan
  · exact s2Step171Front_entry
  · exact s2Step171EntryBank_checked
  · exact s2Step171Front_sigma
  · rfl
  · exact s2Step171Front_branch
  · rfl
  · simpa only [s2Step171FrontPlan,pairEq] using s2Step171HeadBank_checked
  · simpa only [s2Step171FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step171F4_checked
  · exact s2Step171Counter_checked
  · rfl
  · simpa only [s2Step171FrontPlan,headEq] using s2Step171ExitBank_checked

private theorem s2Step171Complete_explicit_checked : compileHmrEarlyStepLog s2Step171EntryFBefore s2Step171FrontBank 185 100 ⟨184,183,101,99⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step171CompleteLog=some s2Step171CompletePlan := by
  let Q := s2Step171EarlyControlPlan
  have hq := s2Step171EarlyControl_plan_checked
  have fv1 : s2Step171CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step171CompleteOut.fv.payload[2]?.getD s2Step171CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step171CompleteOut.fv.payload[3]?.getD s2Step171CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step171CompleteOut.fv.payload[4]?.getD s2Step171CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step171EntryFBefore s2Step171EarlyControlArena s2Step171FrontBank 185 100 ⟨184,183,101,99⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step171CompleteLog s2Step171FrontPlan Q
    s2Step171Front_checked s2Step171Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step171Complete_owned s2Step171Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step171EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 809 s2Step171CompleteOut.fv.second (s2Step171CompleteOut.fv.payload[2]?.getD s2Step171CompleteOut.fv.sign) (s2Step171CompleteOut.fv.payload[3]?.getD s2Step171CompleteOut.fv.sign) (s2Step171CompleteOut.fv.payload[4]?.getD s2Step171CompleteOut.fv.sign) 803 42 s2Step171EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep171Arena : Arena := s2Step171EntryFBefore
def s2PrivateStep171Bank : WindowBank := s2Step171FrontBank
def s2PrivateStep171Spec : HmrSourceWalkStepLog := ⟨185,100,⟨184,183,101,99⟩,42,.early s2Step171CompleteLog⟩
def s2PrivateStep171Plan : HmrSourceStepPlan := .early s2Step171CompletePlan
theorem s2PrivateStep171_source : s2PrivateStep171Spec=s2ObservedLogs160[11] := rfl
theorem s2PrivateStep171_checked : compileHmrSourceStepLog s2PrivateStep171Arena s2PrivateStep171Bank
    s2PrivateStep171Spec.fgWidth s2PrivateStep171Spec.vWidth s2PrivateStep171Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 171 s2PrivateStep171Spec.need none s2PrivateStep171Spec.log=some s2PrivateStep171Plan := by
  change compileHmrSourceStepLog s2Step171EntryFBefore s2Step171FrontBank 185 100 ⟨184,183,101,99⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 171 42 none (.early s2Step171CompleteLog)=some (.early s2Step171CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 171<498)]
  rw [s2Step171Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
