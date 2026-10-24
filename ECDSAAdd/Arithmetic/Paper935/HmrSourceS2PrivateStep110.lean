import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep108
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

private def s2Step110CompleteMoves : List (Wire × Wire) := [(792,725)]

private def s2Step110EarlyControlLog : HmrEarlyControlLog := ⟨[792, 794, 846, 808, 815],[809],[781],[849, 806, 802, 867, 877, 879],[881]⟩

private def s2Step110FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [815], [], [799, 800]],[[809], [808], [794], [846]],[[], [], [], []]⟩,[787],[805],[781],[849],[806, 802, 867, 877, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802]⟩

private def s2Step110CompleteLog : HmrEarlyStepLog := ⟨s2Step110FrontLog,s2Step110CompleteMoves,s2Step110EarlyControlLog⟩

private def s2Step110ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724],768⟩

private def s2Step110ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step110ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],769⟩

private def s2Step110ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private def s2Step110FrontOut : WindowBank := ⟨s2Step110ExitFOut,s2Step110ExitGOut,s2Step110ExitFvOut,s2Step110ExitGvOut⟩

private def s2Step110CompleteOut : WindowBank := s2Step110FrontOut.repacked s2Step110CompleteMoves

private def s2Step110EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step110EarlyControlPositiveArena,[809],s2Step110EarlyControlEqualityArena,[781],⟨⟨787,false⟩,[⟨⟨809,false⟩,781⟩]⟩⟩

private def s2Step110EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step110EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step110EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step110EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step110EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,792⟩,⟨⟨774,false⟩,794⟩,⟨⟨775,false⟩,846⟩,⟨⟨776,false⟩,808⟩,⟨⟨777,false⟩,815⟩]⟩

private def s2Step110EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step110EarlyControlZeroArena,s2Step110EarlyControlZeroPlan,s2Step110EarlyControlClassPlan,s2Step110EarlyControlFlagArena,s2Step110EarlyControlFittedArena,s2Step110EarlyControlHistoryArena,s2Step110EarlyControlSigmaArena,s2Step110EarlyControlOutputArena,s2Step110EarlyControlLog⟩

private def s2Step110CounterWork : List Wire := [781, 849, 806, 802]

private theorem s2Step110Counter_bounded : s2Step110CounterWork.toFinset⊆arenaWires := by norm_num [s2Step110CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step110HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110CounterDuring : Arena := ⟨s2Step110HeadFvAfter.live∪s2Step110CounterWork.toFinset,Finset.union_subset s2Step110HeadFvAfter.bounded s2Step110Counter_bounded⟩

private def s2Step110EntryFFresh : List Wire := []

private def s2Step110EntryFvFresh : List Wire := []

private def s2Step110EntryGFresh : List Wire := [815]

private def s2Step110EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110EntryGvFresh : List Wire := [799, 800]

private def s2Step110ExitFExtra : List Wire := [725, 808]

private def s2Step110ExitFvExtra : List Wire := [846]

private def s2Step110ExitGExtra : List Wire := [815, 809]

private def s2Step110ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<725) ∨ (726≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110ExitGvExtra : List Wire := [794]

private def s2Step110Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110Add0Work : List Wire := [806, 802, 867, 877, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step110Add0_bounded : s2Step110Add0Work.toFinset⊆arenaWires := by
  have h : s2Step110Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step110Add0During : Arena := ⟨s2Step110Add0Arena.live∪s2Step110Add0Work.toFinset,Finset.union_subset s2Step110Add0Arena.bounded s2Step110Add0_bounded⟩

private def s2Step110Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110Add1Work : List Wire := [806, 802, 867, 877, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step110Add1_bounded : s2Step110Add1Work.toFinset⊆arenaWires := by
  have h : s2Step110Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step110Add1During : Arena := ⟨s2Step110Add1Arena.live∪s2Step110Add1Work.toFinset,Finset.union_subset s2Step110Add1Arena.bounded s2Step110Add1_bounded⟩

private def s2Step110F4FlagArena : Arena := ⟨s2Step110HeadFvAfter.live∪{781},Finset.union_subset s2Step110HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step110F4Plan : HmrHybridF4Plan := ⟨s2Step110F4FlagArena,[781],s2Step110Add0Arena,[849],s2Step110Add0During,s2Step110Add0Work,s2Step110Add1During,s2Step110Add1Work⟩

private def s2Step110HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 808],768⟩

private def s2Step110HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 846],770⟩

private def s2Step110HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 815, 809],769⟩

private def s2Step110HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 794],771⟩

private def s2Step110FrontHead : WindowBank := ⟨s2Step110HeadFOut,s2Step110HeadGOut,s2Step110HeadFvOut,s2Step110HeadGvOut⟩

private def s2Step110EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩

private def s2Step110EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step110EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 815],769⟩

private def s2Step110EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private def s2Step110FrontPair : WindowBank := ⟨s2Step110EntryFOut,s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut⟩

private def s2Step110FrontSigmaArena : Arena := ⟨s2Step110EntryGvAfter.live∪{787},Finset.union_subset s2Step110EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step110HeadFFresh : List Wire := [808]

private def s2Step110HeadFvFresh : List Wire := [846]

private def s2Step110HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110HeadGFresh : List Wire := [809]

private def s2Step110HeadGvFresh : List Wire := [794]

private def s2Step110FrontPlan : HmrSourceFront := ⟨s2Step110EntryGvAfter,s2Step110FrontPair,(growRow 768 s2Step110EntryFFresh ++ (growRow 769 s2Step110EntryGFresh ++ (growRow 770 s2Step110EntryFvFresh ++ (growRow 771 s2Step110EntryGvFresh ++ [])))),s2Step110FrontSigmaArena,[787],s2Step110HeadGBefore,[805],
  s2Step110HeadFvAfter,s2Step110FrontHead,(growRow 769 s2Step110HeadGFresh ++ (growRow 768 s2Step110HeadFFresh ++ (growRow 771 s2Step110HeadGvFresh ++ (growRow 770 s2Step110HeadFvFresh ++ [])))),s2Step110F4Plan,s2Step110CounterDuring,s2Step110CounterWork,s2Step110ExitGvAfter,s2Step110FrontOut,(shrinkRow 769 s2Step110ExitGExtra ++ (shrinkRow 768 s2Step110ExitFExtra ++ (shrinkRow 770 s2Step110ExitFvExtra ++ (shrinkRow 771 s2Step110ExitGvExtra ++ []))))⟩

private def s2Step110CompletePlan : HmrEarlyStepPlan := ⟨s2Step110FrontPlan,s2Step110EarlyControlArena,s2Step110EarlyControlPlan,s2Step110CompleteMoves⟩

