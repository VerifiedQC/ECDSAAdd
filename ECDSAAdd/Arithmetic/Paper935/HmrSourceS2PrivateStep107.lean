import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep105
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

private def s2Step107CompleteMoves : List (Wire × Wire) := [(810,727)]

private def s2Step107EarlyControlLog : HmrEarlyControlLog := ⟨[810, 805, 809, 785, 794],[846],[781],[849, 806, 802, 867, 877, 878],[]⟩

private def s2Step107FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [794], [], [811]],[[846], [785], [805], [809]],[[], [], [], []]⟩,[787],[799],[781],[849],[806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802]⟩

private def s2Step107CompleteLog : HmrEarlyStepLog := ⟨s2Step107FrontLog,s2Step107CompleteMoves,s2Step107EarlyControlLog⟩

private def s2Step107ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726],768⟩

private def s2Step107ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩

private def s2Step107ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],769⟩

private def s2Step107ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩

private def s2Step107FrontOut : WindowBank := ⟨s2Step107ExitFOut,s2Step107ExitGOut,s2Step107ExitFvOut,s2Step107ExitGvOut⟩

private def s2Step107CompleteOut : WindowBank := s2Step107FrontOut.repacked s2Step107CompleteMoves

private def s2Step107EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step107EarlyControlPositiveArena,[846],s2Step107EarlyControlEqualityArena,[781],⟨⟨787,false⟩,[⟨⟨846,false⟩,781⟩]⟩⟩

private def s2Step107EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,810⟩,⟨⟨774,false⟩,805⟩,⟨⟨775,false⟩,809⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,794⟩]⟩

private def s2Step107EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step107EarlyControlZeroArena,s2Step107EarlyControlZeroPlan,s2Step107EarlyControlClassPlan,s2Step107EarlyControlFlagArena,s2Step107EarlyControlFittedArena,s2Step107EarlyControlHistoryArena,s2Step107EarlyControlSigmaArena,s2Step107EarlyControlOutputArena,s2Step107EarlyControlLog⟩

private def s2Step107CounterWork : List Wire := [781, 849, 806, 802]

private theorem s2Step107Counter_bounded : s2Step107CounterWork.toFinset⊆arenaWires := by norm_num [s2Step107CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step107HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107CounterDuring : Arena := ⟨s2Step107HeadFvAfter.live∪s2Step107CounterWork.toFinset,Finset.union_subset s2Step107HeadFvAfter.bounded s2Step107Counter_bounded⟩

private def s2Step107EntryFFresh : List Wire := []

private def s2Step107EntryFvFresh : List Wire := []

private def s2Step107EntryGFresh : List Wire := [794]

private def s2Step107EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EntryGvFresh : List Wire := [811]

private def s2Step107ExitFExtra : List Wire := [727, 785]

private def s2Step107ExitFvExtra : List Wire := [809]

private def s2Step107ExitGExtra : List Wire := [794, 846]

private def s2Step107ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<727) ∨ (728≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107ExitGvExtra : List Wire := [805]

private def s2Step107Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107Add0Work : List Wire := [806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step107Add0_bounded : s2Step107Add0Work.toFinset⊆arenaWires := by
  have h : s2Step107Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step107Add0During : Arena := ⟨s2Step107Add0Arena.live∪s2Step107Add0Work.toFinset,Finset.union_subset s2Step107Add0Arena.bounded s2Step107Add0_bounded⟩

private def s2Step107Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107Add1Work : List Wire := [806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step107Add1_bounded : s2Step107Add1Work.toFinset⊆arenaWires := by
  have h : s2Step107Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step107Add1During : Arena := ⟨s2Step107Add1Arena.live∪s2Step107Add1Work.toFinset,Finset.union_subset s2Step107Add1Arena.bounded s2Step107Add1_bounded⟩

private def s2Step107F4FlagArena : Arena := ⟨s2Step107HeadFvAfter.live∪{781},Finset.union_subset s2Step107HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step107F4Plan : HmrHybridF4Plan := ⟨s2Step107F4FlagArena,[781],s2Step107Add0Arena,[849],s2Step107Add0During,s2Step107Add0Work,s2Step107Add1During,s2Step107Add1Work⟩

private def s2Step107HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 785],768⟩

private def s2Step107HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 809],770⟩

private def s2Step107HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 794, 846],769⟩

private def s2Step107HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 805],771⟩

private def s2Step107FrontHead : WindowBank := ⟨s2Step107HeadFOut,s2Step107HeadGOut,s2Step107HeadFvOut,s2Step107HeadGvOut⟩

private def s2Step107EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩

private def s2Step107EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩

private def s2Step107EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 794],769⟩

private def s2Step107EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩

private def s2Step107FrontPair : WindowBank := ⟨s2Step107EntryFOut,s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut⟩

private def s2Step107FrontSigmaArena : Arena := ⟨s2Step107EntryGvAfter.live∪{787},Finset.union_subset s2Step107EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step107HeadFFresh : List Wire := [785]

private def s2Step107HeadFvFresh : List Wire := [809]

private def s2Step107HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107HeadGFresh : List Wire := [846]

private def s2Step107HeadGvFresh : List Wire := [805]

private def s2Step107FrontPlan : HmrSourceFront := ⟨s2Step107EntryGvAfter,s2Step107FrontPair,(growRow 768 s2Step107EntryFFresh ++ (growRow 769 s2Step107EntryGFresh ++ (growRow 770 s2Step107EntryFvFresh ++ (growRow 771 s2Step107EntryGvFresh ++ [])))),s2Step107FrontSigmaArena,[787],s2Step107HeadGBefore,[799],
  s2Step107HeadFvAfter,s2Step107FrontHead,(growRow 769 s2Step107HeadGFresh ++ (growRow 768 s2Step107HeadFFresh ++ (growRow 771 s2Step107HeadGvFresh ++ (growRow 770 s2Step107HeadFvFresh ++ [])))),s2Step107F4Plan,s2Step107CounterDuring,s2Step107CounterWork,s2Step107ExitGvAfter,s2Step107FrontOut,(shrinkRow 769 s2Step107ExitGExtra ++ (shrinkRow 768 s2Step107ExitFExtra ++ (shrinkRow 770 s2Step107ExitFvExtra ++ (shrinkRow 771 s2Step107ExitGvExtra ++ []))))⟩

private def s2Step107CompletePlan : HmrEarlyStepPlan := ⟨s2Step107FrontPlan,s2Step107EarlyControlArena,s2Step107EarlyControlPlan,s2Step107CompleteMoves⟩

