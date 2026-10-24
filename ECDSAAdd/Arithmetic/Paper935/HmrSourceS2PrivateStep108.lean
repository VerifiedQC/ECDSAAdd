import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep106
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

private def s2Step108CompleteMoves : List (Wire × Wire) := [(808,214),(815,726)]

private def s2Step108EarlyControlLog : HmrEarlyControlLog := ⟨[815, 808, 809, 805, 810],[794],[846],[781, 849, 806, 802, 867, 877],[]⟩

private def s2Step108FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[810], [805], [809], [785]],[[], [], [], []]⟩,[799],[787],[794],[846],[781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[794, 846, 781, 849]⟩

private def s2Step108CompleteLog : HmrEarlyStepLog := ⟨s2Step108FrontLog,s2Step108CompleteMoves,s2Step108EarlyControlLog⟩

private def s2Step108ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩

private def s2Step108ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785],770⟩

private def s2Step108ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],769⟩

private def s2Step108ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩

private def s2Step108FrontOut : WindowBank := ⟨s2Step108ExitFOut,s2Step108ExitGOut,s2Step108ExitFvOut,s2Step108ExitGvOut⟩

private def s2Step108CompleteOut : WindowBank := s2Step108FrontOut.repacked s2Step108CompleteMoves

private def s2Step108EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step108EarlyControlPositiveArena,[794],s2Step108EarlyControlEqualityArena,[846],⟨⟨799,false⟩,[⟨⟨794,false⟩,846⟩]⟩⟩

private def s2Step108EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,815⟩,⟨⟨774,false⟩,808⟩,⟨⟨775,false⟩,809⟩,⟨⟨776,false⟩,805⟩,⟨⟨777,false⟩,810⟩]⟩

private def s2Step108EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step108EarlyControlZeroArena,s2Step108EarlyControlZeroPlan,s2Step108EarlyControlClassPlan,s2Step108EarlyControlFlagArena,s2Step108EarlyControlFittedArena,s2Step108EarlyControlHistoryArena,s2Step108EarlyControlSigmaArena,s2Step108EarlyControlOutputArena,s2Step108EarlyControlLog⟩

private def s2Step108CounterWork : List Wire := [794, 846, 781, 849]

private theorem s2Step108Counter_bounded : s2Step108CounterWork.toFinset⊆arenaWires := by norm_num [s2Step108CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step108HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108CounterDuring : Arena := ⟨s2Step108HeadFvAfter.live∪s2Step108CounterWork.toFinset,Finset.union_subset s2Step108HeadFvAfter.bounded s2Step108Counter_bounded⟩

private def s2Step108EntryFFresh : List Wire := []

private def s2Step108EntryFvFresh : List Wire := []

private def s2Step108EntryGFresh : List Wire := []

private def s2Step108EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108EntryGvAfter : Arena := s2Step108EntryFBefore

private def s2Step108EntryGvFresh : List Wire := []

private def s2Step108ExitFExtra : List Wire := [726, 805]

private def s2Step108ExitGExtra : List Wire := [214, 810]

private def s2Step108ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<214) ∨ (215≤q ∧ q<726) ∨ (727≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108ExitGvExtra : List Wire := [809]

private def s2Step108Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108Add0Work : List Wire := [781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step108Add0_bounded : s2Step108Add0Work.toFinset⊆arenaWires := by
  have h : s2Step108Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step108Add0During : Arena := ⟨s2Step108Add0Arena.live∪s2Step108Add0Work.toFinset,Finset.union_subset s2Step108Add0Arena.bounded s2Step108Add0_bounded⟩

private def s2Step108Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108Add1Work : List Wire := [781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step108Add1_bounded : s2Step108Add1Work.toFinset⊆arenaWires := by
  have h : s2Step108Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step108Add1During : Arena := ⟨s2Step108Add1Arena.live∪s2Step108Add1Work.toFinset,Finset.union_subset s2Step108Add1Arena.bounded s2Step108Add1_bounded⟩

private def s2Step108F4FlagArena : Arena := ⟨s2Step108HeadFvAfter.live∪{794},Finset.union_subset s2Step108HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step108F4Plan : HmrHybridF4Plan := ⟨s2Step108F4FlagArena,[794],s2Step108Add0Arena,[846],s2Step108Add0During,s2Step108Add0Work,s2Step108Add1During,s2Step108Add1Work⟩

private def s2Step108HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 805],768⟩

private def s2Step108HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785],770⟩

private def s2Step108HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 810],769⟩

private def s2Step108HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 809],771⟩

private def s2Step108FrontHead : WindowBank := ⟨s2Step108HeadFOut,s2Step108HeadGOut,s2Step108HeadFvOut,s2Step108HeadGvOut⟩

private def s2Step108EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726],768⟩

private def s2Step108EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩

private def s2Step108EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],769⟩

private def s2Step108EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩

private def s2Step108FrontPair : WindowBank := ⟨s2Step108EntryFOut,s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut⟩

private def s2Step108FrontSigmaArena : Arena := ⟨s2Step108EntryGvAfter.live∪{799},Finset.union_subset s2Step108EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step108HeadFFresh : List Wire := [805]

private def s2Step108HeadFvFresh : List Wire := [785]

private def s2Step108HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108HeadGFresh : List Wire := [810]

private def s2Step108HeadGvFresh : List Wire := [809]

private def s2Step108FrontPlan : HmrSourceFront := ⟨s2Step108EntryGvAfter,s2Step108FrontPair,(growRow 768 s2Step108EntryFFresh ++ (growRow 769 s2Step108EntryGFresh ++ (growRow 770 s2Step108EntryFvFresh ++ (growRow 771 s2Step108EntryGvFresh ++ [])))),s2Step108FrontSigmaArena,[799],s2Step108HeadGBefore,[787],
  s2Step108HeadFvAfter,s2Step108FrontHead,(growRow 769 s2Step108HeadGFresh ++ (growRow 768 s2Step108HeadFFresh ++ (growRow 771 s2Step108HeadGvFresh ++ (growRow 770 s2Step108HeadFvFresh ++ [])))),s2Step108F4Plan,s2Step108CounterDuring,s2Step108CounterWork,s2Step108ExitGvAfter,s2Step108FrontOut,(shrinkRow 769 s2Step108ExitGExtra ++ (shrinkRow 768 s2Step108ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step108ExitGvExtra ++ []))))⟩

private def s2Step108CompletePlan : HmrEarlyStepPlan := ⟨s2Step108FrontPlan,s2Step108EarlyControlArena,s2Step108EarlyControlPlan,s2Step108CompleteMoves⟩