private theorem s2Step110Complete_apart : List.Disjoint (s2Step110CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [787, 805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] := by
  have nd : ((s2Step110CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[787, 805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step110Complete_owned : (s2Step110CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step110EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private def s2Step110CompleteMoveArena : Arena := ⟨s2Step110ExitGvAfter.live∪{725},Finset.union_subset s2Step110ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step110Complete_repack : s2Step110ExitGvAfter.checkRepack s2Step110CompleteMoves=some s2Step110EarlyControlArena := by
  have owned : 792∈s2Step110ExitGvAfter.live := by norm_num [s2Step110ExitGvAfter,arenaWires]
  have reserve : s2Step110ExitGvAfter.reserve {725}=some s2Step110CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step110ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step110CompleteMoveArena.retireSet {792}=s2Step110EarlyControlArena := by
    unfold Arena.retireSet s2Step110EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step110CompleteMoveArena,s2Step110ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step110CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step110CompleteMoveArena.retireSet {792}).checkRepack []=some s2Step110EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step110EarlyControl_branchOwned : ([805] : List Wire).toFinset⊆s2Step110EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_branch : compileHmrBranchRetirement s2Step110EarlyControlSigmaArena 805=some s2Step110EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step110EarlyControl_branchOwned
  · ext q
    simp [s2Step110EarlyControlOutputArena,s2Step110EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step110EarlyControl_classEqualityBorrow : s2Step110EarlyControlPositiveArena.checkBorrow (([787, 809] : List Wire).length-1) s2Step110EarlyControlLog.classWork=some s2Step110EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step110EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step110EarlyControlEqualityArena,s2Step110EarlyControlPositiveArena,s2Step110EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step110EarlyControl_classEqualityOwned : ([787, 809] : List Wire).toFinset⊆s2Step110EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_classEquality : compileHmrEqualityLog s2Step110EarlyControlPositiveArena [787, 809] 0 s2Step110EarlyControlLog.classWork=some (s2Step110EarlyControlEqualityArena,s2Step110EarlyControlLog.classWork,s2Step110EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step110EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step110EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step110EarlyControl_classOwned : ([777, 815, 787] : List Wire).toFinset⊆s2Step110EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_positiveBorrow : s2Step110EarlyControlZeroArena.checkBorrow (1) s2Step110EarlyControlLog.positiveWork=some s2Step110EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step110EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step110EarlyControlPositiveArena,s2Step110EarlyControlZeroArena,s2Step110EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step110EarlyControl_class : compileHmrSourceClassLog s2Step110EarlyControlZeroArena false 777 s2Step110EarlyControlZeroPlan.top 0 787 s2Step110EarlyControlLog.positiveWork s2Step110EarlyControlLog.classWork=some s2Step110EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step110EarlyControlClassPlan s2Step110EarlyControlZeroArena false 777 s2Step110EarlyControlZeroPlan.top 0 787
  constructor
  · decide +kernel
  · exact s2Step110EarlyControl_classOwned
  · exact s2Step110EarlyControl_positiveBorrow
  · exact s2Step110EarlyControl_classEquality

private theorem s2Step110EarlyControl_entryRecordOwned : ([805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] : List Wire).toFinset⊆s2Step110EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_entrySigmaOwned : ([787, 254] : List Wire).toFinset⊆s2Step110EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_fitBorrow : s2Step110EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] : List Wire).length)) s2Step110EarlyControlLog.recordFresh=some s2Step110EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step110EarlyControlFlagArena (fun q => (0≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step110EarlyControlFittedArena,s2Step110EarlyControlFlagArena,s2Step110EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step110EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] : List Wire).toFinset⊆s2Step110EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlFlagArena (fun q => (0≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_fit : compileHmrRecordGrowLog s2Step110EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] 37 s2Step110EarlyControlLog.recordFresh=some s2Step110EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step110EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step110EarlyControl_fitBorrow

private theorem s2Step110EarlyControl_flagsBorrow : s2Step110EarlyControlEqualityArena.checkBorrow (6) s2Step110EarlyControlLog.flagWork=some s2Step110EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step110EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step110EarlyControlFlagArena,s2Step110EarlyControlEqualityArena,s2Step110EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step110EarlyControl_flagsOwned : ([781, 253, 252, 251] : List Wire).toFinset⊆s2Step110EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_flags : compileHmrFlagsLog s2Step110EarlyControlClassPlan.equalityArena s2Step110EarlyControlClassPlan.equality.top 253 252 251 s2Step110EarlyControlLog.flagWork=some s2Step110EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step110EarlyControl_flagsOwned⟩
  · exact s2Step110EarlyControl_flagsBorrow

private theorem s2Step110EarlyControl_historyBorrow : s2Step110EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] : List Wire).length)) s2Step110EarlyControlLog.recordFresh=some s2Step110EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step110EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step110EarlyControlHistoryArena,s2Step110EarlyControlArena,s2Step110EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step110EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] : List Wire).toFinset⊆s2Step110EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_history : compileHmrRecordGrowLog s2Step110EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] 37 s2Step110EarlyControlLog.recordFresh=some s2Step110EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step110EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step110EarlyControl_historyBorrow

private theorem s2Step110EarlyControl_sigmaOwned : ([254, 787] : List Wire).toFinset⊆s2Step110EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_sigmaReleaseOwned : ([787] : List Wire).toFinset⊆s2Step110EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_sigmaRelease : s2Step110EarlyControlHistoryArena.release {787} (fun _ => false)=some s2Step110EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step110EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step110EarlyControlSigmaArena,s2Step110EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step110EarlyControl_sigma : compileHmrSigmaDropLog s2Step110EarlyControlHistoryArena false 0 0 254 787 []=some s2Step110EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step110EarlyControl_sigmaOwned⟩
  · exact s2Step110EarlyControl_sigmaRelease

private theorem s2Step110EarlyControl_zeroBorrow : s2Step110EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step110EarlyControlLog.zeroWork=some s2Step110EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step110EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step110EarlyControlZeroArena,s2Step110EarlyControlArena,s2Step110EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step110EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step110EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step110EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EarlyControl_zero : compileHmrEqualityLog s2Step110EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step110EarlyControlLog.zeroWork=some (s2Step110EarlyControlZeroArena,s2Step110EarlyControlLog.zeroWork,s2Step110EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step110EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step110EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step110EarlyControl_logged : s2Step110EarlyControlPlan.Logged s2Step110EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] 777 787 254 253 252 251 805 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step110EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step110EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step110EarlyControl_zero
  · exact s2Step110EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step110EarlyControl_flags
  · exact s2Step110EarlyControl_fit
  · exact s2Step110EarlyControl_history
  · exact s2Step110EarlyControl_sigma
  · exact s2Step110EarlyControl_branch

private theorem s2Step110EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step110EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] 777 787 254 253 252 251 805 37 s2Step110EarlyControlLog=some s2Step110EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step110EarlyControlPlan s2Step110EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] 777 787 254 253 252 251 805 37 s2Step110EarlyControl_logged

private def s2Step110EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩

private def s2Step110EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step110EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],769⟩

private def s2Step110EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩

private def s2Step110FrontBank : WindowBank := ⟨s2Step110EntryFRow,s2Step110EntryGRow,s2Step110EntryFvRow,s2Step110EntryGvRow⟩

private def s2Step110Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 808, 768]

private def s2Step110Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 815, 809, 769]

private def s2Step110Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 846, 770]

private def s2Step110Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 794, 771]

private theorem s2Step110Counter_apart : Disjoint s2Step110HeadFvAfter.live s2Step110CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step110HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110Counter_borrowed : s2Step110HeadFvAfter.checkBorrow 4 s2Step110CounterWork=some s2Step110CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step110HeadFvAfter s2Step110CounterDuring s2Step110CounterWork.toFinset s2Step110Counter_bounded s2Step110Counter_apart rfl