private theorem s2Step107Complete_apart : List.Disjoint (s2Step107CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [787, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] := by
  have nd : ((s2Step107CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[787, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step107Complete_owned : (s2Step107CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step107EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private def s2Step107CompleteMoveArena : Arena := ⟨s2Step107ExitGvAfter.live∪{727},Finset.union_subset s2Step107ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step107Complete_repack : s2Step107ExitGvAfter.checkRepack s2Step107CompleteMoves=some s2Step107EarlyControlArena := by
  have owned : 810∈s2Step107ExitGvAfter.live := by norm_num [s2Step107ExitGvAfter,arenaWires]
  have reserve : s2Step107ExitGvAfter.reserve {727}=some s2Step107CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step107ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step107CompleteMoveArena.retireSet {810}=s2Step107EarlyControlArena := by
    unfold Arena.retireSet s2Step107EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step107CompleteMoveArena,s2Step107ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step107CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step107CompleteMoveArena.retireSet {810}).checkRepack []=some s2Step107EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step107EarlyControl_branchOwned : ([799] : List Wire).toFinset⊆s2Step107EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_branch : compileHmrBranchRetirement s2Step107EarlyControlSigmaArena 799=some s2Step107EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step107EarlyControl_branchOwned
  · ext q
    simp [s2Step107EarlyControlOutputArena,s2Step107EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step107EarlyControl_classEqualityBorrow : s2Step107EarlyControlPositiveArena.checkBorrow (([787, 846] : List Wire).length-1) s2Step107EarlyControlLog.classWork=some s2Step107EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step107EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step107EarlyControlEqualityArena,s2Step107EarlyControlPositiveArena,s2Step107EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step107EarlyControl_classEqualityOwned : ([787, 846] : List Wire).toFinset⊆s2Step107EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_classEquality : compileHmrEqualityLog s2Step107EarlyControlPositiveArena [787, 846] 0 s2Step107EarlyControlLog.classWork=some (s2Step107EarlyControlEqualityArena,s2Step107EarlyControlLog.classWork,s2Step107EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step107EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step107EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step107EarlyControl_classOwned : ([777, 794, 787] : List Wire).toFinset⊆s2Step107EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_positiveBorrow : s2Step107EarlyControlZeroArena.checkBorrow (1) s2Step107EarlyControlLog.positiveWork=some s2Step107EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step107EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step107EarlyControlPositiveArena,s2Step107EarlyControlZeroArena,s2Step107EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step107EarlyControl_class : compileHmrSourceClassLog s2Step107EarlyControlZeroArena false 777 s2Step107EarlyControlZeroPlan.top 0 787 s2Step107EarlyControlLog.positiveWork s2Step107EarlyControlLog.classWork=some s2Step107EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step107EarlyControlClassPlan s2Step107EarlyControlZeroArena false 777 s2Step107EarlyControlZeroPlan.top 0 787
  constructor
  · decide +kernel
  · exact s2Step107EarlyControl_classOwned
  · exact s2Step107EarlyControl_positiveBorrow
  · exact s2Step107EarlyControl_classEquality

private theorem s2Step107EarlyControl_entryRecordOwned : ([799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step107EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_entrySigmaOwned : ([787, 254] : List Wire).toFinset⊆s2Step107EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_fitBorrow : s2Step107EarlyControlFlagArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step107EarlyControlLog.recordFresh=some s2Step107EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step107EarlyControlFlagArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step107EarlyControlFittedArena,s2Step107EarlyControlFlagArena,s2Step107EarlyControlLog,arenaWires]

private theorem s2Step107EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step107EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlFlagArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_fit : compileHmrRecordGrowLog s2Step107EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step107EarlyControlLog.recordFresh=some s2Step107EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step107EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step107EarlyControl_fitBorrow

private theorem s2Step107EarlyControl_flagsBorrow : s2Step107EarlyControlEqualityArena.checkBorrow (6) s2Step107EarlyControlLog.flagWork=some s2Step107EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step107EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step107EarlyControlFlagArena,s2Step107EarlyControlEqualityArena,s2Step107EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step107EarlyControl_flagsOwned : ([781, 253, 252, 251] : List Wire).toFinset⊆s2Step107EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_flags : compileHmrFlagsLog s2Step107EarlyControlClassPlan.equalityArena s2Step107EarlyControlClassPlan.equality.top 253 252 251 s2Step107EarlyControlLog.flagWork=some s2Step107EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step107EarlyControl_flagsOwned⟩
  · exact s2Step107EarlyControl_flagsBorrow

private theorem s2Step107EarlyControl_historyBorrow : s2Step107EarlyControlArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step107EarlyControlLog.recordFresh=some s2Step107EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step107EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step107EarlyControlHistoryArena,s2Step107EarlyControlArena,s2Step107EarlyControlLog,arenaWires]

private theorem s2Step107EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step107EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_history : compileHmrRecordGrowLog s2Step107EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step107EarlyControlLog.recordFresh=some s2Step107EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step107EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step107EarlyControl_historyBorrow

private theorem s2Step107EarlyControl_sigmaOwned : ([254, 787] : List Wire).toFinset⊆s2Step107EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_sigmaReleaseOwned : ([787] : List Wire).toFinset⊆s2Step107EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_sigmaRelease : s2Step107EarlyControlHistoryArena.release {787} (fun _ => false)=some s2Step107EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step107EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step107EarlyControlSigmaArena,s2Step107EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step107EarlyControl_sigma : compileHmrSigmaDropLog s2Step107EarlyControlHistoryArena false 0 0 254 787 []=some s2Step107EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step107EarlyControl_sigmaOwned⟩
  · exact s2Step107EarlyControl_sigmaRelease

private theorem s2Step107EarlyControl_zeroBorrow : s2Step107EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step107EarlyControlLog.zeroWork=some s2Step107EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step107EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step107EarlyControlZeroArena,s2Step107EarlyControlArena,s2Step107EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step107EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step107EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step107EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EarlyControl_zero : compileHmrEqualityLog s2Step107EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step107EarlyControlLog.zeroWork=some (s2Step107EarlyControlZeroArena,s2Step107EarlyControlLog.zeroWork,s2Step107EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step107EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step107EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step107EarlyControl_logged : s2Step107EarlyControlPlan.Logged s2Step107EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 787 254 253 252 251 799 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step107EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step107EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step107EarlyControl_zero
  · exact s2Step107EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step107EarlyControl_flags
  · exact s2Step107EarlyControl_fit
  · exact s2Step107EarlyControl_history
  · exact s2Step107EarlyControl_sigma
  · exact s2Step107EarlyControl_branch

private theorem s2Step107EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step107EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 787 254 253 252 251 799 35 s2Step107EarlyControlLog=some s2Step107EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step107EarlyControlPlan s2Step107EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 787 254 253 252 251 799 35 s2Step107EarlyControl_logged

private def s2Step107EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩

private def s2Step107EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩

private def s2Step107EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],769⟩

private def s2Step107EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private def s2Step107FrontBank : WindowBank := ⟨s2Step107EntryFRow,s2Step107EntryGRow,s2Step107EntryFvRow,s2Step107EntryGvRow⟩

private def s2Step107Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 785, 768]

private def s2Step107Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 794, 846, 769]

private def s2Step107Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 809, 770]

private def s2Step107Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 805, 771]

private theorem s2Step107Counter_apart : Disjoint s2Step107HeadFvAfter.live s2Step107CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step107HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107Counter_borrowed : s2Step107HeadFvAfter.checkBorrow 4 s2Step107CounterWork=some s2Step107CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step107HeadFvAfter s2Step107CounterDuring s2Step107CounterWork.toFinset s2Step107Counter_bounded s2Step107Counter_apart rfl

private theorem s2Step107Counter_owned : (787::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step107HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step107HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107Counter_checked : compileHmrCounterStepLog s2Step107HeadFvAfter true 787 [772, 773, 774, 775, 776, 777] s2Step107CounterWork=some s2Step107CounterDuring := by
  have owned : ∀q∈787::[772, 773, 774, 775, 776, 777],q∈s2Step107HeadFvAfter.live := fun q hq => s2Step107Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step107Counter_borrowed

private def s2Step107EntryFAfter : Arena := s2Step107EntryFBefore

private theorem s2Step107EntryBank_incomingDistinct : ([s2Step107EntryFRow,s2Step107EntryGRow,s2Step107EntryFvRow,s2Step107EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107EntryF_Incoming : rowsOwned s2Step107EntryFBefore [s2Step107EntryFRow,s2Step107EntryGRow,s2Step107EntryFvRow,s2Step107EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107EntryFRow,s2Step107EntryGRow,s2Step107EntryFvRow,s2Step107EntryGvRow] 0 s2Step107EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107EntryBank_outgoingOwned : rowsOwned s2Step107EntryGvAfter [s2Step107EntryFOut,s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step107EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107EntryF_Outgoing : rowsOwned s2Step107EntryGvAfter [s2Step107EntryFOut,s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut] :=
  hmrRows_owned_drop s2Step107EntryGvAfter [s2Step107EntryFOut,s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut] 0 s2Step107EntryBank_outgoingOwned

private theorem s2Step107EntryF_distinct : (s2Step107EntryFRow.sign::s2Step107EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107EntryF_owned : (s2Step107EntryFRow.sign::s2Step107EntryFRow.payload).toFinset⊆s2Step107EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EntryF_reserved : s2Step107EntryFBefore.reserve s2Step107EntryFFresh.toFinset=some s2Step107EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step107EntryFFresh,arenaWires]
  · norm_num [s2Step107EntryFBefore,s2Step107EntryFFresh,arenaWires]
  · simp only [s2Step107EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step107EntryF_checked : planRowResizeLog s2Step107EntryFBefore s2Step107EntryFRow 216 s2Step107EntryFFresh=
    some (s2Step107EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩,growRow 768 s2Step107EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step107EntryFBefore s2Step107EntryFAfter s2Step107EntryFRow 216 s2Step107EntryFFresh
    s2Step107EntryF_distinct s2Step107EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step107EntryF_reserved
  have rowEq : WindowRow.mk (s2Step107EntryFRow.payload++s2Step107EntryFFresh) s2Step107EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step107EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107EntryFvAfter : Arena := s2Step107EntryGAfter

private def s2Step107EntryFvBefore : Arena := s2Step107EntryGAfter

private theorem s2Step107EntryFv_Incoming : rowsOwned s2Step107EntryFvBefore [s2Step107EntryFvRow,s2Step107EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107EntryFRow,s2Step107EntryGRow,s2Step107EntryFvRow,s2Step107EntryGvRow] 2 s2Step107EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107EntryFv_Outgoing : rowsOwned s2Step107EntryGvAfter [s2Step107EntryFvOut,s2Step107EntryGvOut] :=
  hmrRows_owned_drop s2Step107EntryGvAfter [s2Step107EntryFOut,s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut] 2 s2Step107EntryBank_outgoingOwned

private theorem s2Step107EntryFv_distinct : (s2Step107EntryFvRow.sign::s2Step107EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107EntryFv_owned : (s2Step107EntryFvRow.sign::s2Step107EntryFvRow.payload).toFinset⊆s2Step107EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EntryFv_reserved : s2Step107EntryFvBefore.reserve s2Step107EntryFvFresh.toFinset=some s2Step107EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step107EntryFvFresh,arenaWires]
  · norm_num [s2Step107EntryFvBefore,s2Step107EntryGAfter,s2Step107EntryFvFresh,arenaWires]
  · simp only [s2Step107EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step107EntryFv_checked : planRowResizeLog s2Step107EntryFvBefore s2Step107EntryFvRow 67 s2Step107EntryFvFresh=
    some (s2Step107EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩,growRow 770 s2Step107EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step107EntryFvBefore s2Step107EntryFvAfter s2Step107EntryFvRow 67 s2Step107EntryFvFresh
    s2Step107EntryFv_distinct s2Step107EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step107EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step107EntryFvRow.payload++s2Step107EntryFvFresh) s2Step107EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step107EntryGBefore : Arena := s2Step107EntryFBefore

private theorem s2Step107EntryG_Incoming : rowsOwned s2Step107EntryGBefore [s2Step107EntryGRow,s2Step107EntryFvRow,s2Step107EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107EntryFRow,s2Step107EntryGRow,s2Step107EntryFvRow,s2Step107EntryGvRow] 1 s2Step107EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107EntryG_Outgoing : rowsOwned s2Step107EntryGvAfter [s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut] :=
  hmrRows_owned_drop s2Step107EntryGvAfter [s2Step107EntryFOut,s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut] 1 s2Step107EntryBank_outgoingOwned

private theorem s2Step107EntryG_distinct : (s2Step107EntryGRow.sign::s2Step107EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107EntryG_owned : (s2Step107EntryGRow.sign::s2Step107EntryGRow.payload).toFinset⊆s2Step107EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EntryG_reserved : s2Step107EntryGBefore.reserve s2Step107EntryGFresh.toFinset=some s2Step107EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step107EntryGFresh,arenaWires]
  · norm_num [s2Step107EntryGBefore,s2Step107EntryFBefore,s2Step107EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step107EntryGAfter,s2Step107EntryGBefore,s2Step107EntryFBefore,s2Step107EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step107EntryG_checked : planRowResizeLog s2Step107EntryGBefore s2Step107EntryGRow 216 s2Step107EntryGFresh=
    some (s2Step107EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 794],769⟩,growRow 769 s2Step107EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step107EntryGBefore s2Step107EntryGAfter s2Step107EntryGRow 216 s2Step107EntryGFresh
    s2Step107EntryG_distinct s2Step107EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step107EntryG_reserved
  have rowEq : WindowRow.mk (s2Step107EntryGRow.payload++s2Step107EntryGFresh) s2Step107EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step107EntryGvBefore : Arena := s2Step107EntryGAfter

private theorem s2Step107EntryGv_Incoming : rowsOwned s2Step107EntryGvBefore [s2Step107EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107EntryFRow,s2Step107EntryGRow,s2Step107EntryFvRow,s2Step107EntryGvRow] 3 s2Step107EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107EntryGv_Outgoing : rowsOwned s2Step107EntryGvAfter [s2Step107EntryGvOut] :=
  hmrRows_owned_drop s2Step107EntryGvAfter [s2Step107EntryFOut,s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut] 3 s2Step107EntryBank_outgoingOwned

private theorem s2Step107EntryGv_distinct : (s2Step107EntryGvRow.sign::s2Step107EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107EntryGv_owned : (s2Step107EntryGvRow.sign::s2Step107EntryGvRow.payload).toFinset⊆s2Step107EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107EntryGv_reserved : s2Step107EntryGvBefore.reserve s2Step107EntryGvFresh.toFinset=some s2Step107EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step107EntryGvFresh,arenaWires]
  · norm_num [s2Step107EntryGvBefore,s2Step107EntryGAfter,s2Step107EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step107EntryGvAfter,s2Step107EntryGvBefore,s2Step107EntryGAfter,s2Step107EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step107EntryGv_checked : planRowResizeLog s2Step107EntryGvBefore s2Step107EntryGvRow 67 s2Step107EntryGvFresh=
    some (s2Step107EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩,growRow 771 s2Step107EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step107EntryGvBefore s2Step107EntryGvAfter s2Step107EntryGvRow 67 s2Step107EntryGvFresh
    s2Step107EntryGv_distinct s2Step107EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step107EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step107EntryGvRow.payload++s2Step107EntryGvFresh) s2Step107EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step107EntryBank_rows : planWindowRowsLog s2Step107EntryFBefore [(s2Step107EntryFRow,216),(s2Step107EntryGRow,216),(s2Step107EntryFvRow,67),(s2Step107EntryGvRow,67)] [s2Step107EntryFFresh,s2Step107EntryGFresh,s2Step107EntryFvFresh,s2Step107EntryGvFresh]=
    some (s2Step107EntryGvAfter,[s2Step107EntryFOut,s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut],(growRow 768 s2Step107EntryFFresh ++ (growRow 769 s2Step107EntryGFresh ++ (growRow 770 s2Step107EntryFvFresh ++ (growRow 771 s2Step107EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step107EntryGvAfter [] []=some (s2Step107EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step107EntryGvBefore s2Step107EntryGvAfter s2Step107EntryGvAfter
    s2Step107EntryGvRow s2Step107EntryGvOut 67 s2Step107EntryGvFresh [] [] []
    (growRow 771 s2Step107EntryGvFresh) ([]) s2Step107EntryGv_Incoming s2Step107EntryGv_checked h4 s2Step107EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step107EntryFvBefore s2Step107EntryFvAfter s2Step107EntryGvAfter
    s2Step107EntryFvRow s2Step107EntryFvOut 67 s2Step107EntryFvFresh [(s2Step107EntryGvRow,67)] [s2Step107EntryGvFresh] [s2Step107EntryGvOut]
    (growRow 770 s2Step107EntryFvFresh) ((growRow 771 s2Step107EntryGvFresh ++ [])) s2Step107EntryFv_Incoming s2Step107EntryFv_checked h3 s2Step107EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step107EntryGBefore s2Step107EntryGAfter s2Step107EntryGvAfter
    s2Step107EntryGRow s2Step107EntryGOut 216 s2Step107EntryGFresh [(s2Step107EntryFvRow,67),(s2Step107EntryGvRow,67)] [s2Step107EntryFvFresh,s2Step107EntryGvFresh] [s2Step107EntryFvOut,s2Step107EntryGvOut]
    (growRow 769 s2Step107EntryGFresh) ((growRow 770 s2Step107EntryFvFresh ++ (growRow 771 s2Step107EntryGvFresh ++ []))) s2Step107EntryG_Incoming s2Step107EntryG_checked h2 s2Step107EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step107EntryFBefore s2Step107EntryFAfter s2Step107EntryGvAfter
    s2Step107EntryFRow s2Step107EntryFOut 216 s2Step107EntryFFresh [(s2Step107EntryGRow,216),(s2Step107EntryFvRow,67),(s2Step107EntryGvRow,67)] [s2Step107EntryGFresh,s2Step107EntryFvFresh,s2Step107EntryGvFresh] [s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut]
    (growRow 768 s2Step107EntryFFresh) ((growRow 769 s2Step107EntryGFresh ++ (growRow 770 s2Step107EntryFvFresh ++ (growRow 771 s2Step107EntryGvFresh ++ [])))) s2Step107EntryF_Incoming s2Step107EntryF_checked h1 s2Step107EntryF_Outgoing
  exact h0

private theorem s2Step107EntryBank_checked : compileHmrBankResizeLog .entry s2Step107EntryFBefore ⟨s2Step107EntryFRow,s2Step107EntryGRow,s2Step107EntryFvRow,s2Step107EntryGvRow⟩ ⟨216,216,67,67⟩ [s2Step107EntryFFresh,s2Step107EntryGFresh,s2Step107EntryFvFresh,s2Step107EntryGvFresh]=
    some (s2Step107EntryGvAfter,⟨s2Step107EntryFOut,s2Step107EntryGOut,s2Step107EntryFvOut,s2Step107EntryGvOut⟩,(growRow 768 s2Step107EntryFFresh ++ (growRow 769 s2Step107EntryGFresh ++ (growRow 770 s2Step107EntryFvFresh ++ (growRow 771 s2Step107EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step107EntryBank_rows]
  rfl

private def s2Step107ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<727) ∨ (728≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107ExitFBefore : Arena := s2Step107ExitGAfter

private def s2Step107ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 785],768⟩

private def s2Step107ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 809],770⟩

private def s2Step107ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 794, 846],769⟩

private def s2Step107ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 805],771⟩

private theorem s2Step107ExitBank_incomingDistinct : ([s2Step107ExitGRow,s2Step107ExitFRow,s2Step107ExitFvRow,s2Step107ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107ExitF_Incoming : rowsOwned s2Step107ExitFBefore [s2Step107ExitFRow,s2Step107ExitFvRow,s2Step107ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107ExitGRow,s2Step107ExitFRow,s2Step107ExitFvRow,s2Step107ExitGvRow] 1 s2Step107ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107ExitBank_outgoingOwned : rowsOwned s2Step107ExitGvAfter [s2Step107ExitGOut,s2Step107ExitFOut,s2Step107ExitFvOut,s2Step107ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step107ExitGvAfter (fun q => (0≤q ∧ q<727) ∨ (728≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107ExitF_Outgoing : rowsOwned s2Step107ExitGvAfter [s2Step107ExitFOut,s2Step107ExitFvOut,s2Step107ExitGvOut] :=
  hmrRows_owned_drop s2Step107ExitGvAfter [s2Step107ExitGOut,s2Step107ExitFOut,s2Step107ExitFvOut,s2Step107ExitGvOut] 1 s2Step107ExitBank_outgoingOwned

private theorem s2Step107ExitF_distinct : (s2Step107ExitFRow.sign::s2Step107ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107ExitF_owned : (s2Step107ExitFRow.sign::s2Step107ExitFRow.payload).toFinset⊆s2Step107ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107ExitF_retired : s2Step107ExitFBefore.retireSet s2Step107ExitFExtra.toFinset=s2Step107ExitFAfter := by
  unfold Arena.retireSet s2Step107ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step107ExitFBefore,s2Step107ExitGAfter,s2Step107ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step107ExitF_checked : planRowResizeLog s2Step107ExitFBefore s2Step107ExitFRow 215 []=
    some (s2Step107ExitFAfter,s2Step107ExitFOut,shrinkRow 768 s2Step107ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step107ExitFBefore s2Step107ExitFRow 215 s2Step107ExitF_distinct s2Step107ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step107ExitFRow.payload.take 215) s2Step107ExitFRow.sign=s2Step107ExitFOut := by decide +kernel
  have hi : s2Step107ExitFRow.payload.drop 215=s2Step107ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step107ExitF_retired] at result
  exact result

private def s2Step107ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<727) ∨ (728≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107ExitFvBefore : Arena := s2Step107ExitFAfter

private theorem s2Step107ExitFv_Incoming : rowsOwned s2Step107ExitFvBefore [s2Step107ExitFvRow,s2Step107ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107ExitGRow,s2Step107ExitFRow,s2Step107ExitFvRow,s2Step107ExitGvRow] 2 s2Step107ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107ExitFvBefore (fun q => (0≤q ∧ q<727) ∨ (728≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107ExitFv_Outgoing : rowsOwned s2Step107ExitGvAfter [s2Step107ExitFvOut,s2Step107ExitGvOut] :=
  hmrRows_owned_drop s2Step107ExitGvAfter [s2Step107ExitGOut,s2Step107ExitFOut,s2Step107ExitFvOut,s2Step107ExitGvOut] 2 s2Step107ExitBank_outgoingOwned

private theorem s2Step107ExitFv_distinct : (s2Step107ExitFvRow.sign::s2Step107ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107ExitFv_owned : (s2Step107ExitFvRow.sign::s2Step107ExitFvRow.payload).toFinset⊆s2Step107ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107ExitFvBefore (fun q => (0≤q ∧ q<727) ∨ (728≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107ExitFv_retired : s2Step107ExitFvBefore.retireSet s2Step107ExitFvExtra.toFinset=s2Step107ExitFvAfter := by
  unfold Arena.retireSet s2Step107ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step107ExitFvBefore,s2Step107ExitFAfter,s2Step107ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step107ExitFv_checked : planRowResizeLog s2Step107ExitFvBefore s2Step107ExitFvRow 67 []=
    some (s2Step107ExitFvAfter,s2Step107ExitFvOut,shrinkRow 770 s2Step107ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step107ExitFvBefore s2Step107ExitFvRow 67 s2Step107ExitFv_distinct s2Step107ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step107ExitFvRow.payload.take 67) s2Step107ExitFvRow.sign=s2Step107ExitFvOut := by decide +kernel
  have hi : s2Step107ExitFvRow.payload.drop 67=s2Step107ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step107ExitFv_retired] at result
  exact result

private def s2Step107ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private theorem s2Step107ExitG_Incoming : rowsOwned s2Step107ExitGBefore [s2Step107ExitGRow,s2Step107ExitFRow,s2Step107ExitFvRow,s2Step107ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107ExitGRow,s2Step107ExitFRow,s2Step107ExitFvRow,s2Step107ExitGvRow] 0 s2Step107ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107ExitG_Outgoing : rowsOwned s2Step107ExitGvAfter [s2Step107ExitGOut,s2Step107ExitFOut,s2Step107ExitFvOut,s2Step107ExitGvOut] :=
  hmrRows_owned_drop s2Step107ExitGvAfter [s2Step107ExitGOut,s2Step107ExitFOut,s2Step107ExitFvOut,s2Step107ExitGvOut] 0 s2Step107ExitBank_outgoingOwned

private theorem s2Step107ExitG_distinct : (s2Step107ExitGRow.sign::s2Step107ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107ExitG_owned : (s2Step107ExitGRow.sign::s2Step107ExitGRow.payload).toFinset⊆s2Step107ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107ExitG_retired : s2Step107ExitGBefore.retireSet s2Step107ExitGExtra.toFinset=s2Step107ExitGAfter := by
  unfold Arena.retireSet s2Step107ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step107ExitGBefore,s2Step107ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step107ExitG_checked : planRowResizeLog s2Step107ExitGBefore s2Step107ExitGRow 215 []=
    some (s2Step107ExitGAfter,s2Step107ExitGOut,shrinkRow 769 s2Step107ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step107ExitGBefore s2Step107ExitGRow 215 s2Step107ExitG_distinct s2Step107ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step107ExitGRow.payload.take 215) s2Step107ExitGRow.sign=s2Step107ExitGOut := by decide +kernel
  have hi : s2Step107ExitGRow.payload.drop 215=s2Step107ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step107ExitG_retired] at result
  exact result

private def s2Step107ExitGvBefore : Arena := s2Step107ExitFvAfter

private theorem s2Step107ExitGv_Incoming : rowsOwned s2Step107ExitGvBefore [s2Step107ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107ExitGRow,s2Step107ExitFRow,s2Step107ExitFvRow,s2Step107ExitGvRow] 3 s2Step107ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107ExitGvBefore (fun q => (0≤q ∧ q<727) ∨ (728≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107ExitGv_Outgoing : rowsOwned s2Step107ExitGvAfter [s2Step107ExitGvOut] :=
  hmrRows_owned_drop s2Step107ExitGvAfter [s2Step107ExitGOut,s2Step107ExitFOut,s2Step107ExitFvOut,s2Step107ExitGvOut] 3 s2Step107ExitBank_outgoingOwned

private theorem s2Step107ExitGv_distinct : (s2Step107ExitGvRow.sign::s2Step107ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107ExitGv_owned : (s2Step107ExitGvRow.sign::s2Step107ExitGvRow.payload).toFinset⊆s2Step107ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107ExitGvBefore (fun q => (0≤q ∧ q<727) ∨ (728≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107ExitGv_retired : s2Step107ExitGvBefore.retireSet s2Step107ExitGvExtra.toFinset=s2Step107ExitGvAfter := by
  unfold Arena.retireSet s2Step107ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step107ExitGvBefore,s2Step107ExitFvAfter,s2Step107ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step107ExitGv_checked : planRowResizeLog s2Step107ExitGvBefore s2Step107ExitGvRow 67 []=
    some (s2Step107ExitGvAfter,s2Step107ExitGvOut,shrinkRow 771 s2Step107ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step107ExitGvBefore s2Step107ExitGvRow 67 s2Step107ExitGv_distinct s2Step107ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step107ExitGvRow.payload.take 67) s2Step107ExitGvRow.sign=s2Step107ExitGvOut := by decide +kernel
  have hi : s2Step107ExitGvRow.payload.drop 67=s2Step107ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step107ExitGv_retired] at result
  exact result

private theorem s2Step107ExitBank_rows : planWindowRowsLog s2Step107ExitGBefore [(s2Step107ExitGRow,215),(s2Step107ExitFRow,215),(s2Step107ExitFvRow,67),(s2Step107ExitGvRow,67)] [[],[],[],[]]=
    some (s2Step107ExitGvAfter,[s2Step107ExitGOut,s2Step107ExitFOut,s2Step107ExitFvOut,s2Step107ExitGvOut],(shrinkRow 769 s2Step107ExitGExtra ++ (shrinkRow 768 s2Step107ExitFExtra ++ (shrinkRow 770 s2Step107ExitFvExtra ++ (shrinkRow 771 s2Step107ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step107ExitGvAfter [] []=some (s2Step107ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step107ExitGvBefore s2Step107ExitGvAfter s2Step107ExitGvAfter
    s2Step107ExitGvRow s2Step107ExitGvOut 67 [] [] [] []
    (shrinkRow 771 s2Step107ExitGvExtra) ([]) s2Step107ExitGv_Incoming s2Step107ExitGv_checked h4 s2Step107ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step107ExitFvBefore s2Step107ExitFvAfter s2Step107ExitGvAfter
    s2Step107ExitFvRow s2Step107ExitFvOut 67 [] [(s2Step107ExitGvRow,67)] [[]] [s2Step107ExitGvOut]
    (shrinkRow 770 s2Step107ExitFvExtra) ((shrinkRow 771 s2Step107ExitGvExtra ++ [])) s2Step107ExitFv_Incoming s2Step107ExitFv_checked h3 s2Step107ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step107ExitFBefore s2Step107ExitFAfter s2Step107ExitGvAfter
    s2Step107ExitFRow s2Step107ExitFOut 215 [] [(s2Step107ExitFvRow,67),(s2Step107ExitGvRow,67)] [[],[]] [s2Step107ExitFvOut,s2Step107ExitGvOut]
    (shrinkRow 768 s2Step107ExitFExtra) ((shrinkRow 770 s2Step107ExitFvExtra ++ (shrinkRow 771 s2Step107ExitGvExtra ++ []))) s2Step107ExitF_Incoming s2Step107ExitF_checked h2 s2Step107ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step107ExitGBefore s2Step107ExitGAfter s2Step107ExitGvAfter
    s2Step107ExitGRow s2Step107ExitGOut 215 [] [(s2Step107ExitFRow,215),(s2Step107ExitFvRow,67),(s2Step107ExitGvRow,67)] [[],[],[]] [s2Step107ExitFOut,s2Step107ExitFvOut,s2Step107ExitGvOut]
    (shrinkRow 769 s2Step107ExitGExtra) ((shrinkRow 768 s2Step107ExitFExtra ++ (shrinkRow 770 s2Step107ExitFvExtra ++ (shrinkRow 771 s2Step107ExitGvExtra ++ [])))) s2Step107ExitG_Incoming s2Step107ExitG_checked h1 s2Step107ExitG_Outgoing
  exact h0

private theorem s2Step107ExitBank_checked : compileHmrBankResizeLog .exit s2Step107ExitGBefore ⟨s2Step107ExitFRow,s2Step107ExitGRow,s2Step107ExitFvRow,s2Step107ExitGvRow⟩ ⟨215,215,67,67⟩ [[],[],[],[]]=
    some (s2Step107ExitGvAfter,⟨s2Step107ExitFOut,s2Step107ExitGOut,s2Step107ExitFvOut,s2Step107ExitGvOut⟩,(shrinkRow 769 s2Step107ExitGExtra ++ (shrinkRow 768 s2Step107ExitFExtra ++ (shrinkRow 770 s2Step107ExitFvExtra ++ (shrinkRow 771 s2Step107ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step107ExitBank_rows]
  rfl

private theorem s2Step107Add0_apart : Disjoint s2Step107Add0Arena.live s2Step107Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step107Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107Add0_card : s2Step107Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step107Add0_borrowed : s2Step107Add0Arena.checkBorrow (hmrHybridCount s2Step107Add0Arena s2Step107Add0B.length) s2Step107Add0Work=some s2Step107Add0During := by
  have len : s2Step107Add0Work.length=hmrHybridCount s2Step107Add0Arena s2Step107Add0B.length := by
    rw [hmrHybridCount,s2Step107Add0_card]
    decide +kernel
  have nd : s2Step107Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step107Add0Arena s2Step107Add0During s2Step107Add0Work.toFinset s2Step107Add0_bounded s2Step107Add0_apart rfl

private theorem s2Step107Add0_distinct : (781::799::849::(s2Step107Add0A++s2Step107Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107Add0_owned : (781::799::849::(s2Step107Add0A++s2Step107Add0B)).toFinset⊆s2Step107Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step107Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107Add0_checked : compileHmrHybridCinLog s2Step107Add0Arena 799 781 849 s2Step107Add0A s2Step107Add0B s2Step107Add0Work=some s2Step107Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step107Add0Arena s2Step107Add0During 799 781 849 s2Step107Add0A s2Step107Add0B s2Step107Add0Work
    (by decide +kernel) (by decide +kernel) s2Step107Add0_distinct
    (fun q hq => s2Step107Add0_owned (List.mem_toFinset.mpr hq)) s2Step107Add0_borrowed

private theorem s2Step107Add1_apart : Disjoint s2Step107Add1Arena.live s2Step107Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step107Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107Add1_card : s2Step107Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step107Add1_borrowed : s2Step107Add1Arena.checkBorrow (hmrHybridCount s2Step107Add1Arena s2Step107Add1B.length) s2Step107Add1Work=some s2Step107Add1During := by
  have len : s2Step107Add1Work.length=hmrHybridCount s2Step107Add1Arena s2Step107Add1B.length := by
    rw [hmrHybridCount,s2Step107Add1_card]
    decide +kernel
  have nd : s2Step107Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step107Add1Arena s2Step107Add1During s2Step107Add1Work.toFinset s2Step107Add1_bounded s2Step107Add1_apart rfl

private theorem s2Step107Add1_distinct : (781::799::849::(s2Step107Add1A++s2Step107Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107Add1_owned : (781::799::849::(s2Step107Add1A++s2Step107Add1B)).toFinset⊆s2Step107Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step107Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107Add1_checked : compileHmrHybridCinLog s2Step107Add1Arena 799 781 849 s2Step107Add1A s2Step107Add1B s2Step107Add1Work=some s2Step107Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step107Add1Arena s2Step107Add1During 799 781 849 s2Step107Add1A s2Step107Add1B s2Step107Add1Work
    (by decide +kernel) (by decide +kernel) s2Step107Add1_distinct
    (fun q hq => s2Step107Add1_owned (List.mem_toFinset.mpr hq)) s2Step107Add1_borrowed

private theorem s2Step107F4_apart : Disjoint (s2Step107Add0A++s2Step107Add0B).toFinset (s2Step107Add1A++s2Step107Add1B).toFinset := by
  have nd : ((s2Step107Add0A++s2Step107Add0B)++(s2Step107Add1A++s2Step107Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step107F4_carry : s2Step107F4FlagArena.checkBorrow 1 [849]=some s2Step107Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step107F4FlagArena,s2Step107HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step107F4FlagArena,s2Step107HeadFvAfter,s2Step107Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step107F4_distinct : (787::799::781::849::((s2Step107Add0A++s2Step107Add1A)++(s2Step107Add0B++s2Step107Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107F4_flag : s2Step107HeadFvAfter.checkBorrow 1 [781]=some s2Step107F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step107HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step107F4_owned : (787::799::((s2Step107Add0A++s2Step107Add1A)++(s2Step107Add0B++s2Step107Add1B))).toFinset⊆s2Step107HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step107HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107F4_checked : compileHmrHybridF4Log s2Step107HeadFvAfter 787 799 s2Step107Add0A s2Step107Add0B s2Step107Add1A s2Step107Add1B [781] [849] s2Step107Add0Work s2Step107Add1Work=some s2Step107F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step107HeadFvAfter s2Step107F4FlagArena s2Step107Add0Arena s2Step107Add0During s2Step107Add1During 787 799
    s2Step107Add0A s2Step107Add0B s2Step107Add1A s2Step107Add1B [781] [849] s2Step107Add0Work s2Step107Add1Work
    (fun q hq => s2Step107F4_owned (List.mem_toFinset.mpr hq)) s2Step107F4_flag s2Step107F4_carry
    s2Step107F4_distinct s2Step107F4_apart s2Step107Add0_checked s2Step107Add1_checked

private theorem s2Step107Front_branch : s2Step107FrontSigmaArena.checkBorrow 1 [799]=some s2Step107HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step107FrontSigmaArena,s2Step107EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step107FrontSigmaArena,s2Step107EntryGvAfter,s2Step107HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step107Front_entry : HmrFrontEntryValid s2Step107EntryFBefore s2Step107FrontBank 216 67 ⟨215,215,67,67⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step107FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step107EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step107EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step107FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step107Front_sigma : s2Step107EntryGvAfter.checkBorrow 1 [787]=some s2Step107FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step107EntryGvAfter,arenaWires]
  · rfl

private def s2Step107HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107HeadFBefore : Arena := s2Step107HeadGAfter

private def s2Step107HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩

private def s2Step107HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩

private def s2Step107HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 794],769⟩

private def s2Step107HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩

private theorem s2Step107HeadBank_incomingDistinct : ([s2Step107HeadGRow,s2Step107HeadFRow,s2Step107HeadGvRow,s2Step107HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107HeadF_Incoming : rowsOwned s2Step107HeadFBefore [s2Step107HeadFRow,s2Step107HeadGvRow,s2Step107HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107HeadGRow,s2Step107HeadFRow,s2Step107HeadGvRow,s2Step107HeadFvRow] 1 s2Step107HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107HeadBank_outgoingOwned : rowsOwned s2Step107HeadFvAfter [s2Step107HeadGOut,s2Step107HeadFOut,s2Step107HeadGvOut,s2Step107HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step107HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107HeadF_Outgoing : rowsOwned s2Step107HeadFvAfter [s2Step107HeadFOut,s2Step107HeadGvOut,s2Step107HeadFvOut] :=
  hmrRows_owned_drop s2Step107HeadFvAfter [s2Step107HeadGOut,s2Step107HeadFOut,s2Step107HeadGvOut,s2Step107HeadFvOut] 1 s2Step107HeadBank_outgoingOwned

private theorem s2Step107HeadF_distinct : (s2Step107HeadFRow.sign::s2Step107HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107HeadF_owned : (s2Step107HeadFRow.sign::s2Step107HeadFRow.payload).toFinset⊆s2Step107HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107HeadF_reserved : s2Step107HeadFBefore.reserve s2Step107HeadFFresh.toFinset=some s2Step107HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step107HeadFFresh,arenaWires]
  · norm_num [s2Step107HeadFBefore,s2Step107HeadGAfter,s2Step107HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step107HeadFAfter,s2Step107HeadFBefore,s2Step107HeadGAfter,s2Step107HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step107HeadF_checked : planRowResizeLog s2Step107HeadFBefore s2Step107HeadFRow 217 s2Step107HeadFFresh=
    some (s2Step107HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 785],768⟩,growRow 768 s2Step107HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step107HeadFBefore s2Step107HeadFAfter s2Step107HeadFRow 217 s2Step107HeadFFresh
    s2Step107HeadF_distinct s2Step107HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step107HeadF_reserved
  have rowEq : WindowRow.mk (s2Step107HeadFRow.payload++s2Step107HeadFFresh) s2Step107HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step107HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step107HeadFvBefore : Arena := s2Step107HeadGvAfter

private theorem s2Step107HeadFv_Incoming : rowsOwned s2Step107HeadFvBefore [s2Step107HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107HeadGRow,s2Step107HeadFRow,s2Step107HeadGvRow,s2Step107HeadFvRow] 3 s2Step107HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107HeadFv_Outgoing : rowsOwned s2Step107HeadFvAfter [s2Step107HeadFvOut] :=
  hmrRows_owned_drop s2Step107HeadFvAfter [s2Step107HeadGOut,s2Step107HeadFOut,s2Step107HeadGvOut,s2Step107HeadFvOut] 3 s2Step107HeadBank_outgoingOwned

private theorem s2Step107HeadFv_distinct : (s2Step107HeadFvRow.sign::s2Step107HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107HeadFv_owned : (s2Step107HeadFvRow.sign::s2Step107HeadFvRow.payload).toFinset⊆s2Step107HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107HeadFv_reserved : s2Step107HeadFvBefore.reserve s2Step107HeadFvFresh.toFinset=some s2Step107HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step107HeadFvFresh,arenaWires]
  · norm_num [s2Step107HeadFvBefore,s2Step107HeadGvAfter,s2Step107HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step107HeadFvAfter,s2Step107HeadFvBefore,s2Step107HeadGvAfter,s2Step107HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step107HeadFv_checked : planRowResizeLog s2Step107HeadFvBefore s2Step107HeadFvRow 68 s2Step107HeadFvFresh=
    some (s2Step107HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 809],770⟩,growRow 770 s2Step107HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step107HeadFvBefore s2Step107HeadFvAfter s2Step107HeadFvRow 68 s2Step107HeadFvFresh
    s2Step107HeadFv_distinct s2Step107HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step107HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step107HeadFvRow.payload++s2Step107HeadFvFresh) s2Step107HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step107HeadG_Incoming : rowsOwned s2Step107HeadGBefore [s2Step107HeadGRow,s2Step107HeadFRow,s2Step107HeadGvRow,s2Step107HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107HeadGRow,s2Step107HeadFRow,s2Step107HeadGvRow,s2Step107HeadFvRow] 0 s2Step107HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107HeadG_Outgoing : rowsOwned s2Step107HeadFvAfter [s2Step107HeadGOut,s2Step107HeadFOut,s2Step107HeadGvOut,s2Step107HeadFvOut] :=
  hmrRows_owned_drop s2Step107HeadFvAfter [s2Step107HeadGOut,s2Step107HeadFOut,s2Step107HeadGvOut,s2Step107HeadFvOut] 0 s2Step107HeadBank_outgoingOwned

private theorem s2Step107HeadG_distinct : (s2Step107HeadGRow.sign::s2Step107HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107HeadG_owned : (s2Step107HeadGRow.sign::s2Step107HeadGRow.payload).toFinset⊆s2Step107HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107HeadG_reserved : s2Step107HeadGBefore.reserve s2Step107HeadGFresh.toFinset=some s2Step107HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step107HeadGFresh,arenaWires]
  · norm_num [s2Step107HeadGBefore,s2Step107HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step107HeadGAfter,s2Step107HeadGBefore,s2Step107HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step107HeadG_checked : planRowResizeLog s2Step107HeadGBefore s2Step107HeadGRow 217 s2Step107HeadGFresh=
    some (s2Step107HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 794, 846],769⟩,growRow 769 s2Step107HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step107HeadGBefore s2Step107HeadGAfter s2Step107HeadGRow 217 s2Step107HeadGFresh
    s2Step107HeadG_distinct s2Step107HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step107HeadG_reserved
  have rowEq : WindowRow.mk (s2Step107HeadGRow.payload++s2Step107HeadGFresh) s2Step107HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 794, 846],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step107HeadGvBefore : Arena := s2Step107HeadFAfter

private theorem s2Step107HeadGv_Incoming : rowsOwned s2Step107HeadGvBefore [s2Step107HeadGvRow,s2Step107HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step107HeadGRow,s2Step107HeadFRow,s2Step107HeadGvRow,s2Step107HeadFvRow] 2 s2Step107HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step107HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step107HeadGv_Outgoing : rowsOwned s2Step107HeadFvAfter [s2Step107HeadGvOut,s2Step107HeadFvOut] :=
  hmrRows_owned_drop s2Step107HeadFvAfter [s2Step107HeadGOut,s2Step107HeadFOut,s2Step107HeadGvOut,s2Step107HeadFvOut] 2 s2Step107HeadBank_outgoingOwned

private theorem s2Step107HeadGv_distinct : (s2Step107HeadGvRow.sign::s2Step107HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step107HeadGv_owned : (s2Step107HeadGvRow.sign::s2Step107HeadGvRow.payload).toFinset⊆s2Step107HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step107HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step107HeadGv_reserved : s2Step107HeadGvBefore.reserve s2Step107HeadGvFresh.toFinset=some s2Step107HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step107HeadGvFresh,arenaWires]
  · norm_num [s2Step107HeadGvBefore,s2Step107HeadFAfter,s2Step107HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step107HeadGvAfter,s2Step107HeadGvBefore,s2Step107HeadFAfter,s2Step107HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step107HeadGv_checked : planRowResizeLog s2Step107HeadGvBefore s2Step107HeadGvRow 68 s2Step107HeadGvFresh=
    some (s2Step107HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 805],771⟩,growRow 771 s2Step107HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step107HeadGvBefore s2Step107HeadGvAfter s2Step107HeadGvRow 68 s2Step107HeadGvFresh
    s2Step107HeadGv_distinct s2Step107HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step107HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step107HeadGvRow.payload++s2Step107HeadGvFresh) s2Step107HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step107HeadBank_rows : planWindowRowsLog s2Step107HeadGBefore [(s2Step107HeadGRow,217),(s2Step107HeadFRow,217),(s2Step107HeadGvRow,68),(s2Step107HeadFvRow,68)] [s2Step107HeadGFresh,s2Step107HeadFFresh,s2Step107HeadGvFresh,s2Step107HeadFvFresh]=
    some (s2Step107HeadFvAfter,[s2Step107HeadGOut,s2Step107HeadFOut,s2Step107HeadGvOut,s2Step107HeadFvOut],(growRow 769 s2Step107HeadGFresh ++ (growRow 768 s2Step107HeadFFresh ++ (growRow 771 s2Step107HeadGvFresh ++ (growRow 770 s2Step107HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step107HeadFvAfter [] []=some (s2Step107HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step107HeadFvBefore s2Step107HeadFvAfter s2Step107HeadFvAfter
    s2Step107HeadFvRow s2Step107HeadFvOut 68 s2Step107HeadFvFresh [] [] []
    (growRow 770 s2Step107HeadFvFresh) ([]) s2Step107HeadFv_Incoming s2Step107HeadFv_checked h4 s2Step107HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step107HeadGvBefore s2Step107HeadGvAfter s2Step107HeadFvAfter
    s2Step107HeadGvRow s2Step107HeadGvOut 68 s2Step107HeadGvFresh [(s2Step107HeadFvRow,68)] [s2Step107HeadFvFresh] [s2Step107HeadFvOut]
    (growRow 771 s2Step107HeadGvFresh) ((growRow 770 s2Step107HeadFvFresh ++ [])) s2Step107HeadGv_Incoming s2Step107HeadGv_checked h3 s2Step107HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step107HeadFBefore s2Step107HeadFAfter s2Step107HeadFvAfter
    s2Step107HeadFRow s2Step107HeadFOut 217 s2Step107HeadFFresh [(s2Step107HeadGvRow,68),(s2Step107HeadFvRow,68)] [s2Step107HeadGvFresh,s2Step107HeadFvFresh] [s2Step107HeadGvOut,s2Step107HeadFvOut]
    (growRow 768 s2Step107HeadFFresh) ((growRow 771 s2Step107HeadGvFresh ++ (growRow 770 s2Step107HeadFvFresh ++ []))) s2Step107HeadF_Incoming s2Step107HeadF_checked h2 s2Step107HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step107HeadGBefore s2Step107HeadGAfter s2Step107HeadFvAfter
    s2Step107HeadGRow s2Step107HeadGOut 217 s2Step107HeadGFresh [(s2Step107HeadFRow,217),(s2Step107HeadGvRow,68),(s2Step107HeadFvRow,68)] [s2Step107HeadFFresh,s2Step107HeadGvFresh,s2Step107HeadFvFresh] [s2Step107HeadFOut,s2Step107HeadGvOut,s2Step107HeadFvOut]
    (growRow 769 s2Step107HeadGFresh) ((growRow 768 s2Step107HeadFFresh ++ (growRow 771 s2Step107HeadGvFresh ++ (growRow 770 s2Step107HeadFvFresh ++ [])))) s2Step107HeadG_Incoming s2Step107HeadG_checked h1 s2Step107HeadG_Outgoing
  exact h0

private theorem s2Step107HeadBank_checked : compileHmrBankResizeLog .headroom s2Step107HeadGBefore ⟨s2Step107HeadFRow,s2Step107HeadGRow,s2Step107HeadFvRow,s2Step107HeadGvRow⟩ ⟨217,217,68,68⟩ [s2Step107HeadGFresh,s2Step107HeadFFresh,s2Step107HeadGvFresh,s2Step107HeadFvFresh]=
    some (s2Step107HeadFvAfter,⟨s2Step107HeadFOut,s2Step107HeadGOut,s2Step107HeadFvOut,s2Step107HeadGvOut⟩,(growRow 769 s2Step107HeadGFresh ++ (growRow 768 s2Step107HeadFFresh ++ (growRow 771 s2Step107HeadGvFresh ++ (growRow 770 s2Step107HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step107HeadBank_rows]
  rfl

private theorem s2Step107Front_checked : compileHmrSourceFrontLog s2Step107EntryFBefore s2Step107FrontBank 216 67 ⟨215,215,67,67⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step107FrontLog=some s2Step107FrontPlan := by
  have pairEq : s2Step107FrontPair=⟨s2Step107HeadFRow,s2Step107HeadGRow,s2Step107HeadFvRow,s2Step107HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step107FrontHead=⟨s2Step107ExitFRow,s2Step107ExitGRow,s2Step107ExitFvRow,s2Step107ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step107Add0A=s2Step107FrontHead.f.wires := by decide +kernel
  have gEq : s2Step107Add0B=s2Step107FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step107Add1A=s2Step107FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step107Add1B=s2Step107FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step107EntryFBefore s2Step107FrontBank 216 67 ⟨215,215,67,67⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step107FrontLog s2Step107FrontPlan
  · exact s2Step107Front_entry
  · exact s2Step107EntryBank_checked
  · exact s2Step107Front_sigma
  · rfl
  · exact s2Step107Front_branch
  · rfl
  · simpa only [s2Step107FrontPlan,pairEq] using s2Step107HeadBank_checked
  · simpa only [s2Step107FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step107F4_checked
  · exact s2Step107Counter_checked
  · rfl
  · simpa only [s2Step107FrontPlan,headEq] using s2Step107ExitBank_checked

private theorem s2Step107Complete_explicit_checked : compileHmrEarlyStepLog s2Step107EntryFBefore s2Step107FrontBank 216 67 ⟨215,215,67,67⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step107CompleteLog=some s2Step107CompletePlan := by
  let Q := s2Step107EarlyControlPlan
  have hq := s2Step107EarlyControl_plan_checked
  have fv1 : s2Step107CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step107CompleteOut.fv.payload[2]?.getD s2Step107CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step107CompleteOut.fv.payload[3]?.getD s2Step107CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step107CompleteOut.fv.payload[4]?.getD s2Step107CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step107EntryFBefore s2Step107EarlyControlArena s2Step107FrontBank 216 67 ⟨215,215,67,67⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step107CompleteLog s2Step107FrontPlan Q
    s2Step107Front_checked s2Step107Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step107Complete_owned s2Step107Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step107EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 787 s2Step107CompleteOut.fv.second (s2Step107CompleteOut.fv.payload[2]?.getD s2Step107CompleteOut.fv.sign) (s2Step107CompleteOut.fv.payload[3]?.getD s2Step107CompleteOut.fv.sign) (s2Step107CompleteOut.fv.payload[4]?.getD s2Step107CompleteOut.fv.sign) 799 35 s2Step107EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep107Arena : Arena := s2Step107EntryFBefore
def s2PrivateStep107Bank : WindowBank := s2Step107FrontBank
def s2PrivateStep107Spec : HmrSourceWalkStepLog := ⟨216,67,⟨215,215,67,67⟩,35,.early s2Step107CompleteLog⟩
def s2PrivateStep107Plan : HmrSourceStepPlan := .early s2Step107CompletePlan
theorem s2PrivateStep107_source : s2PrivateStep107Spec=s2ObservedLogs96[11] := rfl
theorem s2PrivateStep107_checked : compileHmrSourceStepLog s2PrivateStep107Arena s2PrivateStep107Bank
    s2PrivateStep107Spec.fgWidth s2PrivateStep107Spec.vWidth s2PrivateStep107Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]
    6 498 107 s2PrivateStep107Spec.need none s2PrivateStep107Spec.log=some s2PrivateStep107Plan := by
  change compileHmrSourceStepLog s2Step107EntryFBefore s2Step107FrontBank 216 67 ⟨215,215,67,67⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 6 498 107 35 none (.early s2Step107CompleteLog)=some (.early s2Step107CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 107<498)]
  rw [s2Step107Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
