import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep253
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

private def s2Step255CompleteMoves : List (Wire × Wire) := [(817,142),(840,655)]

private def s2Step255EarlyControlLog : HmrEarlyControlLog := ⟨[840, 817, 885, 891, 792],[830],[800],[894, 896, 901, 902, 903, 904],[]⟩

private def s2Step255FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [830], [], [827, 784]],[[800], [792], [885], [891]],[[], [], [], []]⟩,[814],[782],[894],[896],[901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 902]⟩

private def s2Step255CompleteLog : HmrEarlyStepLog := ⟨s2Step255FrontLog,s2Step255CompleteMoves,s2Step255EarlyControlLog⟩

private def s2Step255ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654],768⟩

private def s2Step255ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step255ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩

private def s2Step255ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step255FrontOut : WindowBank := ⟨s2Step255ExitFOut,s2Step255ExitGOut,s2Step255ExitFvOut,s2Step255ExitGvOut⟩

private def s2Step255CompleteOut : WindowBank := s2Step255FrontOut.repacked s2Step255CompleteMoves

private def s2Step255EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step255EarlyControlPositiveArena,[830],s2Step255EarlyControlEqualityArena,[800],⟨⟨814,false⟩,[⟨⟨830,false⟩,800⟩]⟩⟩

private def s2Step255EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905)),Finset.filter_subset _ _⟩

private def s2Step255EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905)),Finset.filter_subset _ _⟩

private def s2Step255EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,840⟩,⟨⟨774,false⟩,817⟩,⟨⟨775,false⟩,885⟩,⟨⟨776,false⟩,891⟩,⟨⟨777,false⟩,792⟩]⟩

private def s2Step255EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step255EarlyControlZeroArena,s2Step255EarlyControlZeroPlan,s2Step255EarlyControlClassPlan,s2Step255EarlyControlFlagArena,s2Step255EarlyControlFittedArena,s2Step255EarlyControlHistoryArena,s2Step255EarlyControlSigmaArena,s2Step255EarlyControlOutputArena,s2Step255EarlyControlLog⟩

private def s2Step255CounterWork : List Wire := [894, 896, 901, 902]

private theorem s2Step255Counter_bounded : s2Step255CounterWork.toFinset⊆arenaWires := by norm_num [s2Step255CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step255HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255CounterDuring : Arena := ⟨s2Step255HeadFvAfter.live∪s2Step255CounterWork.toFinset,Finset.union_subset s2Step255HeadFvAfter.bounded s2Step255Counter_bounded⟩

private def s2Step255EntryFFresh : List Wire := []

private def s2Step255EntryFvFresh : List Wire := []

private def s2Step255EntryGFresh : List Wire := [830]

private def s2Step255EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255EntryGvFresh : List Wire := [827, 784]

private def s2Step255ExitFExtra : List Wire := [655, 792]

private def s2Step255ExitFvExtra : List Wire := [891]

private def s2Step255ExitGExtra : List Wire := [142, 830, 800]

private def s2Step255ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<655) ∨ (656≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255ExitGvExtra : List Wire := [885]

private def s2Step255Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255Add0Work : List Wire := [901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step255Add0_bounded : s2Step255Add0Work.toFinset⊆arenaWires := by
  have h : s2Step255Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step255Add0During : Arena := ⟨s2Step255Add0Arena.live∪s2Step255Add0Work.toFinset,Finset.union_subset s2Step255Add0Arena.bounded s2Step255Add0_bounded⟩

private def s2Step255Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255Add1Work : List Wire := [901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step255Add1_bounded : s2Step255Add1Work.toFinset⊆arenaWires := by
  have h : s2Step255Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step255Add1During : Arena := ⟨s2Step255Add1Arena.live∪s2Step255Add1Work.toFinset,Finset.union_subset s2Step255Add1Arena.bounded s2Step255Add1_bounded⟩

private def s2Step255F4FlagArena : Arena := ⟨s2Step255HeadFvAfter.live∪{894},Finset.union_subset s2Step255HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step255F4Plan : HmrHybridF4Plan := ⟨s2Step255F4FlagArena,[894],s2Step255Add0Arena,[896],s2Step255Add0During,s2Step255Add0Work,s2Step255Add1During,s2Step255Add1Work⟩

private def s2Step255HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 792],768⟩

private def s2Step255HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 891],770⟩

private def s2Step255HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830, 800],769⟩

private def s2Step255HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 885],771⟩

private def s2Step255FrontHead : WindowBank := ⟨s2Step255HeadFOut,s2Step255HeadGOut,s2Step255HeadFvOut,s2Step255HeadGvOut⟩

private def s2Step255EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step255EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step255EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830],769⟩

private def s2Step255EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step255FrontPair : WindowBank := ⟨s2Step255EntryFOut,s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut⟩

private def s2Step255FrontSigmaArena : Arena := ⟨s2Step255EntryGvAfter.live∪{814},Finset.union_subset s2Step255EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step255HeadFFresh : List Wire := [792]

private def s2Step255HeadFvFresh : List Wire := [891]

private def s2Step255HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255HeadGFresh : List Wire := [800]

private def s2Step255HeadGvFresh : List Wire := [885]

private def s2Step255FrontPlan : HmrSourceFront := ⟨s2Step255EntryGvAfter,s2Step255FrontPair,(growRow 768 s2Step255EntryFFresh ++ (growRow 769 s2Step255EntryGFresh ++ (growRow 770 s2Step255EntryFvFresh ++ (growRow 771 s2Step255EntryGvFresh ++ [])))),s2Step255FrontSigmaArena,[814],s2Step255HeadGBefore,[782],
  s2Step255HeadFvAfter,s2Step255FrontHead,(growRow 769 s2Step255HeadGFresh ++ (growRow 768 s2Step255HeadFFresh ++ (growRow 771 s2Step255HeadGvFresh ++ (growRow 770 s2Step255HeadFvFresh ++ [])))),s2Step255F4Plan,s2Step255CounterDuring,s2Step255CounterWork,s2Step255ExitGvAfter,s2Step255FrontOut,(shrinkRow 769 s2Step255ExitGExtra ++ (shrinkRow 768 s2Step255ExitFExtra ++ (shrinkRow 770 s2Step255ExitFvExtra ++ (shrinkRow 771 s2Step255ExitGvExtra ++ []))))⟩

private def s2Step255CompletePlan : HmrEarlyStepPlan := ⟨s2Step255FrontPlan,s2Step255EarlyControlArena,s2Step255EarlyControlPlan,s2Step255CompleteMoves⟩