private theorem s2Step108Complete_apart : List.Disjoint (s2Step108CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [799, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] := by
  have nd : ((s2Step108CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[799, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step108Complete_owned : (s2Step108CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step108EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private def s2Step108CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,726),(727,781),(782,794),(795,802),(803,805),(807,808),(811,846),(847,849),(850,867),(868,877),(880,881)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step108CompleteRelocationMove0Borrowed : Arena := ⟨s2Step108ExitGvAfter.live∪{214},Finset.union_subset s2Step108ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step108CompleteRelocationMove1Borrowed : Arena := ⟨s2Step108CompleteRelocationMove0After.live∪{726},Finset.union_subset s2Step108CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step108CompleteRelocation_move0_owned : 808∈s2Step108ExitGvAfter.live := by norm_num [s2Step108ExitGvAfter,arenaWires]

private theorem s2Step108CompleteRelocation_move0_reserve : s2Step108ExitGvAfter.reserve {214}=some s2Step108CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step108ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step108CompleteRelocation_move0_retire : s2Step108CompleteRelocationMove0Borrowed.retireSet {808}=s2Step108CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step108CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step108CompleteRelocationMove0Borrowed,s2Step108ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step108CompleteRelocation_move1_owned : 815∈s2Step108CompleteRelocationMove0After.live := by norm_num [s2Step108CompleteRelocationMove0After,arenaWires]

private theorem s2Step108CompleteRelocation_move1_reserve : s2Step108CompleteRelocationMove0After.reserve {726}=some s2Step108CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step108CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step108CompleteRelocation_move1_retire : s2Step108CompleteRelocationMove1Borrowed.retireSet {815}=s2Step108EarlyControlArena := by
  unfold Arena.retireSet s2Step108EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step108CompleteRelocationMove1Borrowed,s2Step108CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step108CompleteRelocation_checked : s2Step108ExitGvAfter.checkRepack [(808,214),(815,726)]=some s2Step108EarlyControlArena := by
  have tail2 : s2Step108EarlyControlArena.checkRepack []=some s2Step108EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step108CompleteRelocationMove0After s2Step108CompleteRelocationMove1Borrowed s2Step108EarlyControlArena s2Step108EarlyControlArena 815 726 []
    s2Step108CompleteRelocation_move1_owned s2Step108CompleteRelocation_move1_reserve s2Step108CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step108ExitGvAfter s2Step108CompleteRelocationMove0Borrowed s2Step108CompleteRelocationMove0After s2Step108EarlyControlArena 808 214 [(815,726)]
    s2Step108CompleteRelocation_move0_owned s2Step108CompleteRelocation_move0_reserve s2Step108CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step108Complete_repack : s2Step108ExitGvAfter.checkRepack s2Step108CompleteMoves=some s2Step108EarlyControlArena := by
  simpa only [s2Step108CompleteMoves] using s2Step108CompleteRelocation_checked

private theorem s2Step108EarlyControl_branchOwned : ([787] : List Wire).toFinset⊆s2Step108EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_branch : compileHmrBranchRetirement s2Step108EarlyControlSigmaArena 787=some s2Step108EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step108EarlyControl_branchOwned
  · ext q
    simp [s2Step108EarlyControlOutputArena,s2Step108EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step108EarlyControl_classEqualityBorrow : s2Step108EarlyControlPositiveArena.checkBorrow (([799, 794] : List Wire).length-1) s2Step108EarlyControlLog.classWork=some s2Step108EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step108EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step108EarlyControlEqualityArena,s2Step108EarlyControlPositiveArena,s2Step108EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step108EarlyControl_classEqualityOwned : ([799, 794] : List Wire).toFinset⊆s2Step108EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_classEquality : compileHmrEqualityLog s2Step108EarlyControlPositiveArena [799, 794] 0 s2Step108EarlyControlLog.classWork=some (s2Step108EarlyControlEqualityArena,s2Step108EarlyControlLog.classWork,s2Step108EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step108EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step108EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step108EarlyControl_classOwned : ([777, 810, 799] : List Wire).toFinset⊆s2Step108EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_positiveBorrow : s2Step108EarlyControlZeroArena.checkBorrow (1) s2Step108EarlyControlLog.positiveWork=some s2Step108EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step108EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step108EarlyControlPositiveArena,s2Step108EarlyControlZeroArena,s2Step108EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step108EarlyControl_class : compileHmrSourceClassLog s2Step108EarlyControlZeroArena false 777 s2Step108EarlyControlZeroPlan.top 0 799 s2Step108EarlyControlLog.positiveWork s2Step108EarlyControlLog.classWork=some s2Step108EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step108EarlyControlClassPlan s2Step108EarlyControlZeroArena false 777 s2Step108EarlyControlZeroPlan.top 0 799
  constructor
  · decide +kernel
  · exact s2Step108EarlyControl_classOwned
  · exact s2Step108EarlyControl_positiveBorrow
  · exact s2Step108EarlyControl_classEquality

private theorem s2Step108EarlyControl_entryRecordOwned : ([787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step108EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_entrySigmaOwned : ([799, 254] : List Wire).toFinset⊆s2Step108EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_fitBorrow : s2Step108EarlyControlFlagArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step108EarlyControlLog.recordFresh=some s2Step108EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step108EarlyControlFlagArena (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step108EarlyControlFittedArena,s2Step108EarlyControlFlagArena,s2Step108EarlyControlLog,arenaWires]

private theorem s2Step108EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step108EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlFlagArena (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_fit : compileHmrRecordGrowLog s2Step108EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step108EarlyControlLog.recordFresh=some s2Step108EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step108EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step108EarlyControl_fitBorrow

private theorem s2Step108EarlyControl_flagsBorrow : s2Step108EarlyControlEqualityArena.checkBorrow (6) s2Step108EarlyControlLog.flagWork=some s2Step108EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step108EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step108EarlyControlFlagArena,s2Step108EarlyControlEqualityArena,s2Step108EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step108EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step108EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_flags : compileHmrFlagsLog s2Step108EarlyControlClassPlan.equalityArena s2Step108EarlyControlClassPlan.equality.top 253 252 251 s2Step108EarlyControlLog.flagWork=some s2Step108EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step108EarlyControl_flagsOwned⟩
  · exact s2Step108EarlyControl_flagsBorrow

private theorem s2Step108EarlyControl_historyBorrow : s2Step108EarlyControlArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step108EarlyControlLog.recordFresh=some s2Step108EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step108EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step108EarlyControlHistoryArena,s2Step108EarlyControlArena,s2Step108EarlyControlLog,arenaWires]

private theorem s2Step108EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step108EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_history : compileHmrRecordGrowLog s2Step108EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step108EarlyControlLog.recordFresh=some s2Step108EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step108EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step108EarlyControl_historyBorrow

private theorem s2Step108EarlyControl_sigmaOwned : ([254, 799] : List Wire).toFinset⊆s2Step108EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_sigmaReleaseOwned : ([799] : List Wire).toFinset⊆s2Step108EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_sigmaRelease : s2Step108EarlyControlHistoryArena.release {799} (fun _ => false)=some s2Step108EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step108EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step108EarlyControlSigmaArena,s2Step108EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step108EarlyControl_sigma : compileHmrSigmaDropLog s2Step108EarlyControlHistoryArena false 0 0 254 799 []=some s2Step108EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step108EarlyControl_sigmaOwned⟩
  · exact s2Step108EarlyControl_sigmaRelease

private theorem s2Step108EarlyControl_zeroBorrow : s2Step108EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step108EarlyControlLog.zeroWork=some s2Step108EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step108EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step108EarlyControlZeroArena,s2Step108EarlyControlArena,s2Step108EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step108EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step108EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step108EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EarlyControl_zero : compileHmrEqualityLog s2Step108EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step108EarlyControlLog.zeroWork=some (s2Step108EarlyControlZeroArena,s2Step108EarlyControlLog.zeroWork,s2Step108EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step108EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step108EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step108EarlyControl_logged : s2Step108EarlyControlPlan.Logged s2Step108EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 799 254 253 252 251 787 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step108EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step108EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step108EarlyControl_zero
  · exact s2Step108EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step108EarlyControl_flags
  · exact s2Step108EarlyControl_fit
  · exact s2Step108EarlyControl_history
  · exact s2Step108EarlyControl_sigma
  · exact s2Step108EarlyControl_branch

private theorem s2Step108EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step108EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 799 254 253 252 251 787 35 s2Step108EarlyControlLog=some s2Step108EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step108EarlyControlPlan s2Step108EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 799 254 253 252 251 787 35 s2Step108EarlyControl_logged

private def s2Step108EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726],768⟩

private def s2Step108EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩

private def s2Step108EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],769⟩

private def s2Step108EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩

private def s2Step108FrontBank : WindowBank := ⟨s2Step108EntryFRow,s2Step108EntryGRow,s2Step108EntryFvRow,s2Step108EntryGvRow⟩

private def s2Step108Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 805, 768]

private def s2Step108Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 810, 769]

private def s2Step108Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 770]

private def s2Step108Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 809, 771]

private theorem s2Step108Counter_apart : Disjoint s2Step108HeadFvAfter.live s2Step108CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step108HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108Counter_borrowed : s2Step108HeadFvAfter.checkBorrow 4 s2Step108CounterWork=some s2Step108CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step108HeadFvAfter s2Step108CounterDuring s2Step108CounterWork.toFinset s2Step108Counter_bounded s2Step108Counter_apart rfl

private theorem s2Step108Counter_owned : (799::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step108HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step108HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108Counter_checked : compileHmrCounterStepLog s2Step108HeadFvAfter true 799 [772, 773, 774, 775, 776, 777] s2Step108CounterWork=some s2Step108CounterDuring := by
  have owned : ∀q∈799::[772, 773, 774, 775, 776, 777],q∈s2Step108HeadFvAfter.live := fun q hq => s2Step108Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step108Counter_borrowed

private def s2Step108EntryFAfter : Arena := s2Step108EntryFBefore

private theorem s2Step108EntryBank_incomingDistinct : ([s2Step108EntryFRow,s2Step108EntryGRow,s2Step108EntryFvRow,s2Step108EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108EntryF_Incoming : rowsOwned s2Step108EntryFBefore [s2Step108EntryFRow,s2Step108EntryGRow,s2Step108EntryFvRow,s2Step108EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108EntryFRow,s2Step108EntryGRow,s2Step108EntryFvRow,s2Step108EntryGvRow] 0 s2Step108EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108EntryBank_outgoingOwned : rowsOwned s2Step108EntryGvAfter [s2Step108EntryFOut,s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step108EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108EntryF_Outgoing : rowsOwned s2Step108EntryGvAfter [s2Step108EntryFOut,s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut] :=
  hmrRows_owned_drop s2Step108EntryGvAfter [s2Step108EntryFOut,s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut] 0 s2Step108EntryBank_outgoingOwned

private theorem s2Step108EntryF_distinct : (s2Step108EntryFRow.sign::s2Step108EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108EntryF_owned : (s2Step108EntryFRow.sign::s2Step108EntryFRow.payload).toFinset⊆s2Step108EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EntryF_reserved : s2Step108EntryFBefore.reserve s2Step108EntryFFresh.toFinset=some s2Step108EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step108EntryFFresh,arenaWires]
  · norm_num [s2Step108EntryFBefore,s2Step108EntryFFresh,arenaWires]
  · simp only [s2Step108EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step108EntryF_checked : planRowResizeLog s2Step108EntryFBefore s2Step108EntryFRow 215 s2Step108EntryFFresh=
    some (s2Step108EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726],768⟩,growRow 768 s2Step108EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step108EntryFBefore s2Step108EntryFAfter s2Step108EntryFRow 215 s2Step108EntryFFresh
    s2Step108EntryF_distinct s2Step108EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step108EntryF_reserved
  have rowEq : WindowRow.mk (s2Step108EntryFRow.payload++s2Step108EntryFFresh) s2Step108EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step108EntryFvAfter : Arena := s2Step108EntryFBefore

private def s2Step108EntryFvBefore : Arena := s2Step108EntryFBefore

private theorem s2Step108EntryFv_Incoming : rowsOwned s2Step108EntryFvBefore [s2Step108EntryFvRow,s2Step108EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108EntryFRow,s2Step108EntryGRow,s2Step108EntryFvRow,s2Step108EntryGvRow] 2 s2Step108EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108EntryFv_Outgoing : rowsOwned s2Step108EntryGvAfter [s2Step108EntryFvOut,s2Step108EntryGvOut] :=
  hmrRows_owned_drop s2Step108EntryGvAfter [s2Step108EntryFOut,s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut] 2 s2Step108EntryBank_outgoingOwned

private theorem s2Step108EntryFv_distinct : (s2Step108EntryFvRow.sign::s2Step108EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108EntryFv_owned : (s2Step108EntryFvRow.sign::s2Step108EntryFvRow.payload).toFinset⊆s2Step108EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EntryFv_reserved : s2Step108EntryFvBefore.reserve s2Step108EntryFvFresh.toFinset=some s2Step108EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step108EntryFvFresh,arenaWires]
  · norm_num [s2Step108EntryFvBefore,s2Step108EntryFBefore,s2Step108EntryFvFresh,arenaWires]
  · simp only [s2Step108EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step108EntryFv_checked : planRowResizeLog s2Step108EntryFvBefore s2Step108EntryFvRow 67 s2Step108EntryFvFresh=
    some (s2Step108EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩,growRow 770 s2Step108EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step108EntryFvBefore s2Step108EntryFvAfter s2Step108EntryFvRow 67 s2Step108EntryFvFresh
    s2Step108EntryFv_distinct s2Step108EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step108EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step108EntryFvRow.payload++s2Step108EntryFvFresh) s2Step108EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step108EntryGAfter : Arena := s2Step108EntryFBefore

private def s2Step108EntryGBefore : Arena := s2Step108EntryFBefore

private theorem s2Step108EntryG_Incoming : rowsOwned s2Step108EntryGBefore [s2Step108EntryGRow,s2Step108EntryFvRow,s2Step108EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108EntryFRow,s2Step108EntryGRow,s2Step108EntryFvRow,s2Step108EntryGvRow] 1 s2Step108EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108EntryG_Outgoing : rowsOwned s2Step108EntryGvAfter [s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut] :=
  hmrRows_owned_drop s2Step108EntryGvAfter [s2Step108EntryFOut,s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut] 1 s2Step108EntryBank_outgoingOwned

private theorem s2Step108EntryG_distinct : (s2Step108EntryGRow.sign::s2Step108EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108EntryG_owned : (s2Step108EntryGRow.sign::s2Step108EntryGRow.payload).toFinset⊆s2Step108EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EntryG_reserved : s2Step108EntryGBefore.reserve s2Step108EntryGFresh.toFinset=some s2Step108EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step108EntryGFresh,arenaWires]
  · norm_num [s2Step108EntryGBefore,s2Step108EntryFBefore,s2Step108EntryGFresh,arenaWires]
  · simp only [s2Step108EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step108EntryG_checked : planRowResizeLog s2Step108EntryGBefore s2Step108EntryGRow 215 s2Step108EntryGFresh=
    some (s2Step108EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],769⟩,growRow 769 s2Step108EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step108EntryGBefore s2Step108EntryGAfter s2Step108EntryGRow 215 s2Step108EntryGFresh
    s2Step108EntryG_distinct s2Step108EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step108EntryG_reserved
  have rowEq : WindowRow.mk (s2Step108EntryGRow.payload++s2Step108EntryGFresh) s2Step108EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step108EntryGvBefore : Arena := s2Step108EntryFBefore

private theorem s2Step108EntryGv_Incoming : rowsOwned s2Step108EntryGvBefore [s2Step108EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108EntryFRow,s2Step108EntryGRow,s2Step108EntryFvRow,s2Step108EntryGvRow] 3 s2Step108EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108EntryGv_Outgoing : rowsOwned s2Step108EntryGvAfter [s2Step108EntryGvOut] :=
  hmrRows_owned_drop s2Step108EntryGvAfter [s2Step108EntryFOut,s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut] 3 s2Step108EntryBank_outgoingOwned

private theorem s2Step108EntryGv_distinct : (s2Step108EntryGvRow.sign::s2Step108EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108EntryGv_owned : (s2Step108EntryGvRow.sign::s2Step108EntryGvRow.payload).toFinset⊆s2Step108EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108EntryGv_reserved : s2Step108EntryGvBefore.reserve s2Step108EntryGvFresh.toFinset=some s2Step108EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step108EntryGvFresh,arenaWires]
  · norm_num [s2Step108EntryGvBefore,s2Step108EntryFBefore,s2Step108EntryGvFresh,arenaWires]
  · simp only [s2Step108EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step108EntryGv_checked : planRowResizeLog s2Step108EntryGvBefore s2Step108EntryGvRow 67 s2Step108EntryGvFresh=
    some (s2Step108EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩,growRow 771 s2Step108EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step108EntryGvBefore s2Step108EntryGvAfter s2Step108EntryGvRow 67 s2Step108EntryGvFresh
    s2Step108EntryGv_distinct s2Step108EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step108EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step108EntryGvRow.payload++s2Step108EntryGvFresh) s2Step108EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step108EntryBank_rows : planWindowRowsLog s2Step108EntryFBefore [(s2Step108EntryFRow,215),(s2Step108EntryGRow,215),(s2Step108EntryFvRow,67),(s2Step108EntryGvRow,67)] [s2Step108EntryFFresh,s2Step108EntryGFresh,s2Step108EntryFvFresh,s2Step108EntryGvFresh]=
    some (s2Step108EntryGvAfter,[s2Step108EntryFOut,s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut],(growRow 768 s2Step108EntryFFresh ++ (growRow 769 s2Step108EntryGFresh ++ (growRow 770 s2Step108EntryFvFresh ++ (growRow 771 s2Step108EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step108EntryGvAfter [] []=some (s2Step108EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step108EntryGvBefore s2Step108EntryGvAfter s2Step108EntryGvAfter
    s2Step108EntryGvRow s2Step108EntryGvOut 67 s2Step108EntryGvFresh [] [] []
    (growRow 771 s2Step108EntryGvFresh) ([]) s2Step108EntryGv_Incoming s2Step108EntryGv_checked h4 s2Step108EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step108EntryFvBefore s2Step108EntryFvAfter s2Step108EntryGvAfter
    s2Step108EntryFvRow s2Step108EntryFvOut 67 s2Step108EntryFvFresh [(s2Step108EntryGvRow,67)] [s2Step108EntryGvFresh] [s2Step108EntryGvOut]
    (growRow 770 s2Step108EntryFvFresh) ((growRow 771 s2Step108EntryGvFresh ++ [])) s2Step108EntryFv_Incoming s2Step108EntryFv_checked h3 s2Step108EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step108EntryGBefore s2Step108EntryGAfter s2Step108EntryGvAfter
    s2Step108EntryGRow s2Step108EntryGOut 215 s2Step108EntryGFresh [(s2Step108EntryFvRow,67),(s2Step108EntryGvRow,67)] [s2Step108EntryFvFresh,s2Step108EntryGvFresh] [s2Step108EntryFvOut,s2Step108EntryGvOut]
    (growRow 769 s2Step108EntryGFresh) ((growRow 770 s2Step108EntryFvFresh ++ (growRow 771 s2Step108EntryGvFresh ++ []))) s2Step108EntryG_Incoming s2Step108EntryG_checked h2 s2Step108EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step108EntryFBefore s2Step108EntryFAfter s2Step108EntryGvAfter
    s2Step108EntryFRow s2Step108EntryFOut 215 s2Step108EntryFFresh [(s2Step108EntryGRow,215),(s2Step108EntryFvRow,67),(s2Step108EntryGvRow,67)] [s2Step108EntryGFresh,s2Step108EntryFvFresh,s2Step108EntryGvFresh] [s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut]
    (growRow 768 s2Step108EntryFFresh) ((growRow 769 s2Step108EntryGFresh ++ (growRow 770 s2Step108EntryFvFresh ++ (growRow 771 s2Step108EntryGvFresh ++ [])))) s2Step108EntryF_Incoming s2Step108EntryF_checked h1 s2Step108EntryF_Outgoing
  exact h0

private theorem s2Step108EntryBank_checked : compileHmrBankResizeLog .entry s2Step108EntryFBefore ⟨s2Step108EntryFRow,s2Step108EntryGRow,s2Step108EntryFvRow,s2Step108EntryGvRow⟩ ⟨215,215,67,67⟩ [s2Step108EntryFFresh,s2Step108EntryGFresh,s2Step108EntryFvFresh,s2Step108EntryGvFresh]=
    some (s2Step108EntryGvAfter,⟨s2Step108EntryFOut,s2Step108EntryGOut,s2Step108EntryFvOut,s2Step108EntryGvOut⟩,(growRow 768 s2Step108EntryFFresh ++ (growRow 769 s2Step108EntryGFresh ++ (growRow 770 s2Step108EntryFvFresh ++ (growRow 771 s2Step108EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step108EntryBank_rows]
  rfl

private def s2Step108ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<214) ∨ (215≤q ∧ q<726) ∨ (727≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<214) ∨ (215≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108ExitFBefore : Arena := s2Step108ExitGAfter

private def s2Step108ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 805],768⟩

private def s2Step108ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785],770⟩

private def s2Step108ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 810],769⟩

private def s2Step108ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 809],771⟩

private theorem s2Step108ExitBank_incomingDistinct : ([s2Step108ExitGRow,s2Step108ExitFRow,s2Step108ExitFvRow,s2Step108ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108ExitF_Incoming : rowsOwned s2Step108ExitFBefore [s2Step108ExitFRow,s2Step108ExitFvRow,s2Step108ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108ExitGRow,s2Step108ExitFRow,s2Step108ExitFvRow,s2Step108ExitGvRow] 1 s2Step108ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108ExitFBefore (fun q => (0≤q ∧ q<214) ∨ (215≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108ExitBank_outgoingOwned : rowsOwned s2Step108ExitGvAfter [s2Step108ExitGOut,s2Step108ExitFOut,s2Step108ExitFvOut,s2Step108ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step108ExitGvAfter (fun q => (0≤q ∧ q<214) ∨ (215≤q ∧ q<726) ∨ (727≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108ExitF_Outgoing : rowsOwned s2Step108ExitGvAfter [s2Step108ExitFOut,s2Step108ExitFvOut,s2Step108ExitGvOut] :=
  hmrRows_owned_drop s2Step108ExitGvAfter [s2Step108ExitGOut,s2Step108ExitFOut,s2Step108ExitFvOut,s2Step108ExitGvOut] 1 s2Step108ExitBank_outgoingOwned

private theorem s2Step108ExitF_distinct : (s2Step108ExitFRow.sign::s2Step108ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108ExitF_owned : (s2Step108ExitFRow.sign::s2Step108ExitFRow.payload).toFinset⊆s2Step108ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108ExitFBefore (fun q => (0≤q ∧ q<214) ∨ (215≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108ExitF_retired : s2Step108ExitFBefore.retireSet s2Step108ExitFExtra.toFinset=s2Step108ExitFAfter := by
  unfold Arena.retireSet s2Step108ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step108ExitFBefore,s2Step108ExitGAfter,s2Step108ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step108ExitF_checked : planRowResizeLog s2Step108ExitFBefore s2Step108ExitFRow 214 []=
    some (s2Step108ExitFAfter,s2Step108ExitFOut,shrinkRow 768 s2Step108ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step108ExitFBefore s2Step108ExitFRow 214 s2Step108ExitF_distinct s2Step108ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step108ExitFRow.payload.take 214) s2Step108ExitFRow.sign=s2Step108ExitFOut := by decide +kernel
  have hi : s2Step108ExitFRow.payload.drop 214=s2Step108ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step108ExitF_retired] at result
  exact result

private def s2Step108ExitFvAfter : Arena := s2Step108ExitFAfter

private def s2Step108ExitFvBefore : Arena := s2Step108ExitFAfter

private theorem s2Step108ExitFv_Incoming : rowsOwned s2Step108ExitFvBefore [s2Step108ExitFvRow,s2Step108ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108ExitGRow,s2Step108ExitFRow,s2Step108ExitFvRow,s2Step108ExitGvRow] 2 s2Step108ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108ExitFvBefore (fun q => (0≤q ∧ q<214) ∨ (215≤q ∧ q<726) ∨ (727≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108ExitFv_Outgoing : rowsOwned s2Step108ExitGvAfter [s2Step108ExitFvOut,s2Step108ExitGvOut] :=
  hmrRows_owned_drop s2Step108ExitGvAfter [s2Step108ExitGOut,s2Step108ExitFOut,s2Step108ExitFvOut,s2Step108ExitGvOut] 2 s2Step108ExitBank_outgoingOwned

private theorem s2Step108ExitFv_distinct : (s2Step108ExitFvRow.sign::s2Step108ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108ExitFv_owned : (s2Step108ExitFvRow.sign::s2Step108ExitFvRow.payload).toFinset⊆s2Step108ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108ExitFvBefore (fun q => (0≤q ∧ q<214) ∨ (215≤q ∧ q<726) ∨ (727≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108ExitFv_reserved : s2Step108ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step108ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step108ExitFv_checked : planRowResizeLog s2Step108ExitFvBefore s2Step108ExitFvRow 68 []=
    some (s2Step108ExitFvAfter,s2Step108ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step108ExitFvBefore s2Step108ExitFvAfter s2Step108ExitFvRow 68 []
    s2Step108ExitFv_distinct s2Step108ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step108ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step108ExitFvRow.payload++[]) s2Step108ExitFvRow.sign=s2Step108ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step108ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private theorem s2Step108ExitG_Incoming : rowsOwned s2Step108ExitGBefore [s2Step108ExitGRow,s2Step108ExitFRow,s2Step108ExitFvRow,s2Step108ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108ExitGRow,s2Step108ExitFRow,s2Step108ExitFvRow,s2Step108ExitGvRow] 0 s2Step108ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108ExitG_Outgoing : rowsOwned s2Step108ExitGvAfter [s2Step108ExitGOut,s2Step108ExitFOut,s2Step108ExitFvOut,s2Step108ExitGvOut] :=
  hmrRows_owned_drop s2Step108ExitGvAfter [s2Step108ExitGOut,s2Step108ExitFOut,s2Step108ExitFvOut,s2Step108ExitGvOut] 0 s2Step108ExitBank_outgoingOwned

private theorem s2Step108ExitG_distinct : (s2Step108ExitGRow.sign::s2Step108ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108ExitG_owned : (s2Step108ExitGRow.sign::s2Step108ExitGRow.payload).toFinset⊆s2Step108ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108ExitG_retired : s2Step108ExitGBefore.retireSet s2Step108ExitGExtra.toFinset=s2Step108ExitGAfter := by
  unfold Arena.retireSet s2Step108ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step108ExitGBefore,s2Step108ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step108ExitG_checked : planRowResizeLog s2Step108ExitGBefore s2Step108ExitGRow 214 []=
    some (s2Step108ExitGAfter,s2Step108ExitGOut,shrinkRow 769 s2Step108ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step108ExitGBefore s2Step108ExitGRow 214 s2Step108ExitG_distinct s2Step108ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step108ExitGRow.payload.take 214) s2Step108ExitGRow.sign=s2Step108ExitGOut := by decide +kernel
  have hi : s2Step108ExitGRow.payload.drop 214=s2Step108ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step108ExitG_retired] at result
  exact result

private def s2Step108ExitGvBefore : Arena := s2Step108ExitFAfter

private theorem s2Step108ExitGv_Incoming : rowsOwned s2Step108ExitGvBefore [s2Step108ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108ExitGRow,s2Step108ExitFRow,s2Step108ExitFvRow,s2Step108ExitGvRow] 3 s2Step108ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108ExitGvBefore (fun q => (0≤q ∧ q<214) ∨ (215≤q ∧ q<726) ∨ (727≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108ExitGv_Outgoing : rowsOwned s2Step108ExitGvAfter [s2Step108ExitGvOut] :=
  hmrRows_owned_drop s2Step108ExitGvAfter [s2Step108ExitGOut,s2Step108ExitFOut,s2Step108ExitFvOut,s2Step108ExitGvOut] 3 s2Step108ExitBank_outgoingOwned

private theorem s2Step108ExitGv_distinct : (s2Step108ExitGvRow.sign::s2Step108ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108ExitGv_owned : (s2Step108ExitGvRow.sign::s2Step108ExitGvRow.payload).toFinset⊆s2Step108ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108ExitGvBefore (fun q => (0≤q ∧ q<214) ∨ (215≤q ∧ q<726) ∨ (727≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108ExitGv_retired : s2Step108ExitGvBefore.retireSet s2Step108ExitGvExtra.toFinset=s2Step108ExitGvAfter := by
  unfold Arena.retireSet s2Step108ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step108ExitGvBefore,s2Step108ExitFAfter,s2Step108ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step108ExitGv_checked : planRowResizeLog s2Step108ExitGvBefore s2Step108ExitGvRow 67 []=
    some (s2Step108ExitGvAfter,s2Step108ExitGvOut,shrinkRow 771 s2Step108ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step108ExitGvBefore s2Step108ExitGvRow 67 s2Step108ExitGv_distinct s2Step108ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step108ExitGvRow.payload.take 67) s2Step108ExitGvRow.sign=s2Step108ExitGvOut := by decide +kernel
  have hi : s2Step108ExitGvRow.payload.drop 67=s2Step108ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step108ExitGv_retired] at result
  exact result

private theorem s2Step108ExitBank_rows : planWindowRowsLog s2Step108ExitGBefore [(s2Step108ExitGRow,214),(s2Step108ExitFRow,214),(s2Step108ExitFvRow,68),(s2Step108ExitGvRow,67)] [[],[],[],[]]=
    some (s2Step108ExitGvAfter,[s2Step108ExitGOut,s2Step108ExitFOut,s2Step108ExitFvOut,s2Step108ExitGvOut],(shrinkRow 769 s2Step108ExitGExtra ++ (shrinkRow 768 s2Step108ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step108ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step108ExitGvAfter [] []=some (s2Step108ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step108ExitGvBefore s2Step108ExitGvAfter s2Step108ExitGvAfter
    s2Step108ExitGvRow s2Step108ExitGvOut 67 [] [] [] []
    (shrinkRow 771 s2Step108ExitGvExtra) ([]) s2Step108ExitGv_Incoming s2Step108ExitGv_checked h4 s2Step108ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step108ExitFvBefore s2Step108ExitFvAfter s2Step108ExitGvAfter
    s2Step108ExitFvRow s2Step108ExitFvOut 68 [] [(s2Step108ExitGvRow,67)] [[]] [s2Step108ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step108ExitGvExtra ++ [])) s2Step108ExitFv_Incoming s2Step108ExitFv_checked h3 s2Step108ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step108ExitFBefore s2Step108ExitFAfter s2Step108ExitGvAfter
    s2Step108ExitFRow s2Step108ExitFOut 214 [] [(s2Step108ExitFvRow,68),(s2Step108ExitGvRow,67)] [[],[]] [s2Step108ExitFvOut,s2Step108ExitGvOut]
    (shrinkRow 768 s2Step108ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step108ExitGvExtra ++ []))) s2Step108ExitF_Incoming s2Step108ExitF_checked h2 s2Step108ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step108ExitGBefore s2Step108ExitGAfter s2Step108ExitGvAfter
    s2Step108ExitGRow s2Step108ExitGOut 214 [] [(s2Step108ExitFRow,214),(s2Step108ExitFvRow,68),(s2Step108ExitGvRow,67)] [[],[],[]] [s2Step108ExitFOut,s2Step108ExitFvOut,s2Step108ExitGvOut]
    (shrinkRow 769 s2Step108ExitGExtra) ((shrinkRow 768 s2Step108ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step108ExitGvExtra ++ [])))) s2Step108ExitG_Incoming s2Step108ExitG_checked h1 s2Step108ExitG_Outgoing
  exact h0

private theorem s2Step108ExitBank_checked : compileHmrBankResizeLog .exit s2Step108ExitGBefore ⟨s2Step108ExitFRow,s2Step108ExitGRow,s2Step108ExitFvRow,s2Step108ExitGvRow⟩ ⟨214,214,68,67⟩ [[],[],[],[]]=
    some (s2Step108ExitGvAfter,⟨s2Step108ExitFOut,s2Step108ExitGOut,s2Step108ExitFvOut,s2Step108ExitGvOut⟩,(shrinkRow 769 s2Step108ExitGExtra ++ (shrinkRow 768 s2Step108ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step108ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step108ExitBank_rows]
  rfl

private theorem s2Step108Add0_apart : Disjoint s2Step108Add0Arena.live s2Step108Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step108Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108Add0_card : s2Step108Add0Arena.live.card=873 := by
  decide +kernel

private theorem s2Step108Add0_borrowed : s2Step108Add0Arena.checkBorrow (hmrHybridCount s2Step108Add0Arena s2Step108Add0B.length) s2Step108Add0Work=some s2Step108Add0During := by
  have len : s2Step108Add0Work.length=hmrHybridCount s2Step108Add0Arena s2Step108Add0B.length := by
    rw [hmrHybridCount,s2Step108Add0_card]
    decide +kernel
  have nd : s2Step108Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step108Add0Arena s2Step108Add0During s2Step108Add0Work.toFinset s2Step108Add0_bounded s2Step108Add0_apart rfl

private theorem s2Step108Add0_distinct : (794::787::846::(s2Step108Add0A++s2Step108Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108Add0_owned : (794::787::846::(s2Step108Add0A++s2Step108Add0B)).toFinset⊆s2Step108Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step108Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108Add0_checked : compileHmrHybridCinLog s2Step108Add0Arena 787 794 846 s2Step108Add0A s2Step108Add0B s2Step108Add0Work=some s2Step108Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step108Add0Arena s2Step108Add0During 787 794 846 s2Step108Add0A s2Step108Add0B s2Step108Add0Work
    (by decide +kernel) (by decide +kernel) s2Step108Add0_distinct
    (fun q hq => s2Step108Add0_owned (List.mem_toFinset.mpr hq)) s2Step108Add0_borrowed

private theorem s2Step108Add1_apart : Disjoint s2Step108Add1Arena.live s2Step108Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step108Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108Add1_card : s2Step108Add1Arena.live.card=873 := by
  decide +kernel

private theorem s2Step108Add1_borrowed : s2Step108Add1Arena.checkBorrow (hmrHybridCount s2Step108Add1Arena s2Step108Add1B.length) s2Step108Add1Work=some s2Step108Add1During := by
  have len : s2Step108Add1Work.length=hmrHybridCount s2Step108Add1Arena s2Step108Add1B.length := by
    rw [hmrHybridCount,s2Step108Add1_card]
    decide +kernel
  have nd : s2Step108Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step108Add1Arena s2Step108Add1During s2Step108Add1Work.toFinset s2Step108Add1_bounded s2Step108Add1_apart rfl

private theorem s2Step108Add1_distinct : (794::787::846::(s2Step108Add1A++s2Step108Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108Add1_owned : (794::787::846::(s2Step108Add1A++s2Step108Add1B)).toFinset⊆s2Step108Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step108Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108Add1_checked : compileHmrHybridCinLog s2Step108Add1Arena 787 794 846 s2Step108Add1A s2Step108Add1B s2Step108Add1Work=some s2Step108Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step108Add1Arena s2Step108Add1During 787 794 846 s2Step108Add1A s2Step108Add1B s2Step108Add1Work
    (by decide +kernel) (by decide +kernel) s2Step108Add1_distinct
    (fun q hq => s2Step108Add1_owned (List.mem_toFinset.mpr hq)) s2Step108Add1_borrowed

private theorem s2Step108F4_apart : Disjoint (s2Step108Add0A++s2Step108Add0B).toFinset (s2Step108Add1A++s2Step108Add1B).toFinset := by
  have nd : ((s2Step108Add0A++s2Step108Add0B)++(s2Step108Add1A++s2Step108Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step108F4_carry : s2Step108F4FlagArena.checkBorrow 1 [846]=some s2Step108Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step108F4FlagArena,s2Step108HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step108F4FlagArena,s2Step108HeadFvAfter,s2Step108Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step108F4_distinct : (799::787::794::846::((s2Step108Add0A++s2Step108Add1A)++(s2Step108Add0B++s2Step108Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108F4_flag : s2Step108HeadFvAfter.checkBorrow 1 [794]=some s2Step108F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step108HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step108F4_owned : (799::787::((s2Step108Add0A++s2Step108Add1A)++(s2Step108Add0B++s2Step108Add1B))).toFinset⊆s2Step108HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step108HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108F4_checked : compileHmrHybridF4Log s2Step108HeadFvAfter 799 787 s2Step108Add0A s2Step108Add0B s2Step108Add1A s2Step108Add1B [794] [846] s2Step108Add0Work s2Step108Add1Work=some s2Step108F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step108HeadFvAfter s2Step108F4FlagArena s2Step108Add0Arena s2Step108Add0During s2Step108Add1During 799 787
    s2Step108Add0A s2Step108Add0B s2Step108Add1A s2Step108Add1B [794] [846] s2Step108Add0Work s2Step108Add1Work
    (fun q hq => s2Step108F4_owned (List.mem_toFinset.mpr hq)) s2Step108F4_flag s2Step108F4_carry
    s2Step108F4_distinct s2Step108F4_apart s2Step108Add0_checked s2Step108Add1_checked

private theorem s2Step108Front_branch : s2Step108FrontSigmaArena.checkBorrow 1 [787]=some s2Step108HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step108FrontSigmaArena,s2Step108EntryGvAfter,s2Step108EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step108FrontSigmaArena,s2Step108EntryGvAfter,s2Step108EntryFBefore,s2Step108HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step108Front_entry : HmrFrontEntryValid s2Step108EntryFBefore s2Step108FrontBank 215 67 ⟨214,214,68,67⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step108FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step108EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step108EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step108FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step108Front_sigma : s2Step108EntryGvAfter.checkBorrow 1 [799]=some s2Step108FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step108EntryGvAfter,s2Step108EntryFBefore,arenaWires]
  · rfl

private def s2Step108HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108HeadFBefore : Arena := s2Step108HeadGAfter

private def s2Step108HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726],768⟩

private def s2Step108HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803],770⟩

private def s2Step108HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],769⟩

private def s2Step108HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩

private theorem s2Step108HeadBank_incomingDistinct : ([s2Step108HeadGRow,s2Step108HeadFRow,s2Step108HeadGvRow,s2Step108HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108HeadF_Incoming : rowsOwned s2Step108HeadFBefore [s2Step108HeadFRow,s2Step108HeadGvRow,s2Step108HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108HeadGRow,s2Step108HeadFRow,s2Step108HeadGvRow,s2Step108HeadFvRow] 1 s2Step108HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108HeadBank_outgoingOwned : rowsOwned s2Step108HeadFvAfter [s2Step108HeadGOut,s2Step108HeadFOut,s2Step108HeadGvOut,s2Step108HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step108HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108HeadF_Outgoing : rowsOwned s2Step108HeadFvAfter [s2Step108HeadFOut,s2Step108HeadGvOut,s2Step108HeadFvOut] :=
  hmrRows_owned_drop s2Step108HeadFvAfter [s2Step108HeadGOut,s2Step108HeadFOut,s2Step108HeadGvOut,s2Step108HeadFvOut] 1 s2Step108HeadBank_outgoingOwned

private theorem s2Step108HeadF_distinct : (s2Step108HeadFRow.sign::s2Step108HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108HeadF_owned : (s2Step108HeadFRow.sign::s2Step108HeadFRow.payload).toFinset⊆s2Step108HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108HeadF_reserved : s2Step108HeadFBefore.reserve s2Step108HeadFFresh.toFinset=some s2Step108HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step108HeadFFresh,arenaWires]
  · norm_num [s2Step108HeadFBefore,s2Step108HeadGAfter,s2Step108HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step108HeadFAfter,s2Step108HeadFBefore,s2Step108HeadGAfter,s2Step108HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step108HeadF_checked : planRowResizeLog s2Step108HeadFBefore s2Step108HeadFRow 216 s2Step108HeadFFresh=
    some (s2Step108HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 805],768⟩,growRow 768 s2Step108HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step108HeadFBefore s2Step108HeadFAfter s2Step108HeadFRow 216 s2Step108HeadFFresh
    s2Step108HeadF_distinct s2Step108HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step108HeadF_reserved
  have rowEq : WindowRow.mk (s2Step108HeadFRow.payload++s2Step108HeadFFresh) s2Step108HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 805],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step108HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step108HeadFvBefore : Arena := s2Step108HeadGvAfter

private theorem s2Step108HeadFv_Incoming : rowsOwned s2Step108HeadFvBefore [s2Step108HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108HeadGRow,s2Step108HeadFRow,s2Step108HeadGvRow,s2Step108HeadFvRow] 3 s2Step108HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108HeadFv_Outgoing : rowsOwned s2Step108HeadFvAfter [s2Step108HeadFvOut] :=
  hmrRows_owned_drop s2Step108HeadFvAfter [s2Step108HeadGOut,s2Step108HeadFOut,s2Step108HeadGvOut,s2Step108HeadFvOut] 3 s2Step108HeadBank_outgoingOwned

private theorem s2Step108HeadFv_distinct : (s2Step108HeadFvRow.sign::s2Step108HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108HeadFv_owned : (s2Step108HeadFvRow.sign::s2Step108HeadFvRow.payload).toFinset⊆s2Step108HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108HeadFv_reserved : s2Step108HeadFvBefore.reserve s2Step108HeadFvFresh.toFinset=some s2Step108HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step108HeadFvFresh,arenaWires]
  · norm_num [s2Step108HeadFvBefore,s2Step108HeadGvAfter,s2Step108HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step108HeadFvAfter,s2Step108HeadFvBefore,s2Step108HeadGvAfter,s2Step108HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step108HeadFv_checked : planRowResizeLog s2Step108HeadFvBefore s2Step108HeadFvRow 68 s2Step108HeadFvFresh=
    some (s2Step108HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785],770⟩,growRow 770 s2Step108HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step108HeadFvBefore s2Step108HeadFvAfter s2Step108HeadFvRow 68 s2Step108HeadFvFresh
    s2Step108HeadFv_distinct s2Step108HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step108HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step108HeadFvRow.payload++s2Step108HeadFvFresh) s2Step108HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step108HeadG_Incoming : rowsOwned s2Step108HeadGBefore [s2Step108HeadGRow,s2Step108HeadFRow,s2Step108HeadGvRow,s2Step108HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108HeadGRow,s2Step108HeadFRow,s2Step108HeadGvRow,s2Step108HeadFvRow] 0 s2Step108HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108HeadG_Outgoing : rowsOwned s2Step108HeadFvAfter [s2Step108HeadGOut,s2Step108HeadFOut,s2Step108HeadGvOut,s2Step108HeadFvOut] :=
  hmrRows_owned_drop s2Step108HeadFvAfter [s2Step108HeadGOut,s2Step108HeadFOut,s2Step108HeadGvOut,s2Step108HeadFvOut] 0 s2Step108HeadBank_outgoingOwned

private theorem s2Step108HeadG_distinct : (s2Step108HeadGRow.sign::s2Step108HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108HeadG_owned : (s2Step108HeadGRow.sign::s2Step108HeadGRow.payload).toFinset⊆s2Step108HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108HeadG_reserved : s2Step108HeadGBefore.reserve s2Step108HeadGFresh.toFinset=some s2Step108HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step108HeadGFresh,arenaWires]
  · norm_num [s2Step108HeadGBefore,s2Step108HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step108HeadGAfter,s2Step108HeadGBefore,s2Step108HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step108HeadG_checked : planRowResizeLog s2Step108HeadGBefore s2Step108HeadGRow 216 s2Step108HeadGFresh=
    some (s2Step108HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 810],769⟩,growRow 769 s2Step108HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step108HeadGBefore s2Step108HeadGAfter s2Step108HeadGRow 216 s2Step108HeadGFresh
    s2Step108HeadG_distinct s2Step108HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step108HeadG_reserved
  have rowEq : WindowRow.mk (s2Step108HeadGRow.payload++s2Step108HeadGFresh) s2Step108HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step108HeadGvBefore : Arena := s2Step108HeadFAfter

private theorem s2Step108HeadGv_Incoming : rowsOwned s2Step108HeadGvBefore [s2Step108HeadGvRow,s2Step108HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step108HeadGRow,s2Step108HeadFRow,s2Step108HeadGvRow,s2Step108HeadFvRow] 2 s2Step108HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step108HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step108HeadGv_Outgoing : rowsOwned s2Step108HeadFvAfter [s2Step108HeadGvOut,s2Step108HeadFvOut] :=
  hmrRows_owned_drop s2Step108HeadFvAfter [s2Step108HeadGOut,s2Step108HeadFOut,s2Step108HeadGvOut,s2Step108HeadFvOut] 2 s2Step108HeadBank_outgoingOwned

private theorem s2Step108HeadGv_distinct : (s2Step108HeadGvRow.sign::s2Step108HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step108HeadGv_owned : (s2Step108HeadGvRow.sign::s2Step108HeadGvRow.payload).toFinset⊆s2Step108HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step108HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step108HeadGv_reserved : s2Step108HeadGvBefore.reserve s2Step108HeadGvFresh.toFinset=some s2Step108HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step108HeadGvFresh,arenaWires]
  · norm_num [s2Step108HeadGvBefore,s2Step108HeadFAfter,s2Step108HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step108HeadGvAfter,s2Step108HeadGvBefore,s2Step108HeadFAfter,s2Step108HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step108HeadGv_checked : planRowResizeLog s2Step108HeadGvBefore s2Step108HeadGvRow 68 s2Step108HeadGvFresh=
    some (s2Step108HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 809],771⟩,growRow 771 s2Step108HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step108HeadGvBefore s2Step108HeadGvAfter s2Step108HeadGvRow 68 s2Step108HeadGvFresh
    s2Step108HeadGv_distinct s2Step108HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step108HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step108HeadGvRow.payload++s2Step108HeadGvFresh) s2Step108HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 809],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step108HeadBank_rows : planWindowRowsLog s2Step108HeadGBefore [(s2Step108HeadGRow,216),(s2Step108HeadFRow,216),(s2Step108HeadGvRow,68),(s2Step108HeadFvRow,68)] [s2Step108HeadGFresh,s2Step108HeadFFresh,s2Step108HeadGvFresh,s2Step108HeadFvFresh]=
    some (s2Step108HeadFvAfter,[s2Step108HeadGOut,s2Step108HeadFOut,s2Step108HeadGvOut,s2Step108HeadFvOut],(growRow 769 s2Step108HeadGFresh ++ (growRow 768 s2Step108HeadFFresh ++ (growRow 771 s2Step108HeadGvFresh ++ (growRow 770 s2Step108HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step108HeadFvAfter [] []=some (s2Step108HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step108HeadFvBefore s2Step108HeadFvAfter s2Step108HeadFvAfter
    s2Step108HeadFvRow s2Step108HeadFvOut 68 s2Step108HeadFvFresh [] [] []
    (growRow 770 s2Step108HeadFvFresh) ([]) s2Step108HeadFv_Incoming s2Step108HeadFv_checked h4 s2Step108HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step108HeadGvBefore s2Step108HeadGvAfter s2Step108HeadFvAfter
    s2Step108HeadGvRow s2Step108HeadGvOut 68 s2Step108HeadGvFresh [(s2Step108HeadFvRow,68)] [s2Step108HeadFvFresh] [s2Step108HeadFvOut]
    (growRow 771 s2Step108HeadGvFresh) ((growRow 770 s2Step108HeadFvFresh ++ [])) s2Step108HeadGv_Incoming s2Step108HeadGv_checked h3 s2Step108HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step108HeadFBefore s2Step108HeadFAfter s2Step108HeadFvAfter
    s2Step108HeadFRow s2Step108HeadFOut 216 s2Step108HeadFFresh [(s2Step108HeadGvRow,68),(s2Step108HeadFvRow,68)] [s2Step108HeadGvFresh,s2Step108HeadFvFresh] [s2Step108HeadGvOut,s2Step108HeadFvOut]
    (growRow 768 s2Step108HeadFFresh) ((growRow 771 s2Step108HeadGvFresh ++ (growRow 770 s2Step108HeadFvFresh ++ []))) s2Step108HeadF_Incoming s2Step108HeadF_checked h2 s2Step108HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step108HeadGBefore s2Step108HeadGAfter s2Step108HeadFvAfter
    s2Step108HeadGRow s2Step108HeadGOut 216 s2Step108HeadGFresh [(s2Step108HeadFRow,216),(s2Step108HeadGvRow,68),(s2Step108HeadFvRow,68)] [s2Step108HeadFFresh,s2Step108HeadGvFresh,s2Step108HeadFvFresh] [s2Step108HeadFOut,s2Step108HeadGvOut,s2Step108HeadFvOut]
    (growRow 769 s2Step108HeadGFresh) ((growRow 768 s2Step108HeadFFresh ++ (growRow 771 s2Step108HeadGvFresh ++ (growRow 770 s2Step108HeadFvFresh ++ [])))) s2Step108HeadG_Incoming s2Step108HeadG_checked h1 s2Step108HeadG_Outgoing
  exact h0

private theorem s2Step108HeadBank_checked : compileHmrBankResizeLog .headroom s2Step108HeadGBefore ⟨s2Step108HeadFRow,s2Step108HeadGRow,s2Step108HeadFvRow,s2Step108HeadGvRow⟩ ⟨216,216,68,68⟩ [s2Step108HeadGFresh,s2Step108HeadFFresh,s2Step108HeadGvFresh,s2Step108HeadFvFresh]=
    some (s2Step108HeadFvAfter,⟨s2Step108HeadFOut,s2Step108HeadGOut,s2Step108HeadFvOut,s2Step108HeadGvOut⟩,(growRow 769 s2Step108HeadGFresh ++ (growRow 768 s2Step108HeadFFresh ++ (growRow 771 s2Step108HeadGvFresh ++ (growRow 770 s2Step108HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step108HeadBank_rows]
  rfl

private theorem s2Step108Front_checked : compileHmrSourceFrontLog s2Step108EntryFBefore s2Step108FrontBank 215 67 ⟨214,214,68,67⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step108FrontLog=some s2Step108FrontPlan := by
  have pairEq : s2Step108FrontPair=⟨s2Step108HeadFRow,s2Step108HeadGRow,s2Step108HeadFvRow,s2Step108HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step108FrontHead=⟨s2Step108ExitFRow,s2Step108ExitGRow,s2Step108ExitFvRow,s2Step108ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step108Add0A=s2Step108FrontHead.f.wires := by decide +kernel
  have gEq : s2Step108Add0B=s2Step108FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step108Add1A=s2Step108FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step108Add1B=s2Step108FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step108EntryFBefore s2Step108FrontBank 215 67 ⟨214,214,68,67⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step108FrontLog s2Step108FrontPlan
  · exact s2Step108Front_entry
  · exact s2Step108EntryBank_checked
  · exact s2Step108Front_sigma
  · rfl
  · exact s2Step108Front_branch
  · rfl
  · simpa only [s2Step108FrontPlan,pairEq] using s2Step108HeadBank_checked
  · simpa only [s2Step108FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step108F4_checked
  · exact s2Step108Counter_checked
  · rfl
  · simpa only [s2Step108FrontPlan,headEq] using s2Step108ExitBank_checked

private theorem s2Step108Complete_explicit_checked : compileHmrEarlyStepLog s2Step108EntryFBefore s2Step108FrontBank 215 67 ⟨214,214,68,67⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step108CompleteLog=some s2Step108CompletePlan := by
  let Q := s2Step108EarlyControlPlan
  have hq := s2Step108EarlyControl_plan_checked
  have fv1 : s2Step108CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step108CompleteOut.fv.payload[2]?.getD s2Step108CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step108CompleteOut.fv.payload[3]?.getD s2Step108CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step108CompleteOut.fv.payload[4]?.getD s2Step108CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step108EntryFBefore s2Step108EarlyControlArena s2Step108FrontBank 215 67 ⟨214,214,68,67⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step108CompleteLog s2Step108FrontPlan Q
    s2Step108Front_checked s2Step108Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step108Complete_owned s2Step108Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step108EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 799 s2Step108CompleteOut.fv.second (s2Step108CompleteOut.fv.payload[2]?.getD s2Step108CompleteOut.fv.sign) (s2Step108CompleteOut.fv.payload[3]?.getD s2Step108CompleteOut.fv.sign) (s2Step108CompleteOut.fv.payload[4]?.getD s2Step108CompleteOut.fv.sign) 787 35 s2Step108EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep108Arena : Arena := s2Step108EntryFBefore
def s2PrivateStep108Bank : WindowBank := s2Step108FrontBank
def s2PrivateStep108Spec : HmrSourceWalkStepLog := ⟨215,67,⟨214,214,68,67⟩,35,.early s2Step108CompleteLog⟩
def s2PrivateStep108Plan : HmrSourceStepPlan := .early s2Step108CompletePlan
theorem s2PrivateStep108_source : s2PrivateStep108Spec=s2ObservedLogs96[12] := rfl
theorem s2PrivateStep108_checked : compileHmrSourceStepLog s2PrivateStep108Arena s2PrivateStep108Bank
    s2PrivateStep108Spec.fgWidth s2PrivateStep108Spec.vWidth s2PrivateStep108Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]
    6 498 108 s2PrivateStep108Spec.need none s2PrivateStep108Spec.log=some s2PrivateStep108Plan := by
  change compileHmrSourceStepLog s2Step108EntryFBefore s2Step108FrontBank 215 67 ⟨214,214,68,67⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 6 498 108 35 none (.early s2Step108CompleteLog)=some (.early s2Step108CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 108<498)]
  rw [s2Step108Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