private theorem s2Step110Counter_owned : (787::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step110HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step110HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110Counter_checked : compileHmrCounterStepLog s2Step110HeadFvAfter true 787 [772, 773, 774, 775, 776, 777] s2Step110CounterWork=some s2Step110CounterDuring := by
  have owned : ∀q∈787::[772, 773, 774, 775, 776, 777],q∈s2Step110HeadFvAfter.live := fun q hq => s2Step110Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step110Counter_borrowed

private def s2Step110EntryFAfter : Arena := s2Step110EntryFBefore

private theorem s2Step110EntryBank_incomingDistinct : ([s2Step110EntryFRow,s2Step110EntryGRow,s2Step110EntryFvRow,s2Step110EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110EntryF_Incoming : rowsOwned s2Step110EntryFBefore [s2Step110EntryFRow,s2Step110EntryGRow,s2Step110EntryFvRow,s2Step110EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110EntryFRow,s2Step110EntryGRow,s2Step110EntryFvRow,s2Step110EntryGvRow] 0 s2Step110EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110EntryBank_outgoingOwned : rowsOwned s2Step110EntryGvAfter [s2Step110EntryFOut,s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step110EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110EntryF_Outgoing : rowsOwned s2Step110EntryGvAfter [s2Step110EntryFOut,s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut] :=
  hmrRows_owned_drop s2Step110EntryGvAfter [s2Step110EntryFOut,s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut] 0 s2Step110EntryBank_outgoingOwned

private theorem s2Step110EntryF_distinct : (s2Step110EntryFRow.sign::s2Step110EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110EntryF_owned : (s2Step110EntryFRow.sign::s2Step110EntryFRow.payload).toFinset⊆s2Step110EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EntryF_reserved : s2Step110EntryFBefore.reserve s2Step110EntryFFresh.toFinset=some s2Step110EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step110EntryFFresh,arenaWires]
  · norm_num [s2Step110EntryFBefore,s2Step110EntryFFresh,arenaWires]
  · simp only [s2Step110EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step110EntryF_checked : planRowResizeLog s2Step110EntryFBefore s2Step110EntryFRow 214 s2Step110EntryFFresh=
    some (s2Step110EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩,growRow 768 s2Step110EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step110EntryFBefore s2Step110EntryFAfter s2Step110EntryFRow 214 s2Step110EntryFFresh
    s2Step110EntryF_distinct s2Step110EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step110EntryF_reserved
  have rowEq : WindowRow.mk (s2Step110EntryFRow.payload++s2Step110EntryFFresh) s2Step110EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step110EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110EntryFvAfter : Arena := s2Step110EntryGAfter

private def s2Step110EntryFvBefore : Arena := s2Step110EntryGAfter

private theorem s2Step110EntryFv_Incoming : rowsOwned s2Step110EntryFvBefore [s2Step110EntryFvRow,s2Step110EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110EntryFRow,s2Step110EntryGRow,s2Step110EntryFvRow,s2Step110EntryGvRow] 2 s2Step110EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110EntryFv_Outgoing : rowsOwned s2Step110EntryGvAfter [s2Step110EntryFvOut,s2Step110EntryGvOut] :=
  hmrRows_owned_drop s2Step110EntryGvAfter [s2Step110EntryFOut,s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut] 2 s2Step110EntryBank_outgoingOwned

private theorem s2Step110EntryFv_distinct : (s2Step110EntryFvRow.sign::s2Step110EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110EntryFv_owned : (s2Step110EntryFvRow.sign::s2Step110EntryFvRow.payload).toFinset⊆s2Step110EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EntryFv_reserved : s2Step110EntryFvBefore.reserve s2Step110EntryFvFresh.toFinset=some s2Step110EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step110EntryFvFresh,arenaWires]
  · norm_num [s2Step110EntryFvBefore,s2Step110EntryGAfter,s2Step110EntryFvFresh,arenaWires]
  · simp only [s2Step110EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step110EntryFv_checked : planRowResizeLog s2Step110EntryFvBefore s2Step110EntryFvRow 69 s2Step110EntryFvFresh=
    some (s2Step110EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩,growRow 770 s2Step110EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step110EntryFvBefore s2Step110EntryFvAfter s2Step110EntryFvRow 69 s2Step110EntryFvFresh
    s2Step110EntryFv_distinct s2Step110EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step110EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step110EntryFvRow.payload++s2Step110EntryFvFresh) s2Step110EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step110EntryGBefore : Arena := s2Step110EntryFBefore

private theorem s2Step110EntryG_Incoming : rowsOwned s2Step110EntryGBefore [s2Step110EntryGRow,s2Step110EntryFvRow,s2Step110EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110EntryFRow,s2Step110EntryGRow,s2Step110EntryFvRow,s2Step110EntryGvRow] 1 s2Step110EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110EntryG_Outgoing : rowsOwned s2Step110EntryGvAfter [s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut] :=
  hmrRows_owned_drop s2Step110EntryGvAfter [s2Step110EntryFOut,s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut] 1 s2Step110EntryBank_outgoingOwned

private theorem s2Step110EntryG_distinct : (s2Step110EntryGRow.sign::s2Step110EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110EntryG_owned : (s2Step110EntryGRow.sign::s2Step110EntryGRow.payload).toFinset⊆s2Step110EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EntryG_reserved : s2Step110EntryGBefore.reserve s2Step110EntryGFresh.toFinset=some s2Step110EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step110EntryGFresh,arenaWires]
  · norm_num [s2Step110EntryGBefore,s2Step110EntryFBefore,s2Step110EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step110EntryGAfter,s2Step110EntryGBefore,s2Step110EntryFBefore,s2Step110EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step110EntryG_checked : planRowResizeLog s2Step110EntryGBefore s2Step110EntryGRow 214 s2Step110EntryGFresh=
    some (s2Step110EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 815],769⟩,growRow 769 s2Step110EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step110EntryGBefore s2Step110EntryGAfter s2Step110EntryGRow 214 s2Step110EntryGFresh
    s2Step110EntryG_distinct s2Step110EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step110EntryG_reserved
  have rowEq : WindowRow.mk (s2Step110EntryGRow.payload++s2Step110EntryGFresh) s2Step110EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 815],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step110EntryGvBefore : Arena := s2Step110EntryGAfter

private theorem s2Step110EntryGv_Incoming : rowsOwned s2Step110EntryGvBefore [s2Step110EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110EntryFRow,s2Step110EntryGRow,s2Step110EntryFvRow,s2Step110EntryGvRow] 3 s2Step110EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110EntryGv_Outgoing : rowsOwned s2Step110EntryGvAfter [s2Step110EntryGvOut] :=
  hmrRows_owned_drop s2Step110EntryGvAfter [s2Step110EntryFOut,s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut] 3 s2Step110EntryBank_outgoingOwned

private theorem s2Step110EntryGv_distinct : (s2Step110EntryGvRow.sign::s2Step110EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110EntryGv_owned : (s2Step110EntryGvRow.sign::s2Step110EntryGvRow.payload).toFinset⊆s2Step110EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110EntryGv_reserved : s2Step110EntryGvBefore.reserve s2Step110EntryGvFresh.toFinset=some s2Step110EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step110EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step110EntryGvBefore,s2Step110EntryGAfter,s2Step110EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step110EntryGvAfter,s2Step110EntryGvBefore,s2Step110EntryGAfter,s2Step110EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step110EntryGv_checked : planRowResizeLog s2Step110EntryGvBefore s2Step110EntryGvRow 69 s2Step110EntryGvFresh=
    some (s2Step110EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩,growRow 771 s2Step110EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step110EntryGvBefore s2Step110EntryGvAfter s2Step110EntryGvRow 69 s2Step110EntryGvFresh
    s2Step110EntryGv_distinct s2Step110EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step110EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step110EntryGvRow.payload++s2Step110EntryGvFresh) s2Step110EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step110EntryBank_rows : planWindowRowsLog s2Step110EntryFBefore [(s2Step110EntryFRow,214),(s2Step110EntryGRow,214),(s2Step110EntryFvRow,69),(s2Step110EntryGvRow,69)] [s2Step110EntryFFresh,s2Step110EntryGFresh,s2Step110EntryFvFresh,s2Step110EntryGvFresh]=
    some (s2Step110EntryGvAfter,[s2Step110EntryFOut,s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut],(growRow 768 s2Step110EntryFFresh ++ (growRow 769 s2Step110EntryGFresh ++ (growRow 770 s2Step110EntryFvFresh ++ (growRow 771 s2Step110EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step110EntryGvAfter [] []=some (s2Step110EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step110EntryGvBefore s2Step110EntryGvAfter s2Step110EntryGvAfter
    s2Step110EntryGvRow s2Step110EntryGvOut 69 s2Step110EntryGvFresh [] [] []
    (growRow 771 s2Step110EntryGvFresh) ([]) s2Step110EntryGv_Incoming s2Step110EntryGv_checked h4 s2Step110EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step110EntryFvBefore s2Step110EntryFvAfter s2Step110EntryGvAfter
    s2Step110EntryFvRow s2Step110EntryFvOut 69 s2Step110EntryFvFresh [(s2Step110EntryGvRow,69)] [s2Step110EntryGvFresh] [s2Step110EntryGvOut]
    (growRow 770 s2Step110EntryFvFresh) ((growRow 771 s2Step110EntryGvFresh ++ [])) s2Step110EntryFv_Incoming s2Step110EntryFv_checked h3 s2Step110EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step110EntryGBefore s2Step110EntryGAfter s2Step110EntryGvAfter
    s2Step110EntryGRow s2Step110EntryGOut 214 s2Step110EntryGFresh [(s2Step110EntryFvRow,69),(s2Step110EntryGvRow,69)] [s2Step110EntryFvFresh,s2Step110EntryGvFresh] [s2Step110EntryFvOut,s2Step110EntryGvOut]
    (growRow 769 s2Step110EntryGFresh) ((growRow 770 s2Step110EntryFvFresh ++ (growRow 771 s2Step110EntryGvFresh ++ []))) s2Step110EntryG_Incoming s2Step110EntryG_checked h2 s2Step110EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step110EntryFBefore s2Step110EntryFAfter s2Step110EntryGvAfter
    s2Step110EntryFRow s2Step110EntryFOut 214 s2Step110EntryFFresh [(s2Step110EntryGRow,214),(s2Step110EntryFvRow,69),(s2Step110EntryGvRow,69)] [s2Step110EntryGFresh,s2Step110EntryFvFresh,s2Step110EntryGvFresh] [s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut]
    (growRow 768 s2Step110EntryFFresh) ((growRow 769 s2Step110EntryGFresh ++ (growRow 770 s2Step110EntryFvFresh ++ (growRow 771 s2Step110EntryGvFresh ++ [])))) s2Step110EntryF_Incoming s2Step110EntryF_checked h1 s2Step110EntryF_Outgoing
  exact h0

private theorem s2Step110EntryBank_checked : compileHmrBankResizeLog .entry s2Step110EntryFBefore ⟨s2Step110EntryFRow,s2Step110EntryGRow,s2Step110EntryFvRow,s2Step110EntryGvRow⟩ ⟨214,214,69,69⟩ [s2Step110EntryFFresh,s2Step110EntryGFresh,s2Step110EntryFvFresh,s2Step110EntryGvFresh]=
    some (s2Step110EntryGvAfter,⟨s2Step110EntryFOut,s2Step110EntryGOut,s2Step110EntryFvOut,s2Step110EntryGvOut⟩,(growRow 768 s2Step110EntryFFresh ++ (growRow 769 s2Step110EntryGFresh ++ (growRow 770 s2Step110EntryFvFresh ++ (growRow 771 s2Step110EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step110EntryBank_rows]
  rfl

private def s2Step110ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<725) ∨ (726≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110ExitFBefore : Arena := s2Step110ExitGAfter

private def s2Step110ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 808],768⟩

private def s2Step110ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 846],770⟩

private def s2Step110ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 815, 809],769⟩

private def s2Step110ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 794],771⟩

private theorem s2Step110ExitBank_incomingDistinct : ([s2Step110ExitGRow,s2Step110ExitFRow,s2Step110ExitFvRow,s2Step110ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110ExitF_Incoming : rowsOwned s2Step110ExitFBefore [s2Step110ExitFRow,s2Step110ExitFvRow,s2Step110ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110ExitGRow,s2Step110ExitFRow,s2Step110ExitFvRow,s2Step110ExitGvRow] 1 s2Step110ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110ExitBank_outgoingOwned : rowsOwned s2Step110ExitGvAfter [s2Step110ExitGOut,s2Step110ExitFOut,s2Step110ExitFvOut,s2Step110ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step110ExitGvAfter (fun q => (0≤q ∧ q<725) ∨ (726≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110ExitF_Outgoing : rowsOwned s2Step110ExitGvAfter [s2Step110ExitFOut,s2Step110ExitFvOut,s2Step110ExitGvOut] :=
  hmrRows_owned_drop s2Step110ExitGvAfter [s2Step110ExitGOut,s2Step110ExitFOut,s2Step110ExitFvOut,s2Step110ExitGvOut] 1 s2Step110ExitBank_outgoingOwned

private theorem s2Step110ExitF_distinct : (s2Step110ExitFRow.sign::s2Step110ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110ExitF_owned : (s2Step110ExitFRow.sign::s2Step110ExitFRow.payload).toFinset⊆s2Step110ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110ExitF_retired : s2Step110ExitFBefore.retireSet s2Step110ExitFExtra.toFinset=s2Step110ExitFAfter := by
  unfold Arena.retireSet s2Step110ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step110ExitFBefore,s2Step110ExitGAfter,s2Step110ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step110ExitF_checked : planRowResizeLog s2Step110ExitFBefore s2Step110ExitFRow 213 []=
    some (s2Step110ExitFAfter,s2Step110ExitFOut,shrinkRow 768 s2Step110ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step110ExitFBefore s2Step110ExitFRow 213 s2Step110ExitF_distinct s2Step110ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step110ExitFRow.payload.take 213) s2Step110ExitFRow.sign=s2Step110ExitFOut := by decide +kernel
  have hi : s2Step110ExitFRow.payload.drop 213=s2Step110ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step110ExitF_retired] at result
  exact result

private def s2Step110ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<725) ∨ (726≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110ExitFvBefore : Arena := s2Step110ExitFAfter

private theorem s2Step110ExitFv_Incoming : rowsOwned s2Step110ExitFvBefore [s2Step110ExitFvRow,s2Step110ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110ExitGRow,s2Step110ExitFRow,s2Step110ExitFvRow,s2Step110ExitGvRow] 2 s2Step110ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110ExitFvBefore (fun q => (0≤q ∧ q<725) ∨ (726≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110ExitFv_Outgoing : rowsOwned s2Step110ExitGvAfter [s2Step110ExitFvOut,s2Step110ExitGvOut] :=
  hmrRows_owned_drop s2Step110ExitGvAfter [s2Step110ExitGOut,s2Step110ExitFOut,s2Step110ExitFvOut,s2Step110ExitGvOut] 2 s2Step110ExitBank_outgoingOwned

private theorem s2Step110ExitFv_distinct : (s2Step110ExitFvRow.sign::s2Step110ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110ExitFv_owned : (s2Step110ExitFvRow.sign::s2Step110ExitFvRow.payload).toFinset⊆s2Step110ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110ExitFvBefore (fun q => (0≤q ∧ q<725) ∨ (726≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110ExitFv_retired : s2Step110ExitFvBefore.retireSet s2Step110ExitFvExtra.toFinset=s2Step110ExitFvAfter := by
  unfold Arena.retireSet s2Step110ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step110ExitFvBefore,s2Step110ExitFAfter,s2Step110ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step110ExitFv_checked : planRowResizeLog s2Step110ExitFvBefore s2Step110ExitFvRow 69 []=
    some (s2Step110ExitFvAfter,s2Step110ExitFvOut,shrinkRow 770 s2Step110ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step110ExitFvBefore s2Step110ExitFvRow 69 s2Step110ExitFv_distinct s2Step110ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step110ExitFvRow.payload.take 69) s2Step110ExitFvRow.sign=s2Step110ExitFvOut := by decide +kernel
  have hi : s2Step110ExitFvRow.payload.drop 69=s2Step110ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step110ExitFv_retired] at result
  exact result

private def s2Step110ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private theorem s2Step110ExitG_Incoming : rowsOwned s2Step110ExitGBefore [s2Step110ExitGRow,s2Step110ExitFRow,s2Step110ExitFvRow,s2Step110ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110ExitGRow,s2Step110ExitFRow,s2Step110ExitFvRow,s2Step110ExitGvRow] 0 s2Step110ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110ExitG_Outgoing : rowsOwned s2Step110ExitGvAfter [s2Step110ExitGOut,s2Step110ExitFOut,s2Step110ExitFvOut,s2Step110ExitGvOut] :=
  hmrRows_owned_drop s2Step110ExitGvAfter [s2Step110ExitGOut,s2Step110ExitFOut,s2Step110ExitFvOut,s2Step110ExitGvOut] 0 s2Step110ExitBank_outgoingOwned

private theorem s2Step110ExitG_distinct : (s2Step110ExitGRow.sign::s2Step110ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110ExitG_owned : (s2Step110ExitGRow.sign::s2Step110ExitGRow.payload).toFinset⊆s2Step110ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110ExitG_retired : s2Step110ExitGBefore.retireSet s2Step110ExitGExtra.toFinset=s2Step110ExitGAfter := by
  unfold Arena.retireSet s2Step110ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step110ExitGBefore,s2Step110ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step110ExitG_checked : planRowResizeLog s2Step110ExitGBefore s2Step110ExitGRow 213 []=
    some (s2Step110ExitGAfter,s2Step110ExitGOut,shrinkRow 769 s2Step110ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step110ExitGBefore s2Step110ExitGRow 213 s2Step110ExitG_distinct s2Step110ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step110ExitGRow.payload.take 213) s2Step110ExitGRow.sign=s2Step110ExitGOut := by decide +kernel
  have hi : s2Step110ExitGRow.payload.drop 213=s2Step110ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step110ExitG_retired] at result
  exact result

private def s2Step110ExitGvBefore : Arena := s2Step110ExitFvAfter

private theorem s2Step110ExitGv_Incoming : rowsOwned s2Step110ExitGvBefore [s2Step110ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110ExitGRow,s2Step110ExitFRow,s2Step110ExitFvRow,s2Step110ExitGvRow] 3 s2Step110ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110ExitGvBefore (fun q => (0≤q ∧ q<725) ∨ (726≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110ExitGv_Outgoing : rowsOwned s2Step110ExitGvAfter [s2Step110ExitGvOut] :=
  hmrRows_owned_drop s2Step110ExitGvAfter [s2Step110ExitGOut,s2Step110ExitFOut,s2Step110ExitFvOut,s2Step110ExitGvOut] 3 s2Step110ExitBank_outgoingOwned

private theorem s2Step110ExitGv_distinct : (s2Step110ExitGvRow.sign::s2Step110ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110ExitGv_owned : (s2Step110ExitGvRow.sign::s2Step110ExitGvRow.payload).toFinset⊆s2Step110ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110ExitGvBefore (fun q => (0≤q ∧ q<725) ∨ (726≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110ExitGv_retired : s2Step110ExitGvBefore.retireSet s2Step110ExitGvExtra.toFinset=s2Step110ExitGvAfter := by
  unfold Arena.retireSet s2Step110ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step110ExitGvBefore,s2Step110ExitFvAfter,s2Step110ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step110ExitGv_checked : planRowResizeLog s2Step110ExitGvBefore s2Step110ExitGvRow 69 []=
    some (s2Step110ExitGvAfter,s2Step110ExitGvOut,shrinkRow 771 s2Step110ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step110ExitGvBefore s2Step110ExitGvRow 69 s2Step110ExitGv_distinct s2Step110ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step110ExitGvRow.payload.take 69) s2Step110ExitGvRow.sign=s2Step110ExitGvOut := by decide +kernel
  have hi : s2Step110ExitGvRow.payload.drop 69=s2Step110ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step110ExitGv_retired] at result
  exact result

private theorem s2Step110ExitBank_rows : planWindowRowsLog s2Step110ExitGBefore [(s2Step110ExitGRow,213),(s2Step110ExitFRow,213),(s2Step110ExitFvRow,69),(s2Step110ExitGvRow,69)] [[],[],[],[]]=
    some (s2Step110ExitGvAfter,[s2Step110ExitGOut,s2Step110ExitFOut,s2Step110ExitFvOut,s2Step110ExitGvOut],(shrinkRow 769 s2Step110ExitGExtra ++ (shrinkRow 768 s2Step110ExitFExtra ++ (shrinkRow 770 s2Step110ExitFvExtra ++ (shrinkRow 771 s2Step110ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step110ExitGvAfter [] []=some (s2Step110ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step110ExitGvBefore s2Step110ExitGvAfter s2Step110ExitGvAfter
    s2Step110ExitGvRow s2Step110ExitGvOut 69 [] [] [] []
    (shrinkRow 771 s2Step110ExitGvExtra) ([]) s2Step110ExitGv_Incoming s2Step110ExitGv_checked h4 s2Step110ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step110ExitFvBefore s2Step110ExitFvAfter s2Step110ExitGvAfter
    s2Step110ExitFvRow s2Step110ExitFvOut 69 [] [(s2Step110ExitGvRow,69)] [[]] [s2Step110ExitGvOut]
    (shrinkRow 770 s2Step110ExitFvExtra) ((shrinkRow 771 s2Step110ExitGvExtra ++ [])) s2Step110ExitFv_Incoming s2Step110ExitFv_checked h3 s2Step110ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step110ExitFBefore s2Step110ExitFAfter s2Step110ExitGvAfter
    s2Step110ExitFRow s2Step110ExitFOut 213 [] [(s2Step110ExitFvRow,69),(s2Step110ExitGvRow,69)] [[],[]] [s2Step110ExitFvOut,s2Step110ExitGvOut]
    (shrinkRow 768 s2Step110ExitFExtra) ((shrinkRow 770 s2Step110ExitFvExtra ++ (shrinkRow 771 s2Step110ExitGvExtra ++ []))) s2Step110ExitF_Incoming s2Step110ExitF_checked h2 s2Step110ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step110ExitGBefore s2Step110ExitGAfter s2Step110ExitGvAfter
    s2Step110ExitGRow s2Step110ExitGOut 213 [] [(s2Step110ExitFRow,213),(s2Step110ExitFvRow,69),(s2Step110ExitGvRow,69)] [[],[],[]] [s2Step110ExitFOut,s2Step110ExitFvOut,s2Step110ExitGvOut]
    (shrinkRow 769 s2Step110ExitGExtra) ((shrinkRow 768 s2Step110ExitFExtra ++ (shrinkRow 770 s2Step110ExitFvExtra ++ (shrinkRow 771 s2Step110ExitGvExtra ++ [])))) s2Step110ExitG_Incoming s2Step110ExitG_checked h1 s2Step110ExitG_Outgoing
  exact h0

private theorem s2Step110ExitBank_checked : compileHmrBankResizeLog .exit s2Step110ExitGBefore ⟨s2Step110ExitFRow,s2Step110ExitGRow,s2Step110ExitFvRow,s2Step110ExitGvRow⟩ ⟨213,213,69,69⟩ [[],[],[],[]]=
    some (s2Step110ExitGvAfter,⟨s2Step110ExitFOut,s2Step110ExitGOut,s2Step110ExitFvOut,s2Step110ExitGvOut⟩,(shrinkRow 769 s2Step110ExitGExtra ++ (shrinkRow 768 s2Step110ExitFExtra ++ (shrinkRow 770 s2Step110ExitFvExtra ++ (shrinkRow 771 s2Step110ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step110ExitBank_rows]
  rfl

private theorem s2Step110Add0_apart : Disjoint s2Step110Add0Arena.live s2Step110Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step110Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110Add0_card : s2Step110Add0Arena.live.card=876 := by
  decide +kernel

private theorem s2Step110Add0_borrowed : s2Step110Add0Arena.checkBorrow (hmrHybridCount s2Step110Add0Arena s2Step110Add0B.length) s2Step110Add0Work=some s2Step110Add0During := by
  have len : s2Step110Add0Work.length=hmrHybridCount s2Step110Add0Arena s2Step110Add0B.length := by
    rw [hmrHybridCount,s2Step110Add0_card]
    decide +kernel
  have nd : s2Step110Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step110Add0Arena s2Step110Add0During s2Step110Add0Work.toFinset s2Step110Add0_bounded s2Step110Add0_apart rfl

private theorem s2Step110Add0_distinct : (781::805::849::(s2Step110Add0A++s2Step110Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110Add0_owned : (781::805::849::(s2Step110Add0A++s2Step110Add0B)).toFinset⊆s2Step110Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step110Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110Add0_checked : compileHmrHybridCinLog s2Step110Add0Arena 805 781 849 s2Step110Add0A s2Step110Add0B s2Step110Add0Work=some s2Step110Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step110Add0Arena s2Step110Add0During 805 781 849 s2Step110Add0A s2Step110Add0B s2Step110Add0Work
    (by decide +kernel) (by decide +kernel) s2Step110Add0_distinct
    (fun q hq => s2Step110Add0_owned (List.mem_toFinset.mpr hq)) s2Step110Add0_borrowed

private theorem s2Step110Add1_apart : Disjoint s2Step110Add1Arena.live s2Step110Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step110Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110Add1_card : s2Step110Add1Arena.live.card=876 := by
  decide +kernel

private theorem s2Step110Add1_borrowed : s2Step110Add1Arena.checkBorrow (hmrHybridCount s2Step110Add1Arena s2Step110Add1B.length) s2Step110Add1Work=some s2Step110Add1During := by
  have len : s2Step110Add1Work.length=hmrHybridCount s2Step110Add1Arena s2Step110Add1B.length := by
    rw [hmrHybridCount,s2Step110Add1_card]
    decide +kernel
  have nd : s2Step110Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step110Add1Arena s2Step110Add1During s2Step110Add1Work.toFinset s2Step110Add1_bounded s2Step110Add1_apart rfl

private theorem s2Step110Add1_distinct : (781::805::849::(s2Step110Add1A++s2Step110Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110Add1_owned : (781::805::849::(s2Step110Add1A++s2Step110Add1B)).toFinset⊆s2Step110Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step110Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110Add1_checked : compileHmrHybridCinLog s2Step110Add1Arena 805 781 849 s2Step110Add1A s2Step110Add1B s2Step110Add1Work=some s2Step110Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step110Add1Arena s2Step110Add1During 805 781 849 s2Step110Add1A s2Step110Add1B s2Step110Add1Work
    (by decide +kernel) (by decide +kernel) s2Step110Add1_distinct
    (fun q hq => s2Step110Add1_owned (List.mem_toFinset.mpr hq)) s2Step110Add1_borrowed

private theorem s2Step110F4_apart : Disjoint (s2Step110Add0A++s2Step110Add0B).toFinset (s2Step110Add1A++s2Step110Add1B).toFinset := by
  have nd : ((s2Step110Add0A++s2Step110Add0B)++(s2Step110Add1A++s2Step110Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step110F4_carry : s2Step110F4FlagArena.checkBorrow 1 [849]=some s2Step110Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step110F4FlagArena,s2Step110HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step110F4FlagArena,s2Step110HeadFvAfter,s2Step110Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step110F4_distinct : (787::805::781::849::((s2Step110Add0A++s2Step110Add1A)++(s2Step110Add0B++s2Step110Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110F4_flag : s2Step110HeadFvAfter.checkBorrow 1 [781]=some s2Step110F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step110HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step110F4_owned : (787::805::((s2Step110Add0A++s2Step110Add1A)++(s2Step110Add0B++s2Step110Add1B))).toFinset⊆s2Step110HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step110HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110F4_checked : compileHmrHybridF4Log s2Step110HeadFvAfter 787 805 s2Step110Add0A s2Step110Add0B s2Step110Add1A s2Step110Add1B [781] [849] s2Step110Add0Work s2Step110Add1Work=some s2Step110F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step110HeadFvAfter s2Step110F4FlagArena s2Step110Add0Arena s2Step110Add0During s2Step110Add1During 787 805
    s2Step110Add0A s2Step110Add0B s2Step110Add1A s2Step110Add1B [781] [849] s2Step110Add0Work s2Step110Add1Work
    (fun q hq => s2Step110F4_owned (List.mem_toFinset.mpr hq)) s2Step110F4_flag s2Step110F4_carry
    s2Step110F4_distinct s2Step110F4_apart s2Step110Add0_checked s2Step110Add1_checked

private theorem s2Step110Front_branch : s2Step110FrontSigmaArena.checkBorrow 1 [805]=some s2Step110HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step110FrontSigmaArena,s2Step110EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step110FrontSigmaArena,s2Step110EntryGvAfter,s2Step110HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step110Front_entry : HmrFrontEntryValid s2Step110EntryFBefore s2Step110FrontBank 214 69 ⟨213,213,69,69⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step110FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step110EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step110EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step110FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step110Front_sigma : s2Step110EntryGvAfter.checkBorrow 1 [787]=some s2Step110FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step110EntryGvAfter,arenaWires]
  · rfl

private def s2Step110HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110HeadFBefore : Arena := s2Step110HeadGAfter

private def s2Step110HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩

private def s2Step110HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step110HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 815],769⟩

private def s2Step110HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private theorem s2Step110HeadBank_incomingDistinct : ([s2Step110HeadGRow,s2Step110HeadFRow,s2Step110HeadGvRow,s2Step110HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110HeadF_Incoming : rowsOwned s2Step110HeadFBefore [s2Step110HeadFRow,s2Step110HeadGvRow,s2Step110HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110HeadGRow,s2Step110HeadFRow,s2Step110HeadGvRow,s2Step110HeadFvRow] 1 s2Step110HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110HeadBank_outgoingOwned : rowsOwned s2Step110HeadFvAfter [s2Step110HeadGOut,s2Step110HeadFOut,s2Step110HeadGvOut,s2Step110HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step110HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110HeadF_Outgoing : rowsOwned s2Step110HeadFvAfter [s2Step110HeadFOut,s2Step110HeadGvOut,s2Step110HeadFvOut] :=
  hmrRows_owned_drop s2Step110HeadFvAfter [s2Step110HeadGOut,s2Step110HeadFOut,s2Step110HeadGvOut,s2Step110HeadFvOut] 1 s2Step110HeadBank_outgoingOwned

private theorem s2Step110HeadF_distinct : (s2Step110HeadFRow.sign::s2Step110HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110HeadF_owned : (s2Step110HeadFRow.sign::s2Step110HeadFRow.payload).toFinset⊆s2Step110HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110HeadF_reserved : s2Step110HeadFBefore.reserve s2Step110HeadFFresh.toFinset=some s2Step110HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step110HeadFFresh,arenaWires]
  · norm_num [s2Step110HeadFBefore,s2Step110HeadGAfter,s2Step110HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step110HeadFAfter,s2Step110HeadFBefore,s2Step110HeadGAfter,s2Step110HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step110HeadF_checked : planRowResizeLog s2Step110HeadFBefore s2Step110HeadFRow 215 s2Step110HeadFFresh=
    some (s2Step110HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 808],768⟩,growRow 768 s2Step110HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step110HeadFBefore s2Step110HeadFAfter s2Step110HeadFRow 215 s2Step110HeadFFresh
    s2Step110HeadF_distinct s2Step110HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step110HeadF_reserved
  have rowEq : WindowRow.mk (s2Step110HeadFRow.payload++s2Step110HeadFFresh) s2Step110HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 808],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step110HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step110HeadFvBefore : Arena := s2Step110HeadGvAfter

private theorem s2Step110HeadFv_Incoming : rowsOwned s2Step110HeadFvBefore [s2Step110HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110HeadGRow,s2Step110HeadFRow,s2Step110HeadGvRow,s2Step110HeadFvRow] 3 s2Step110HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110HeadFv_Outgoing : rowsOwned s2Step110HeadFvAfter [s2Step110HeadFvOut] :=
  hmrRows_owned_drop s2Step110HeadFvAfter [s2Step110HeadGOut,s2Step110HeadFOut,s2Step110HeadGvOut,s2Step110HeadFvOut] 3 s2Step110HeadBank_outgoingOwned

private theorem s2Step110HeadFv_distinct : (s2Step110HeadFvRow.sign::s2Step110HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110HeadFv_owned : (s2Step110HeadFvRow.sign::s2Step110HeadFvRow.payload).toFinset⊆s2Step110HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110HeadFv_reserved : s2Step110HeadFvBefore.reserve s2Step110HeadFvFresh.toFinset=some s2Step110HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step110HeadFvFresh,arenaWires]
  · norm_num [s2Step110HeadFvBefore,s2Step110HeadGvAfter,s2Step110HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step110HeadFvAfter,s2Step110HeadFvBefore,s2Step110HeadGvAfter,s2Step110HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step110HeadFv_checked : planRowResizeLog s2Step110HeadFvBefore s2Step110HeadFvRow 70 s2Step110HeadFvFresh=
    some (s2Step110HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 846],770⟩,growRow 770 s2Step110HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step110HeadFvBefore s2Step110HeadFvAfter s2Step110HeadFvRow 70 s2Step110HeadFvFresh
    s2Step110HeadFv_distinct s2Step110HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step110HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step110HeadFvRow.payload++s2Step110HeadFvFresh) s2Step110HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step110HeadG_Incoming : rowsOwned s2Step110HeadGBefore [s2Step110HeadGRow,s2Step110HeadFRow,s2Step110HeadGvRow,s2Step110HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110HeadGRow,s2Step110HeadFRow,s2Step110HeadGvRow,s2Step110HeadFvRow] 0 s2Step110HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110HeadG_Outgoing : rowsOwned s2Step110HeadFvAfter [s2Step110HeadGOut,s2Step110HeadFOut,s2Step110HeadGvOut,s2Step110HeadFvOut] :=
  hmrRows_owned_drop s2Step110HeadFvAfter [s2Step110HeadGOut,s2Step110HeadFOut,s2Step110HeadGvOut,s2Step110HeadFvOut] 0 s2Step110HeadBank_outgoingOwned

private theorem s2Step110HeadG_distinct : (s2Step110HeadGRow.sign::s2Step110HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110HeadG_owned : (s2Step110HeadGRow.sign::s2Step110HeadGRow.payload).toFinset⊆s2Step110HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110HeadG_reserved : s2Step110HeadGBefore.reserve s2Step110HeadGFresh.toFinset=some s2Step110HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step110HeadGFresh,arenaWires]
  · norm_num [s2Step110HeadGBefore,s2Step110HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step110HeadGAfter,s2Step110HeadGBefore,s2Step110HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step110HeadG_checked : planRowResizeLog s2Step110HeadGBefore s2Step110HeadGRow 215 s2Step110HeadGFresh=
    some (s2Step110HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 815, 809],769⟩,growRow 769 s2Step110HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step110HeadGBefore s2Step110HeadGAfter s2Step110HeadGRow 215 s2Step110HeadGFresh
    s2Step110HeadG_distinct s2Step110HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step110HeadG_reserved
  have rowEq : WindowRow.mk (s2Step110HeadGRow.payload++s2Step110HeadGFresh) s2Step110HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 815, 809],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step110HeadGvBefore : Arena := s2Step110HeadFAfter

private theorem s2Step110HeadGv_Incoming : rowsOwned s2Step110HeadGvBefore [s2Step110HeadGvRow,s2Step110HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step110HeadGRow,s2Step110HeadFRow,s2Step110HeadGvRow,s2Step110HeadFvRow] 2 s2Step110HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step110HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step110HeadGv_Outgoing : rowsOwned s2Step110HeadFvAfter [s2Step110HeadGvOut,s2Step110HeadFvOut] :=
  hmrRows_owned_drop s2Step110HeadFvAfter [s2Step110HeadGOut,s2Step110HeadFOut,s2Step110HeadGvOut,s2Step110HeadFvOut] 2 s2Step110HeadBank_outgoingOwned

private theorem s2Step110HeadGv_distinct : (s2Step110HeadGvRow.sign::s2Step110HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step110HeadGv_owned : (s2Step110HeadGvRow.sign::s2Step110HeadGvRow.payload).toFinset⊆s2Step110HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step110HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step110HeadGv_reserved : s2Step110HeadGvBefore.reserve s2Step110HeadGvFresh.toFinset=some s2Step110HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step110HeadGvFresh,arenaWires]
  · norm_num [s2Step110HeadGvBefore,s2Step110HeadFAfter,s2Step110HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step110HeadGvAfter,s2Step110HeadGvBefore,s2Step110HeadFAfter,s2Step110HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step110HeadGv_checked : planRowResizeLog s2Step110HeadGvBefore s2Step110HeadGvRow 70 s2Step110HeadGvFresh=
    some (s2Step110HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 794],771⟩,growRow 771 s2Step110HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step110HeadGvBefore s2Step110HeadGvAfter s2Step110HeadGvRow 70 s2Step110HeadGvFresh
    s2Step110HeadGv_distinct s2Step110HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step110HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step110HeadGvRow.payload++s2Step110HeadGvFresh) s2Step110HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step110HeadBank_rows : planWindowRowsLog s2Step110HeadGBefore [(s2Step110HeadGRow,215),(s2Step110HeadFRow,215),(s2Step110HeadGvRow,70),(s2Step110HeadFvRow,70)] [s2Step110HeadGFresh,s2Step110HeadFFresh,s2Step110HeadGvFresh,s2Step110HeadFvFresh]=
    some (s2Step110HeadFvAfter,[s2Step110HeadGOut,s2Step110HeadFOut,s2Step110HeadGvOut,s2Step110HeadFvOut],(growRow 769 s2Step110HeadGFresh ++ (growRow 768 s2Step110HeadFFresh ++ (growRow 771 s2Step110HeadGvFresh ++ (growRow 770 s2Step110HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step110HeadFvAfter [] []=some (s2Step110HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step110HeadFvBefore s2Step110HeadFvAfter s2Step110HeadFvAfter
    s2Step110HeadFvRow s2Step110HeadFvOut 70 s2Step110HeadFvFresh [] [] []
    (growRow 770 s2Step110HeadFvFresh) ([]) s2Step110HeadFv_Incoming s2Step110HeadFv_checked h4 s2Step110HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step110HeadGvBefore s2Step110HeadGvAfter s2Step110HeadFvAfter
    s2Step110HeadGvRow s2Step110HeadGvOut 70 s2Step110HeadGvFresh [(s2Step110HeadFvRow,70)] [s2Step110HeadFvFresh] [s2Step110HeadFvOut]
    (growRow 771 s2Step110HeadGvFresh) ((growRow 770 s2Step110HeadFvFresh ++ [])) s2Step110HeadGv_Incoming s2Step110HeadGv_checked h3 s2Step110HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step110HeadFBefore s2Step110HeadFAfter s2Step110HeadFvAfter
    s2Step110HeadFRow s2Step110HeadFOut 215 s2Step110HeadFFresh [(s2Step110HeadGvRow,70),(s2Step110HeadFvRow,70)] [s2Step110HeadGvFresh,s2Step110HeadFvFresh] [s2Step110HeadGvOut,s2Step110HeadFvOut]
    (growRow 768 s2Step110HeadFFresh) ((growRow 771 s2Step110HeadGvFresh ++ (growRow 770 s2Step110HeadFvFresh ++ []))) s2Step110HeadF_Incoming s2Step110HeadF_checked h2 s2Step110HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step110HeadGBefore s2Step110HeadGAfter s2Step110HeadFvAfter
    s2Step110HeadGRow s2Step110HeadGOut 215 s2Step110HeadGFresh [(s2Step110HeadFRow,215),(s2Step110HeadGvRow,70),(s2Step110HeadFvRow,70)] [s2Step110HeadFFresh,s2Step110HeadGvFresh,s2Step110HeadFvFresh] [s2Step110HeadFOut,s2Step110HeadGvOut,s2Step110HeadFvOut]
    (growRow 769 s2Step110HeadGFresh) ((growRow 768 s2Step110HeadFFresh ++ (growRow 771 s2Step110HeadGvFresh ++ (growRow 770 s2Step110HeadFvFresh ++ [])))) s2Step110HeadG_Incoming s2Step110HeadG_checked h1 s2Step110HeadG_Outgoing
  exact h0

private theorem s2Step110HeadBank_checked : compileHmrBankResizeLog .headroom s2Step110HeadGBefore ⟨s2Step110HeadFRow,s2Step110HeadGRow,s2Step110HeadFvRow,s2Step110HeadGvRow⟩ ⟨215,215,70,70⟩ [s2Step110HeadGFresh,s2Step110HeadFFresh,s2Step110HeadGvFresh,s2Step110HeadFvFresh]=
    some (s2Step110HeadFvAfter,⟨s2Step110HeadFOut,s2Step110HeadGOut,s2Step110HeadFvOut,s2Step110HeadGvOut⟩,(growRow 769 s2Step110HeadGFresh ++ (growRow 768 s2Step110HeadFFresh ++ (growRow 771 s2Step110HeadGvFresh ++ (growRow 770 s2Step110HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step110HeadBank_rows]
  rfl

private theorem s2Step110Front_checked : compileHmrSourceFrontLog s2Step110EntryFBefore s2Step110FrontBank 214 69 ⟨213,213,69,69⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step110FrontLog=some s2Step110FrontPlan := by
  have pairEq : s2Step110FrontPair=⟨s2Step110HeadFRow,s2Step110HeadGRow,s2Step110HeadFvRow,s2Step110HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step110FrontHead=⟨s2Step110ExitFRow,s2Step110ExitGRow,s2Step110ExitFvRow,s2Step110ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step110Add0A=s2Step110FrontHead.f.wires := by decide +kernel
  have gEq : s2Step110Add0B=s2Step110FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step110Add1A=s2Step110FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step110Add1B=s2Step110FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step110EntryFBefore s2Step110FrontBank 214 69 ⟨213,213,69,69⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step110FrontLog s2Step110FrontPlan
  · exact s2Step110Front_entry
  · exact s2Step110EntryBank_checked
  · exact s2Step110Front_sigma
  · rfl
  · exact s2Step110Front_branch
  · rfl
  · simpa only [s2Step110FrontPlan,pairEq] using s2Step110HeadBank_checked
  · simpa only [s2Step110FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step110F4_checked
  · exact s2Step110Counter_checked
  · rfl
  · simpa only [s2Step110FrontPlan,headEq] using s2Step110ExitBank_checked

private theorem s2Step110Complete_explicit_checked : compileHmrEarlyStepLog s2Step110EntryFBefore s2Step110FrontBank 214 69 ⟨213,213,69,69⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] 37 s2Step110CompleteLog=some s2Step110CompletePlan := by
  let Q := s2Step110EarlyControlPlan
  have hq := s2Step110EarlyControl_plan_checked
  have fv1 : s2Step110CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step110CompleteOut.fv.payload[2]?.getD s2Step110CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step110CompleteOut.fv.payload[3]?.getD s2Step110CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step110CompleteOut.fv.payload[4]?.getD s2Step110CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step110EntryFBefore s2Step110EarlyControlArena s2Step110FrontBank 214 69 ⟨213,213,69,69⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] 37 s2Step110CompleteLog s2Step110FrontPlan Q
    s2Step110Front_checked s2Step110Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step110Complete_owned s2Step110Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step110EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] 777 787 s2Step110CompleteOut.fv.second (s2Step110CompleteOut.fv.payload[2]?.getD s2Step110CompleteOut.fv.sign) (s2Step110CompleteOut.fv.payload[3]?.getD s2Step110CompleteOut.fv.sign) (s2Step110CompleteOut.fv.payload[4]?.getD s2Step110CompleteOut.fv.sign) 805 37 s2Step110EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep110Arena : Arena := s2Step110EntryFBefore
def s2PrivateStep110Bank : WindowBank := s2Step110FrontBank
def s2PrivateStep110Spec : HmrSourceWalkStepLog := ⟨214,69,⟨213,213,69,69⟩,37,.early s2Step110CompleteLog⟩
def s2PrivateStep110Plan : HmrSourceStepPlan := .early s2Step110CompletePlan
theorem s2PrivateStep110_source : s2PrivateStep110Spec=s2ObservedLogs96[14] := rfl
theorem s2PrivateStep110_checked : compileHmrSourceStepLog s2PrivateStep110Arena s2PrivateStep110Bank
    s2PrivateStep110Spec.fgWidth s2PrivateStep110Spec.vWidth s2PrivateStep110Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878]
    6 498 110 s2PrivateStep110Spec.need none s2PrivateStep110Spec.log=some s2PrivateStep110Plan := by
  change compileHmrSourceStepLog s2Step110EntryFBefore s2Step110FrontBank 214 69 ⟨213,213,69,69⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878] 6 498 110 37 none (.early s2Step110CompleteLog)=some (.early s2Step110CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 110<498)]
  rw [s2Step110Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