private theorem s2Step255Complete_apart : List.Disjoint (s2Step255CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [814, 782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step255CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[814, 782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step255Complete_owned : (s2Step255CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step255EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step255CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,655),(656,792),(793,800),(801,817),(818,830),(831,885),(886,891),(892,894),(895,896),(897,901)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step255CompleteRelocationMove0Borrowed : Arena := ⟨s2Step255ExitGvAfter.live∪{142},Finset.union_subset s2Step255ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step255CompleteRelocationMove1Borrowed : Arena := ⟨s2Step255CompleteRelocationMove0After.live∪{655},Finset.union_subset s2Step255CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step255CompleteRelocation_move0_owned : 817∈s2Step255ExitGvAfter.live := by norm_num [s2Step255ExitGvAfter,arenaWires]

private theorem s2Step255CompleteRelocation_move0_reserve : s2Step255ExitGvAfter.reserve {142}=some s2Step255CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step255ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step255CompleteRelocation_move0_retire : s2Step255CompleteRelocationMove0Borrowed.retireSet {817}=s2Step255CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step255CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step255CompleteRelocationMove0Borrowed,s2Step255ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step255CompleteRelocation_move1_owned : 840∈s2Step255CompleteRelocationMove0After.live := by norm_num [s2Step255CompleteRelocationMove0After,arenaWires]

private theorem s2Step255CompleteRelocation_move1_reserve : s2Step255CompleteRelocationMove0After.reserve {655}=some s2Step255CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step255CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step255CompleteRelocation_move1_retire : s2Step255CompleteRelocationMove1Borrowed.retireSet {840}=s2Step255EarlyControlArena := by
  unfold Arena.retireSet s2Step255EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step255CompleteRelocationMove1Borrowed,s2Step255CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step255CompleteRelocation_checked : s2Step255ExitGvAfter.checkRepack [(817,142),(840,655)]=some s2Step255EarlyControlArena := by
  have tail2 : s2Step255EarlyControlArena.checkRepack []=some s2Step255EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step255CompleteRelocationMove0After s2Step255CompleteRelocationMove1Borrowed s2Step255EarlyControlArena s2Step255EarlyControlArena 840 655 []
    s2Step255CompleteRelocation_move1_owned s2Step255CompleteRelocation_move1_reserve s2Step255CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step255ExitGvAfter s2Step255CompleteRelocationMove0Borrowed s2Step255CompleteRelocationMove0After s2Step255EarlyControlArena 817 142 [(840,655)]
    s2Step255CompleteRelocation_move0_owned s2Step255CompleteRelocation_move0_reserve s2Step255CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step255Complete_repack : s2Step255ExitGvAfter.checkRepack s2Step255CompleteMoves=some s2Step255EarlyControlArena := by
  simpa only [s2Step255CompleteMoves] using s2Step255CompleteRelocation_checked

private theorem s2Step255EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step255EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_branch : compileHmrBranchRetirement s2Step255EarlyControlSigmaArena 782=some s2Step255EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step255EarlyControl_branchOwned
  · ext q
    simp [s2Step255EarlyControlOutputArena,s2Step255EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step255EarlyControl_classEqualityBorrow : s2Step255EarlyControlPositiveArena.checkBorrow (([814, 830] : List Wire).length-1) s2Step255EarlyControlLog.classWork=some s2Step255EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step255EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step255EarlyControlEqualityArena,s2Step255EarlyControlPositiveArena,s2Step255EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step255EarlyControl_classEqualityOwned : ([814, 830] : List Wire).toFinset⊆s2Step255EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_classEquality : compileHmrEqualityLog s2Step255EarlyControlPositiveArena [814, 830] 0 s2Step255EarlyControlLog.classWork=some (s2Step255EarlyControlEqualityArena,s2Step255EarlyControlLog.classWork,s2Step255EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step255EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step255EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step255EarlyControl_classOwned : ([777, 792, 814] : List Wire).toFinset⊆s2Step255EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_positiveBorrow : s2Step255EarlyControlZeroArena.checkBorrow (1) s2Step255EarlyControlLog.positiveWork=some s2Step255EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step255EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step255EarlyControlPositiveArena,s2Step255EarlyControlZeroArena,s2Step255EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step255EarlyControl_class : compileHmrSourceClassLog s2Step255EarlyControlZeroArena false 777 s2Step255EarlyControlZeroPlan.top 0 814 s2Step255EarlyControlLog.positiveWork s2Step255EarlyControlLog.classWork=some s2Step255EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step255EarlyControlClassPlan s2Step255EarlyControlZeroArena false 777 s2Step255EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s2Step255EarlyControl_classOwned
  · exact s2Step255EarlyControl_positiveBorrow
  · exact s2Step255EarlyControl_classEquality

private theorem s2Step255EarlyControl_entryRecordOwned : ([782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step255EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s2Step255EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_fitBorrow : s2Step255EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step255EarlyControlLog.recordFresh=some s2Step255EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step255EarlyControlFlagArena (fun q => (0≤q ∧ q<905)) rfl
      decide +kernel
    · ext q
      simp [s2Step255EarlyControlFittedArena,s2Step255EarlyControlFlagArena,s2Step255EarlyControlLog,arenaWires]

private theorem s2Step255EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step255EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlFlagArena (fun q => (0≤q ∧ q<905)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_fit : compileHmrRecordGrowLog s2Step255EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step255EarlyControlLog.recordFresh=some s2Step255EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step255EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step255EarlyControl_fitBorrow

private theorem s2Step255EarlyControl_flagsBorrow : s2Step255EarlyControlEqualityArena.checkBorrow (6) s2Step255EarlyControlLog.flagWork=some s2Step255EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step255EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step255EarlyControlFlagArena,s2Step255EarlyControlEqualityArena,s2Step255EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step255EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step255EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_flags : compileHmrFlagsLog s2Step255EarlyControlClassPlan.equalityArena s2Step255EarlyControlClassPlan.equality.top 253 252 251 s2Step255EarlyControlLog.flagWork=some s2Step255EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step255EarlyControl_flagsOwned⟩
  · exact s2Step255EarlyControl_flagsBorrow

private theorem s2Step255EarlyControl_historyBorrow : s2Step255EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step255EarlyControlLog.recordFresh=some s2Step255EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step255EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step255EarlyControlHistoryArena,s2Step255EarlyControlArena,s2Step255EarlyControlLog,arenaWires]

private theorem s2Step255EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step255EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_history : compileHmrRecordGrowLog s2Step255EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step255EarlyControlLog.recordFresh=some s2Step255EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step255EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step255EarlyControl_historyBorrow

private theorem s2Step255EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s2Step255EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s2Step255EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_sigmaRelease : s2Step255EarlyControlHistoryArena.release {814} (fun _ => false)=some s2Step255EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step255EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step255EarlyControlSigmaArena,s2Step255EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step255EarlyControl_sigma : compileHmrSigmaDropLog s2Step255EarlyControlHistoryArena false 0 0 254 814 []=some s2Step255EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step255EarlyControl_sigmaOwned⟩
  · exact s2Step255EarlyControl_sigmaRelease

private theorem s2Step255EarlyControl_zeroBorrow : s2Step255EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step255EarlyControlLog.zeroWork=some s2Step255EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step255EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step255EarlyControlZeroArena,s2Step255EarlyControlArena,s2Step255EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step255EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step255EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step255EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EarlyControl_zero : compileHmrEqualityLog s2Step255EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step255EarlyControlLog.zeroWork=some (s2Step255EarlyControlZeroArena,s2Step255EarlyControlLog.zeroWork,s2Step255EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step255EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step255EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step255EarlyControl_logged : s2Step255EarlyControlPlan.Logged s2Step255EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 782 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step255EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step255EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step255EarlyControl_zero
  · exact s2Step255EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step255EarlyControl_flags
  · exact s2Step255EarlyControl_fit
  · exact s2Step255EarlyControl_history
  · exact s2Step255EarlyControl_sigma
  · exact s2Step255EarlyControl_branch

private theorem s2Step255EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step255EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 782 51 s2Step255EarlyControlLog=some s2Step255EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step255EarlyControlPlan s2Step255EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 782 51 s2Step255EarlyControl_logged

private def s2Step255EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step255EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step255EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142],769⟩

private def s2Step255EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837],771⟩

private def s2Step255FrontBank : WindowBank := ⟨s2Step255EntryFRow,s2Step255EntryGRow,s2Step255EntryFvRow,s2Step255EntryGvRow⟩

private def s2Step255Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 792, 768]

private def s2Step255Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830, 800, 769]

private def s2Step255Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 891, 770]

private def s2Step255Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 885, 771]

private theorem s2Step255Counter_apart : Disjoint s2Step255HeadFvAfter.live s2Step255CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step255HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255Counter_borrowed : s2Step255HeadFvAfter.checkBorrow 4 s2Step255CounterWork=some s2Step255CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step255HeadFvAfter s2Step255CounterDuring s2Step255CounterWork.toFinset s2Step255Counter_bounded s2Step255Counter_apart rfl

private theorem s2Step255Counter_owned : (814::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step255HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step255HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255Counter_checked : compileHmrCounterStepLog s2Step255HeadFvAfter true 814 [772, 773, 774, 775, 776, 777] s2Step255CounterWork=some s2Step255CounterDuring := by
  have owned : ∀q∈814::[772, 773, 774, 775, 776, 777],q∈s2Step255HeadFvAfter.live := fun q hq => s2Step255Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step255Counter_borrowed

private def s2Step255EntryFAfter : Arena := s2Step255EntryFBefore

private theorem s2Step255EntryBank_incomingDistinct : ([s2Step255EntryFRow,s2Step255EntryGRow,s2Step255EntryFvRow,s2Step255EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255EntryF_Incoming : rowsOwned s2Step255EntryFBefore [s2Step255EntryFRow,s2Step255EntryGRow,s2Step255EntryFvRow,s2Step255EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255EntryFRow,s2Step255EntryGRow,s2Step255EntryFvRow,s2Step255EntryGvRow] 0 s2Step255EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255EntryBank_outgoingOwned : rowsOwned s2Step255EntryGvAfter [s2Step255EntryFOut,s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step255EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255EntryF_Outgoing : rowsOwned s2Step255EntryGvAfter [s2Step255EntryFOut,s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut] :=
  hmrRows_owned_drop s2Step255EntryGvAfter [s2Step255EntryFOut,s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut] 0 s2Step255EntryBank_outgoingOwned

private theorem s2Step255EntryF_distinct : (s2Step255EntryFRow.sign::s2Step255EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255EntryF_owned : (s2Step255EntryFRow.sign::s2Step255EntryFRow.payload).toFinset⊆s2Step255EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EntryF_reserved : s2Step255EntryFBefore.reserve s2Step255EntryFFresh.toFinset=some s2Step255EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step255EntryFFresh,arenaWires]
  · norm_num [s2Step255EntryFBefore,s2Step255EntryFFresh,arenaWires]
  · simp only [s2Step255EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step255EntryF_checked : planRowResizeLog s2Step255EntryFBefore s2Step255EntryFRow 144 s2Step255EntryFFresh=
    some (s2Step255EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩,growRow 768 s2Step255EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step255EntryFBefore s2Step255EntryFAfter s2Step255EntryFRow 144 s2Step255EntryFFresh
    s2Step255EntryF_distinct s2Step255EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step255EntryF_reserved
  have rowEq : WindowRow.mk (s2Step255EntryFRow.payload++s2Step255EntryFFresh) s2Step255EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step255EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255EntryFvAfter : Arena := s2Step255EntryGAfter

private def s2Step255EntryFvBefore : Arena := s2Step255EntryGAfter

private theorem s2Step255EntryFv_Incoming : rowsOwned s2Step255EntryFvBefore [s2Step255EntryFvRow,s2Step255EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255EntryFRow,s2Step255EntryGRow,s2Step255EntryFvRow,s2Step255EntryGvRow] 2 s2Step255EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255EntryFv_Outgoing : rowsOwned s2Step255EntryGvAfter [s2Step255EntryFvOut,s2Step255EntryGvOut] :=
  hmrRows_owned_drop s2Step255EntryGvAfter [s2Step255EntryFOut,s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut] 2 s2Step255EntryBank_outgoingOwned

private theorem s2Step255EntryFv_distinct : (s2Step255EntryFvRow.sign::s2Step255EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255EntryFv_owned : (s2Step255EntryFvRow.sign::s2Step255EntryFvRow.payload).toFinset⊆s2Step255EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EntryFv_reserved : s2Step255EntryFvBefore.reserve s2Step255EntryFvFresh.toFinset=some s2Step255EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step255EntryFvFresh,arenaWires]
  · norm_num [s2Step255EntryFvBefore,s2Step255EntryGAfter,s2Step255EntryFvFresh,arenaWires]
  · simp only [s2Step255EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step255EntryFv_checked : planRowResizeLog s2Step255EntryFvBefore s2Step255EntryFvRow 144 s2Step255EntryFvFresh=
    some (s2Step255EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩,growRow 770 s2Step255EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step255EntryFvBefore s2Step255EntryFvAfter s2Step255EntryFvRow 144 s2Step255EntryFvFresh
    s2Step255EntryFv_distinct s2Step255EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step255EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step255EntryFvRow.payload++s2Step255EntryFvFresh) s2Step255EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step255EntryGBefore : Arena := s2Step255EntryFBefore

private theorem s2Step255EntryG_Incoming : rowsOwned s2Step255EntryGBefore [s2Step255EntryGRow,s2Step255EntryFvRow,s2Step255EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255EntryFRow,s2Step255EntryGRow,s2Step255EntryFvRow,s2Step255EntryGvRow] 1 s2Step255EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255EntryG_Outgoing : rowsOwned s2Step255EntryGvAfter [s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut] :=
  hmrRows_owned_drop s2Step255EntryGvAfter [s2Step255EntryFOut,s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut] 1 s2Step255EntryBank_outgoingOwned

private theorem s2Step255EntryG_distinct : (s2Step255EntryGRow.sign::s2Step255EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255EntryG_owned : (s2Step255EntryGRow.sign::s2Step255EntryGRow.payload).toFinset⊆s2Step255EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EntryG_reserved : s2Step255EntryGBefore.reserve s2Step255EntryGFresh.toFinset=some s2Step255EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step255EntryGFresh,arenaWires]
  · norm_num [s2Step255EntryGBefore,s2Step255EntryFBefore,s2Step255EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step255EntryGAfter,s2Step255EntryGBefore,s2Step255EntryFBefore,s2Step255EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step255EntryG_checked : planRowResizeLog s2Step255EntryGBefore s2Step255EntryGRow 144 s2Step255EntryGFresh=
    some (s2Step255EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830],769⟩,growRow 769 s2Step255EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step255EntryGBefore s2Step255EntryGAfter s2Step255EntryGRow 144 s2Step255EntryGFresh
    s2Step255EntryG_distinct s2Step255EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step255EntryG_reserved
  have rowEq : WindowRow.mk (s2Step255EntryGRow.payload++s2Step255EntryGFresh) s2Step255EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step255EntryGvBefore : Arena := s2Step255EntryGAfter

private theorem s2Step255EntryGv_Incoming : rowsOwned s2Step255EntryGvBefore [s2Step255EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255EntryFRow,s2Step255EntryGRow,s2Step255EntryFvRow,s2Step255EntryGvRow] 3 s2Step255EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255EntryGv_Outgoing : rowsOwned s2Step255EntryGvAfter [s2Step255EntryGvOut] :=
  hmrRows_owned_drop s2Step255EntryGvAfter [s2Step255EntryFOut,s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut] 3 s2Step255EntryBank_outgoingOwned

private theorem s2Step255EntryGv_distinct : (s2Step255EntryGvRow.sign::s2Step255EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255EntryGv_owned : (s2Step255EntryGvRow.sign::s2Step255EntryGvRow.payload).toFinset⊆s2Step255EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255EntryGv_reserved : s2Step255EntryGvBefore.reserve s2Step255EntryGvFresh.toFinset=some s2Step255EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step255EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step255EntryGvBefore,s2Step255EntryGAfter,s2Step255EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step255EntryGvAfter,s2Step255EntryGvBefore,s2Step255EntryGAfter,s2Step255EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step255EntryGv_checked : planRowResizeLog s2Step255EntryGvBefore s2Step255EntryGvRow 144 s2Step255EntryGvFresh=
    some (s2Step255EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩,growRow 771 s2Step255EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step255EntryGvBefore s2Step255EntryGvAfter s2Step255EntryGvRow 144 s2Step255EntryGvFresh
    s2Step255EntryGv_distinct s2Step255EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step255EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step255EntryGvRow.payload++s2Step255EntryGvFresh) s2Step255EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step255EntryBank_rows : planWindowRowsLog s2Step255EntryFBefore [(s2Step255EntryFRow,144),(s2Step255EntryGRow,144),(s2Step255EntryFvRow,144),(s2Step255EntryGvRow,144)] [s2Step255EntryFFresh,s2Step255EntryGFresh,s2Step255EntryFvFresh,s2Step255EntryGvFresh]=
    some (s2Step255EntryGvAfter,[s2Step255EntryFOut,s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut],(growRow 768 s2Step255EntryFFresh ++ (growRow 769 s2Step255EntryGFresh ++ (growRow 770 s2Step255EntryFvFresh ++ (growRow 771 s2Step255EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step255EntryGvAfter [] []=some (s2Step255EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step255EntryGvBefore s2Step255EntryGvAfter s2Step255EntryGvAfter
    s2Step255EntryGvRow s2Step255EntryGvOut 144 s2Step255EntryGvFresh [] [] []
    (growRow 771 s2Step255EntryGvFresh) ([]) s2Step255EntryGv_Incoming s2Step255EntryGv_checked h4 s2Step255EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step255EntryFvBefore s2Step255EntryFvAfter s2Step255EntryGvAfter
    s2Step255EntryFvRow s2Step255EntryFvOut 144 s2Step255EntryFvFresh [(s2Step255EntryGvRow,144)] [s2Step255EntryGvFresh] [s2Step255EntryGvOut]
    (growRow 770 s2Step255EntryFvFresh) ((growRow 771 s2Step255EntryGvFresh ++ [])) s2Step255EntryFv_Incoming s2Step255EntryFv_checked h3 s2Step255EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step255EntryGBefore s2Step255EntryGAfter s2Step255EntryGvAfter
    s2Step255EntryGRow s2Step255EntryGOut 144 s2Step255EntryGFresh [(s2Step255EntryFvRow,144),(s2Step255EntryGvRow,144)] [s2Step255EntryFvFresh,s2Step255EntryGvFresh] [s2Step255EntryFvOut,s2Step255EntryGvOut]
    (growRow 769 s2Step255EntryGFresh) ((growRow 770 s2Step255EntryFvFresh ++ (growRow 771 s2Step255EntryGvFresh ++ []))) s2Step255EntryG_Incoming s2Step255EntryG_checked h2 s2Step255EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step255EntryFBefore s2Step255EntryFAfter s2Step255EntryGvAfter
    s2Step255EntryFRow s2Step255EntryFOut 144 s2Step255EntryFFresh [(s2Step255EntryGRow,144),(s2Step255EntryFvRow,144),(s2Step255EntryGvRow,144)] [s2Step255EntryGFresh,s2Step255EntryFvFresh,s2Step255EntryGvFresh] [s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut]
    (growRow 768 s2Step255EntryFFresh) ((growRow 769 s2Step255EntryGFresh ++ (growRow 770 s2Step255EntryFvFresh ++ (growRow 771 s2Step255EntryGvFresh ++ [])))) s2Step255EntryF_Incoming s2Step255EntryF_checked h1 s2Step255EntryF_Outgoing
  exact h0

private theorem s2Step255EntryBank_checked : compileHmrBankResizeLog .entry s2Step255EntryFBefore ⟨s2Step255EntryFRow,s2Step255EntryGRow,s2Step255EntryFvRow,s2Step255EntryGvRow⟩ ⟨144,144,144,144⟩ [s2Step255EntryFFresh,s2Step255EntryGFresh,s2Step255EntryFvFresh,s2Step255EntryGvFresh]=
    some (s2Step255EntryGvAfter,⟨s2Step255EntryFOut,s2Step255EntryGOut,s2Step255EntryFvOut,s2Step255EntryGvOut⟩,(growRow 768 s2Step255EntryFFresh ++ (growRow 769 s2Step255EntryGFresh ++ (growRow 770 s2Step255EntryFvFresh ++ (growRow 771 s2Step255EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step255EntryBank_rows]
  rfl

private def s2Step255ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<655) ∨ (656≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255ExitFBefore : Arena := s2Step255ExitGAfter

private def s2Step255ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 792],768⟩

private def s2Step255ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 891],770⟩

private def s2Step255ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830, 800],769⟩

private def s2Step255ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 885],771⟩

private theorem s2Step255ExitBank_incomingDistinct : ([s2Step255ExitGRow,s2Step255ExitFRow,s2Step255ExitFvRow,s2Step255ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255ExitF_Incoming : rowsOwned s2Step255ExitFBefore [s2Step255ExitFRow,s2Step255ExitFvRow,s2Step255ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255ExitGRow,s2Step255ExitFRow,s2Step255ExitFvRow,s2Step255ExitGvRow] 1 s2Step255ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255ExitFBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255ExitBank_outgoingOwned : rowsOwned s2Step255ExitGvAfter [s2Step255ExitGOut,s2Step255ExitFOut,s2Step255ExitFvOut,s2Step255ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step255ExitGvAfter (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<655) ∨ (656≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255ExitF_Outgoing : rowsOwned s2Step255ExitGvAfter [s2Step255ExitFOut,s2Step255ExitFvOut,s2Step255ExitGvOut] :=
  hmrRows_owned_drop s2Step255ExitGvAfter [s2Step255ExitGOut,s2Step255ExitFOut,s2Step255ExitFvOut,s2Step255ExitGvOut] 1 s2Step255ExitBank_outgoingOwned

private theorem s2Step255ExitF_distinct : (s2Step255ExitFRow.sign::s2Step255ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255ExitF_owned : (s2Step255ExitFRow.sign::s2Step255ExitFRow.payload).toFinset⊆s2Step255ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255ExitFBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255ExitF_retired : s2Step255ExitFBefore.retireSet s2Step255ExitFExtra.toFinset=s2Step255ExitFAfter := by
  unfold Arena.retireSet s2Step255ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step255ExitFBefore,s2Step255ExitGAfter,s2Step255ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step255ExitF_checked : planRowResizeLog s2Step255ExitFBefore s2Step255ExitFRow 143 []=
    some (s2Step255ExitFAfter,s2Step255ExitFOut,shrinkRow 768 s2Step255ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step255ExitFBefore s2Step255ExitFRow 143 s2Step255ExitF_distinct s2Step255ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step255ExitFRow.payload.take 143) s2Step255ExitFRow.sign=s2Step255ExitFOut := by decide +kernel
  have hi : s2Step255ExitFRow.payload.drop 143=s2Step255ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step255ExitF_retired] at result
  exact result

private def s2Step255ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<655) ∨ (656≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255ExitFvBefore : Arena := s2Step255ExitFAfter

private theorem s2Step255ExitFv_Incoming : rowsOwned s2Step255ExitFvBefore [s2Step255ExitFvRow,s2Step255ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255ExitGRow,s2Step255ExitFRow,s2Step255ExitFvRow,s2Step255ExitGvRow] 2 s2Step255ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255ExitFvBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<655) ∨ (656≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255ExitFv_Outgoing : rowsOwned s2Step255ExitGvAfter [s2Step255ExitFvOut,s2Step255ExitGvOut] :=
  hmrRows_owned_drop s2Step255ExitGvAfter [s2Step255ExitGOut,s2Step255ExitFOut,s2Step255ExitFvOut,s2Step255ExitGvOut] 2 s2Step255ExitBank_outgoingOwned

private theorem s2Step255ExitFv_distinct : (s2Step255ExitFvRow.sign::s2Step255ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255ExitFv_owned : (s2Step255ExitFvRow.sign::s2Step255ExitFvRow.payload).toFinset⊆s2Step255ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255ExitFvBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<655) ∨ (656≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255ExitFv_retired : s2Step255ExitFvBefore.retireSet s2Step255ExitFvExtra.toFinset=s2Step255ExitFvAfter := by
  unfold Arena.retireSet s2Step255ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step255ExitFvBefore,s2Step255ExitFAfter,s2Step255ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step255ExitFv_checked : planRowResizeLog s2Step255ExitFvBefore s2Step255ExitFvRow 144 []=
    some (s2Step255ExitFvAfter,s2Step255ExitFvOut,shrinkRow 770 s2Step255ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step255ExitFvBefore s2Step255ExitFvRow 144 s2Step255ExitFv_distinct s2Step255ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step255ExitFvRow.payload.take 144) s2Step255ExitFvRow.sign=s2Step255ExitFvOut := by decide +kernel
  have hi : s2Step255ExitFvRow.payload.drop 144=s2Step255ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step255ExitFv_retired] at result
  exact result

private def s2Step255ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step255ExitG_Incoming : rowsOwned s2Step255ExitGBefore [s2Step255ExitGRow,s2Step255ExitFRow,s2Step255ExitFvRow,s2Step255ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255ExitGRow,s2Step255ExitFRow,s2Step255ExitFvRow,s2Step255ExitGvRow] 0 s2Step255ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255ExitG_Outgoing : rowsOwned s2Step255ExitGvAfter [s2Step255ExitGOut,s2Step255ExitFOut,s2Step255ExitFvOut,s2Step255ExitGvOut] :=
  hmrRows_owned_drop s2Step255ExitGvAfter [s2Step255ExitGOut,s2Step255ExitFOut,s2Step255ExitFvOut,s2Step255ExitGvOut] 0 s2Step255ExitBank_outgoingOwned

private theorem s2Step255ExitG_distinct : (s2Step255ExitGRow.sign::s2Step255ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255ExitG_owned : (s2Step255ExitGRow.sign::s2Step255ExitGRow.payload).toFinset⊆s2Step255ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255ExitG_retired : s2Step255ExitGBefore.retireSet s2Step255ExitGExtra.toFinset=s2Step255ExitGAfter := by
  unfold Arena.retireSet s2Step255ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step255ExitGBefore,s2Step255ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step255ExitG_checked : planRowResizeLog s2Step255ExitGBefore s2Step255ExitGRow 142 []=
    some (s2Step255ExitGAfter,s2Step255ExitGOut,shrinkRow 769 s2Step255ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step255ExitGBefore s2Step255ExitGRow 142 s2Step255ExitG_distinct s2Step255ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step255ExitGRow.payload.take 142) s2Step255ExitGRow.sign=s2Step255ExitGOut := by decide +kernel
  have hi : s2Step255ExitGRow.payload.drop 142=s2Step255ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step255ExitG_retired] at result
  exact result

private def s2Step255ExitGvBefore : Arena := s2Step255ExitFvAfter

private theorem s2Step255ExitGv_Incoming : rowsOwned s2Step255ExitGvBefore [s2Step255ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255ExitGRow,s2Step255ExitFRow,s2Step255ExitFvRow,s2Step255ExitGvRow] 3 s2Step255ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255ExitGvBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<655) ∨ (656≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255ExitGv_Outgoing : rowsOwned s2Step255ExitGvAfter [s2Step255ExitGvOut] :=
  hmrRows_owned_drop s2Step255ExitGvAfter [s2Step255ExitGOut,s2Step255ExitFOut,s2Step255ExitFvOut,s2Step255ExitGvOut] 3 s2Step255ExitBank_outgoingOwned

private theorem s2Step255ExitGv_distinct : (s2Step255ExitGvRow.sign::s2Step255ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255ExitGv_owned : (s2Step255ExitGvRow.sign::s2Step255ExitGvRow.payload).toFinset⊆s2Step255ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255ExitGvBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<655) ∨ (656≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255ExitGv_retired : s2Step255ExitGvBefore.retireSet s2Step255ExitGvExtra.toFinset=s2Step255ExitGvAfter := by
  unfold Arena.retireSet s2Step255ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step255ExitGvBefore,s2Step255ExitFvAfter,s2Step255ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step255ExitGv_checked : planRowResizeLog s2Step255ExitGvBefore s2Step255ExitGvRow 144 []=
    some (s2Step255ExitGvAfter,s2Step255ExitGvOut,shrinkRow 771 s2Step255ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step255ExitGvBefore s2Step255ExitGvRow 144 s2Step255ExitGv_distinct s2Step255ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step255ExitGvRow.payload.take 144) s2Step255ExitGvRow.sign=s2Step255ExitGvOut := by decide +kernel
  have hi : s2Step255ExitGvRow.payload.drop 144=s2Step255ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step255ExitGv_retired] at result
  exact result

private theorem s2Step255ExitBank_rows : planWindowRowsLog s2Step255ExitGBefore [(s2Step255ExitGRow,142),(s2Step255ExitFRow,143),(s2Step255ExitFvRow,144),(s2Step255ExitGvRow,144)] [[],[],[],[]]=
    some (s2Step255ExitGvAfter,[s2Step255ExitGOut,s2Step255ExitFOut,s2Step255ExitFvOut,s2Step255ExitGvOut],(shrinkRow 769 s2Step255ExitGExtra ++ (shrinkRow 768 s2Step255ExitFExtra ++ (shrinkRow 770 s2Step255ExitFvExtra ++ (shrinkRow 771 s2Step255ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step255ExitGvAfter [] []=some (s2Step255ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step255ExitGvBefore s2Step255ExitGvAfter s2Step255ExitGvAfter
    s2Step255ExitGvRow s2Step255ExitGvOut 144 [] [] [] []
    (shrinkRow 771 s2Step255ExitGvExtra) ([]) s2Step255ExitGv_Incoming s2Step255ExitGv_checked h4 s2Step255ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step255ExitFvBefore s2Step255ExitFvAfter s2Step255ExitGvAfter
    s2Step255ExitFvRow s2Step255ExitFvOut 144 [] [(s2Step255ExitGvRow,144)] [[]] [s2Step255ExitGvOut]
    (shrinkRow 770 s2Step255ExitFvExtra) ((shrinkRow 771 s2Step255ExitGvExtra ++ [])) s2Step255ExitFv_Incoming s2Step255ExitFv_checked h3 s2Step255ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step255ExitFBefore s2Step255ExitFAfter s2Step255ExitGvAfter
    s2Step255ExitFRow s2Step255ExitFOut 143 [] [(s2Step255ExitFvRow,144),(s2Step255ExitGvRow,144)] [[],[]] [s2Step255ExitFvOut,s2Step255ExitGvOut]
    (shrinkRow 768 s2Step255ExitFExtra) ((shrinkRow 770 s2Step255ExitFvExtra ++ (shrinkRow 771 s2Step255ExitGvExtra ++ []))) s2Step255ExitF_Incoming s2Step255ExitF_checked h2 s2Step255ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step255ExitGBefore s2Step255ExitGAfter s2Step255ExitGvAfter
    s2Step255ExitGRow s2Step255ExitGOut 142 [] [(s2Step255ExitFRow,143),(s2Step255ExitFvRow,144),(s2Step255ExitGvRow,144)] [[],[],[]] [s2Step255ExitFOut,s2Step255ExitFvOut,s2Step255ExitGvOut]
    (shrinkRow 769 s2Step255ExitGExtra) ((shrinkRow 768 s2Step255ExitFExtra ++ (shrinkRow 770 s2Step255ExitFvExtra ++ (shrinkRow 771 s2Step255ExitGvExtra ++ [])))) s2Step255ExitG_Incoming s2Step255ExitG_checked h1 s2Step255ExitG_Outgoing
  exact h0

private theorem s2Step255ExitBank_checked : compileHmrBankResizeLog .exit s2Step255ExitGBefore ⟨s2Step255ExitFRow,s2Step255ExitGRow,s2Step255ExitFvRow,s2Step255ExitGvRow⟩ ⟨143,142,144,144⟩ [[],[],[],[]]=
    some (s2Step255ExitGvAfter,⟨s2Step255ExitFOut,s2Step255ExitGOut,s2Step255ExitFvOut,s2Step255ExitGvOut⟩,(shrinkRow 769 s2Step255ExitGExtra ++ (shrinkRow 768 s2Step255ExitFExtra ++ (shrinkRow 770 s2Step255ExitFvExtra ++ (shrinkRow 771 s2Step255ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step255ExitBank_rows]
  rfl

private theorem s2Step255Add0_apart : Disjoint s2Step255Add0Arena.live s2Step255Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step255Add0Arena (fun q => (0≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255Add0_card : s2Step255Add0Arena.live.card=901 := by
  decide +kernel

private theorem s2Step255Add0_borrowed : s2Step255Add0Arena.checkBorrow (hmrHybridCount s2Step255Add0Arena s2Step255Add0B.length) s2Step255Add0Work=some s2Step255Add0During := by
  have len : s2Step255Add0Work.length=hmrHybridCount s2Step255Add0Arena s2Step255Add0B.length := by
    rw [hmrHybridCount,s2Step255Add0_card]
    decide +kernel
  have nd : s2Step255Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step255Add0Arena s2Step255Add0During s2Step255Add0Work.toFinset s2Step255Add0_bounded s2Step255Add0_apart rfl

private theorem s2Step255Add0_distinct : (894::782::896::(s2Step255Add0A++s2Step255Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255Add0_owned : (894::782::896::(s2Step255Add0A++s2Step255Add0B)).toFinset⊆s2Step255Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step255Add0Arena (fun q => (0≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255Add0_checked : compileHmrHybridCinLog s2Step255Add0Arena 782 894 896 s2Step255Add0A s2Step255Add0B s2Step255Add0Work=some s2Step255Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step255Add0Arena s2Step255Add0During 782 894 896 s2Step255Add0A s2Step255Add0B s2Step255Add0Work
    (by decide +kernel) (by decide +kernel) s2Step255Add0_distinct
    (fun q hq => s2Step255Add0_owned (List.mem_toFinset.mpr hq)) s2Step255Add0_borrowed

private theorem s2Step255Add1_apart : Disjoint s2Step255Add1Arena.live s2Step255Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step255Add1Arena (fun q => (0≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255Add1_card : s2Step255Add1Arena.live.card=901 := by
  decide +kernel

private theorem s2Step255Add1_borrowed : s2Step255Add1Arena.checkBorrow (hmrHybridCount s2Step255Add1Arena s2Step255Add1B.length) s2Step255Add1Work=some s2Step255Add1During := by
  have len : s2Step255Add1Work.length=hmrHybridCount s2Step255Add1Arena s2Step255Add1B.length := by
    rw [hmrHybridCount,s2Step255Add1_card]
    decide +kernel
  have nd : s2Step255Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step255Add1Arena s2Step255Add1During s2Step255Add1Work.toFinset s2Step255Add1_bounded s2Step255Add1_apart rfl

private theorem s2Step255Add1_distinct : (894::782::896::(s2Step255Add1A++s2Step255Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255Add1_owned : (894::782::896::(s2Step255Add1A++s2Step255Add1B)).toFinset⊆s2Step255Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step255Add1Arena (fun q => (0≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255Add1_checked : compileHmrHybridCinLog s2Step255Add1Arena 782 894 896 s2Step255Add1A s2Step255Add1B s2Step255Add1Work=some s2Step255Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step255Add1Arena s2Step255Add1During 782 894 896 s2Step255Add1A s2Step255Add1B s2Step255Add1Work
    (by decide +kernel) (by decide +kernel) s2Step255Add1_distinct
    (fun q hq => s2Step255Add1_owned (List.mem_toFinset.mpr hq)) s2Step255Add1_borrowed

private theorem s2Step255F4_apart : Disjoint (s2Step255Add0A++s2Step255Add0B).toFinset (s2Step255Add1A++s2Step255Add1B).toFinset := by
  have nd : ((s2Step255Add0A++s2Step255Add0B)++(s2Step255Add1A++s2Step255Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step255F4_carry : s2Step255F4FlagArena.checkBorrow 1 [896]=some s2Step255Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step255F4FlagArena,s2Step255HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step255F4FlagArena,s2Step255HeadFvAfter,s2Step255Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step255F4_distinct : (814::782::894::896::((s2Step255Add0A++s2Step255Add1A)++(s2Step255Add0B++s2Step255Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255F4_flag : s2Step255HeadFvAfter.checkBorrow 1 [894]=some s2Step255F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step255HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step255F4_owned : (814::782::((s2Step255Add0A++s2Step255Add1A)++(s2Step255Add0B++s2Step255Add1B))).toFinset⊆s2Step255HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step255HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255F4_checked : compileHmrHybridF4Log s2Step255HeadFvAfter 814 782 s2Step255Add0A s2Step255Add0B s2Step255Add1A s2Step255Add1B [894] [896] s2Step255Add0Work s2Step255Add1Work=some s2Step255F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step255HeadFvAfter s2Step255F4FlagArena s2Step255Add0Arena s2Step255Add0During s2Step255Add1During 814 782
    s2Step255Add0A s2Step255Add0B s2Step255Add1A s2Step255Add1B [894] [896] s2Step255Add0Work s2Step255Add1Work
    (fun q hq => s2Step255F4_owned (List.mem_toFinset.mpr hq)) s2Step255F4_flag s2Step255F4_carry
    s2Step255F4_distinct s2Step255F4_apart s2Step255Add0_checked s2Step255Add1_checked

private theorem s2Step255Front_branch : s2Step255FrontSigmaArena.checkBorrow 1 [782]=some s2Step255HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step255FrontSigmaArena,s2Step255EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step255FrontSigmaArena,s2Step255EntryGvAfter,s2Step255HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step255Front_entry : HmrFrontEntryValid s2Step255EntryFBefore s2Step255FrontBank 144 144 ⟨143,142,144,144⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step255FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step255EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step255EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step255FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step255Front_sigma : s2Step255EntryGvAfter.checkBorrow 1 [814]=some s2Step255FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step255EntryGvAfter,arenaWires]
  · rfl

private def s2Step255HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255HeadFBefore : Arena := s2Step255HeadGAfter

private def s2Step255HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step255HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step255HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830],769⟩

private def s2Step255HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private theorem s2Step255HeadBank_incomingDistinct : ([s2Step255HeadGRow,s2Step255HeadFRow,s2Step255HeadGvRow,s2Step255HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255HeadF_Incoming : rowsOwned s2Step255HeadFBefore [s2Step255HeadFRow,s2Step255HeadGvRow,s2Step255HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255HeadGRow,s2Step255HeadFRow,s2Step255HeadGvRow,s2Step255HeadFvRow] 1 s2Step255HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255HeadBank_outgoingOwned : rowsOwned s2Step255HeadFvAfter [s2Step255HeadGOut,s2Step255HeadFOut,s2Step255HeadGvOut,s2Step255HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step255HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255HeadF_Outgoing : rowsOwned s2Step255HeadFvAfter [s2Step255HeadFOut,s2Step255HeadGvOut,s2Step255HeadFvOut] :=
  hmrRows_owned_drop s2Step255HeadFvAfter [s2Step255HeadGOut,s2Step255HeadFOut,s2Step255HeadGvOut,s2Step255HeadFvOut] 1 s2Step255HeadBank_outgoingOwned

private theorem s2Step255HeadF_distinct : (s2Step255HeadFRow.sign::s2Step255HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255HeadF_owned : (s2Step255HeadFRow.sign::s2Step255HeadFRow.payload).toFinset⊆s2Step255HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255HeadF_reserved : s2Step255HeadFBefore.reserve s2Step255HeadFFresh.toFinset=some s2Step255HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step255HeadFFresh,arenaWires]
  · norm_num [s2Step255HeadFBefore,s2Step255HeadGAfter,s2Step255HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step255HeadFAfter,s2Step255HeadFBefore,s2Step255HeadGAfter,s2Step255HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step255HeadF_checked : planRowResizeLog s2Step255HeadFBefore s2Step255HeadFRow 145 s2Step255HeadFFresh=
    some (s2Step255HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 792],768⟩,growRow 768 s2Step255HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step255HeadFBefore s2Step255HeadFAfter s2Step255HeadFRow 145 s2Step255HeadFFresh
    s2Step255HeadF_distinct s2Step255HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step255HeadF_reserved
  have rowEq : WindowRow.mk (s2Step255HeadFRow.payload++s2Step255HeadFFresh) s2Step255HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 792],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step255HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step255HeadFvBefore : Arena := s2Step255HeadGvAfter

private theorem s2Step255HeadFv_Incoming : rowsOwned s2Step255HeadFvBefore [s2Step255HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255HeadGRow,s2Step255HeadFRow,s2Step255HeadGvRow,s2Step255HeadFvRow] 3 s2Step255HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255HeadFvBefore (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255HeadFv_Outgoing : rowsOwned s2Step255HeadFvAfter [s2Step255HeadFvOut] :=
  hmrRows_owned_drop s2Step255HeadFvAfter [s2Step255HeadGOut,s2Step255HeadFOut,s2Step255HeadGvOut,s2Step255HeadFvOut] 3 s2Step255HeadBank_outgoingOwned

private theorem s2Step255HeadFv_distinct : (s2Step255HeadFvRow.sign::s2Step255HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255HeadFv_owned : (s2Step255HeadFvRow.sign::s2Step255HeadFvRow.payload).toFinset⊆s2Step255HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255HeadFvBefore (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255HeadFv_reserved : s2Step255HeadFvBefore.reserve s2Step255HeadFvFresh.toFinset=some s2Step255HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step255HeadFvFresh,arenaWires]
  · norm_num [s2Step255HeadFvBefore,s2Step255HeadGvAfter,s2Step255HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step255HeadFvAfter,s2Step255HeadFvBefore,s2Step255HeadGvAfter,s2Step255HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step255HeadFv_checked : planRowResizeLog s2Step255HeadFvBefore s2Step255HeadFvRow 145 s2Step255HeadFvFresh=
    some (s2Step255HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 891],770⟩,growRow 770 s2Step255HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step255HeadFvBefore s2Step255HeadFvAfter s2Step255HeadFvRow 145 s2Step255HeadFvFresh
    s2Step255HeadFv_distinct s2Step255HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step255HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step255HeadFvRow.payload++s2Step255HeadFvFresh) s2Step255HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 891],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step255HeadG_Incoming : rowsOwned s2Step255HeadGBefore [s2Step255HeadGRow,s2Step255HeadFRow,s2Step255HeadGvRow,s2Step255HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255HeadGRow,s2Step255HeadFRow,s2Step255HeadGvRow,s2Step255HeadFvRow] 0 s2Step255HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255HeadG_Outgoing : rowsOwned s2Step255HeadFvAfter [s2Step255HeadGOut,s2Step255HeadFOut,s2Step255HeadGvOut,s2Step255HeadFvOut] :=
  hmrRows_owned_drop s2Step255HeadFvAfter [s2Step255HeadGOut,s2Step255HeadFOut,s2Step255HeadGvOut,s2Step255HeadFvOut] 0 s2Step255HeadBank_outgoingOwned

private theorem s2Step255HeadG_distinct : (s2Step255HeadGRow.sign::s2Step255HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255HeadG_owned : (s2Step255HeadGRow.sign::s2Step255HeadGRow.payload).toFinset⊆s2Step255HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255HeadG_reserved : s2Step255HeadGBefore.reserve s2Step255HeadGFresh.toFinset=some s2Step255HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step255HeadGFresh,arenaWires]
  · norm_num [s2Step255HeadGBefore,s2Step255HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step255HeadGAfter,s2Step255HeadGBefore,s2Step255HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step255HeadG_checked : planRowResizeLog s2Step255HeadGBefore s2Step255HeadGRow 145 s2Step255HeadGFresh=
    some (s2Step255HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830, 800],769⟩,growRow 769 s2Step255HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step255HeadGBefore s2Step255HeadGAfter s2Step255HeadGRow 145 s2Step255HeadGFresh
    s2Step255HeadG_distinct s2Step255HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step255HeadG_reserved
  have rowEq : WindowRow.mk (s2Step255HeadGRow.payload++s2Step255HeadGFresh) s2Step255HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step255HeadGvBefore : Arena := s2Step255HeadFAfter

private theorem s2Step255HeadGv_Incoming : rowsOwned s2Step255HeadGvBefore [s2Step255HeadGvRow,s2Step255HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step255HeadGRow,s2Step255HeadFRow,s2Step255HeadGvRow,s2Step255HeadFvRow] 2 s2Step255HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step255HeadGvBefore (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step255HeadGv_Outgoing : rowsOwned s2Step255HeadFvAfter [s2Step255HeadGvOut,s2Step255HeadFvOut] :=
  hmrRows_owned_drop s2Step255HeadFvAfter [s2Step255HeadGOut,s2Step255HeadFOut,s2Step255HeadGvOut,s2Step255HeadFvOut] 2 s2Step255HeadBank_outgoingOwned

private theorem s2Step255HeadGv_distinct : (s2Step255HeadGvRow.sign::s2Step255HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step255HeadGv_owned : (s2Step255HeadGvRow.sign::s2Step255HeadGvRow.payload).toFinset⊆s2Step255HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step255HeadGvBefore (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step255HeadGv_reserved : s2Step255HeadGvBefore.reserve s2Step255HeadGvFresh.toFinset=some s2Step255HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step255HeadGvFresh,arenaWires]
  · norm_num [s2Step255HeadGvBefore,s2Step255HeadFAfter,s2Step255HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step255HeadGvAfter,s2Step255HeadGvBefore,s2Step255HeadFAfter,s2Step255HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step255HeadGv_checked : planRowResizeLog s2Step255HeadGvBefore s2Step255HeadGvRow 145 s2Step255HeadGvFresh=
    some (s2Step255HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 885],771⟩,growRow 771 s2Step255HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step255HeadGvBefore s2Step255HeadGvAfter s2Step255HeadGvRow 145 s2Step255HeadGvFresh
    s2Step255HeadGv_distinct s2Step255HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step255HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step255HeadGvRow.payload++s2Step255HeadGvFresh) s2Step255HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 885],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step255HeadBank_rows : planWindowRowsLog s2Step255HeadGBefore [(s2Step255HeadGRow,145),(s2Step255HeadFRow,145),(s2Step255HeadGvRow,145),(s2Step255HeadFvRow,145)] [s2Step255HeadGFresh,s2Step255HeadFFresh,s2Step255HeadGvFresh,s2Step255HeadFvFresh]=
    some (s2Step255HeadFvAfter,[s2Step255HeadGOut,s2Step255HeadFOut,s2Step255HeadGvOut,s2Step255HeadFvOut],(growRow 769 s2Step255HeadGFresh ++ (growRow 768 s2Step255HeadFFresh ++ (growRow 771 s2Step255HeadGvFresh ++ (growRow 770 s2Step255HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step255HeadFvAfter [] []=some (s2Step255HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step255HeadFvBefore s2Step255HeadFvAfter s2Step255HeadFvAfter
    s2Step255HeadFvRow s2Step255HeadFvOut 145 s2Step255HeadFvFresh [] [] []
    (growRow 770 s2Step255HeadFvFresh) ([]) s2Step255HeadFv_Incoming s2Step255HeadFv_checked h4 s2Step255HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step255HeadGvBefore s2Step255HeadGvAfter s2Step255HeadFvAfter
    s2Step255HeadGvRow s2Step255HeadGvOut 145 s2Step255HeadGvFresh [(s2Step255HeadFvRow,145)] [s2Step255HeadFvFresh] [s2Step255HeadFvOut]
    (growRow 771 s2Step255HeadGvFresh) ((growRow 770 s2Step255HeadFvFresh ++ [])) s2Step255HeadGv_Incoming s2Step255HeadGv_checked h3 s2Step255HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step255HeadFBefore s2Step255HeadFAfter s2Step255HeadFvAfter
    s2Step255HeadFRow s2Step255HeadFOut 145 s2Step255HeadFFresh [(s2Step255HeadGvRow,145),(s2Step255HeadFvRow,145)] [s2Step255HeadGvFresh,s2Step255HeadFvFresh] [s2Step255HeadGvOut,s2Step255HeadFvOut]
    (growRow 768 s2Step255HeadFFresh) ((growRow 771 s2Step255HeadGvFresh ++ (growRow 770 s2Step255HeadFvFresh ++ []))) s2Step255HeadF_Incoming s2Step255HeadF_checked h2 s2Step255HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step255HeadGBefore s2Step255HeadGAfter s2Step255HeadFvAfter
    s2Step255HeadGRow s2Step255HeadGOut 145 s2Step255HeadGFresh [(s2Step255HeadFRow,145),(s2Step255HeadGvRow,145),(s2Step255HeadFvRow,145)] [s2Step255HeadFFresh,s2Step255HeadGvFresh,s2Step255HeadFvFresh] [s2Step255HeadFOut,s2Step255HeadGvOut,s2Step255HeadFvOut]
    (growRow 769 s2Step255HeadGFresh) ((growRow 768 s2Step255HeadFFresh ++ (growRow 771 s2Step255HeadGvFresh ++ (growRow 770 s2Step255HeadFvFresh ++ [])))) s2Step255HeadG_Incoming s2Step255HeadG_checked h1 s2Step255HeadG_Outgoing
  exact h0

private theorem s2Step255HeadBank_checked : compileHmrBankResizeLog .headroom s2Step255HeadGBefore ⟨s2Step255HeadFRow,s2Step255HeadGRow,s2Step255HeadFvRow,s2Step255HeadGvRow⟩ ⟨145,145,145,145⟩ [s2Step255HeadGFresh,s2Step255HeadFFresh,s2Step255HeadGvFresh,s2Step255HeadFvFresh]=
    some (s2Step255HeadFvAfter,⟨s2Step255HeadFOut,s2Step255HeadGOut,s2Step255HeadFvOut,s2Step255HeadGvOut⟩,(growRow 769 s2Step255HeadGFresh ++ (growRow 768 s2Step255HeadFFresh ++ (growRow 771 s2Step255HeadGvFresh ++ (growRow 770 s2Step255HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step255HeadBank_rows]
  rfl

private theorem s2Step255Front_checked : compileHmrSourceFrontLog s2Step255EntryFBefore s2Step255FrontBank 144 144 ⟨143,142,144,144⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step255FrontLog=some s2Step255FrontPlan := by
  have pairEq : s2Step255FrontPair=⟨s2Step255HeadFRow,s2Step255HeadGRow,s2Step255HeadFvRow,s2Step255HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step255FrontHead=⟨s2Step255ExitFRow,s2Step255ExitGRow,s2Step255ExitFvRow,s2Step255ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step255Add0A=s2Step255FrontHead.f.wires := by decide +kernel
  have gEq : s2Step255Add0B=s2Step255FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step255Add1A=s2Step255FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step255Add1B=s2Step255FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step255EntryFBefore s2Step255FrontBank 144 144 ⟨143,142,144,144⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step255FrontLog s2Step255FrontPlan
  · exact s2Step255Front_entry
  · exact s2Step255EntryBank_checked
  · exact s2Step255Front_sigma
  · rfl
  · exact s2Step255Front_branch
  · rfl
  · simpa only [s2Step255FrontPlan,pairEq] using s2Step255HeadBank_checked
  · simpa only [s2Step255FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step255F4_checked
  · exact s2Step255Counter_checked
  · rfl
  · simpa only [s2Step255FrontPlan,headEq] using s2Step255ExitBank_checked

private theorem s2Step255Complete_explicit_checked : compileHmrEarlyStepLog s2Step255EntryFBefore s2Step255FrontBank 144 144 ⟨143,142,144,144⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step255CompleteLog=some s2Step255CompletePlan := by
  let Q := s2Step255EarlyControlPlan
  have hq := s2Step255EarlyControl_plan_checked
  have fv1 : s2Step255CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step255CompleteOut.fv.payload[2]?.getD s2Step255CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step255CompleteOut.fv.payload[3]?.getD s2Step255CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step255CompleteOut.fv.payload[4]?.getD s2Step255CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step255EntryFBefore s2Step255EarlyControlArena s2Step255FrontBank 144 144 ⟨143,142,144,144⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step255CompleteLog s2Step255FrontPlan Q
    s2Step255Front_checked s2Step255Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step255Complete_owned s2Step255Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step255EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 s2Step255CompleteOut.fv.second (s2Step255CompleteOut.fv.payload[2]?.getD s2Step255CompleteOut.fv.sign) (s2Step255CompleteOut.fv.payload[3]?.getD s2Step255CompleteOut.fv.sign) (s2Step255CompleteOut.fv.payload[4]?.getD s2Step255CompleteOut.fv.sign) 782 51 s2Step255EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep255Arena : Arena := s2Step255EntryFBefore
def s2PrivateStep255Bank : WindowBank := s2Step255FrontBank
def s2PrivateStep255Spec : HmrSourceWalkStepLog := ⟨144,144,⟨143,142,144,144⟩,51,.early s2Step255CompleteLog⟩
def s2PrivateStep255Plan : HmrSourceStepPlan := .early s2Step255CompletePlan
theorem s2PrivateStep255_source : s2PrivateStep255Spec=s2ObservedLogs240[15] := rfl
theorem s2PrivateStep255_checked : compileHmrSourceStepLog s2PrivateStep255Arena s2PrivateStep255Bank
    s2PrivateStep255Spec.fgWidth s2PrivateStep255Spec.vWidth s2PrivateStep255Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 255 s2PrivateStep255Spec.need none s2PrivateStep255Spec.log=some s2PrivateStep255Plan := by
  change compileHmrSourceStepLog s2Step255EntryFBefore s2Step255FrontBank 144 144 ⟨143,142,144,144⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 255 51 none (.early s2Step255CompleteLog)=some (.early s2Step255CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 255<498)]
  rw [s2Step255Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
