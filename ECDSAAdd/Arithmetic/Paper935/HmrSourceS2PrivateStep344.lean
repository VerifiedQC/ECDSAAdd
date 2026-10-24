import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep342
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

private def s2Step344CompleteMoves : List (Wire × Wire) := []

private def s2Step344EarlyControlLog : HmrEarlyControlLog := ⟨[798, 877, 901, 903, 800],[894],[844],[789, 907, 913, 914, 915, 916],[]⟩

private def s2Step344FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [894, 844], [], [798, 877]],[[789], [800], [901], [903]],[[], [], [], []]⟩,[839],[827],[907],[913],[914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[907, 913, 914, 915]⟩

private def s2Step344CompleteLog : HmrEarlyStepLog := ⟨s2Step344FrontLog,s2Step344CompleteMoves,s2Step344EarlyControlLog⟩

private def s2Step344ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step344ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step344ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],769⟩

private def s2Step344ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩

private def s2Step344FrontOut : WindowBank := ⟨s2Step344ExitFOut,s2Step344ExitGOut,s2Step344ExitFvOut,s2Step344ExitGvOut⟩

private def s2Step344CompleteOut : WindowBank := s2Step344FrontOut.repacked s2Step344CompleteMoves

private def s2Step344EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step344EarlyControlPositiveArena,[894],s2Step344EarlyControlEqualityArena,[844],⟨⟨839,false⟩,[⟨⟨894,false⟩,844⟩]⟩⟩

private def s2Step344EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step344EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step344EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,798⟩,⟨⟨774,false⟩,877⟩,⟨⟨775,false⟩,901⟩,⟨⟨776,false⟩,903⟩,⟨⟨777,false⟩,800⟩]⟩

private def s2Step344EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step344EarlyControlZeroArena,s2Step344EarlyControlZeroPlan,s2Step344EarlyControlClassPlan,s2Step344EarlyControlFlagArena,s2Step344EarlyControlFittedArena,s2Step344EarlyControlHistoryArena,s2Step344EarlyControlSigmaArena,s2Step344EarlyControlOutputArena,s2Step344EarlyControlLog⟩

private def s2Step344CounterWork : List Wire := [907, 913, 914, 915]

private theorem s2Step344Counter_bounded : s2Step344CounterWork.toFinset⊆arenaWires := by norm_num [s2Step344CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step344HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344CounterDuring : Arena := ⟨s2Step344HeadFvAfter.live∪s2Step344CounterWork.toFinset,Finset.union_subset s2Step344HeadFvAfter.bounded s2Step344Counter_bounded⟩

private def s2Step344EntryFFresh : List Wire := []

private def s2Step344EntryFvFresh : List Wire := []

private def s2Step344EntryGFresh : List Wire := [894, 844]

private def s2Step344EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344EntryGvFresh : List Wire := [798, 877]

private def s2Step344ExitFExtra : List Wire := [800]

private def s2Step344ExitFvExtra : List Wire := [903]

private def s2Step344ExitGExtra : List Wire := [894, 844, 789]

private def s2Step344ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344ExitGvExtra : List Wire := [798, 877, 901]

private def s2Step344Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step344Add0Work : List Wire := [914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step344Add0_bounded : s2Step344Add0Work.toFinset⊆arenaWires := by
  have h : s2Step344Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step344Add0During : Arena := ⟨s2Step344Add0Arena.live∪s2Step344Add0Work.toFinset,Finset.union_subset s2Step344Add0Arena.bounded s2Step344Add0_bounded⟩

private def s2Step344Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step344Add1Work : List Wire := [914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step344Add1_bounded : s2Step344Add1Work.toFinset⊆arenaWires := by
  have h : s2Step344Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step344Add1During : Arena := ⟨s2Step344Add1Arena.live∪s2Step344Add1Work.toFinset,Finset.union_subset s2Step344Add1Arena.bounded s2Step344Add1_bounded⟩

private def s2Step344F4FlagArena : Arena := ⟨s2Step344HeadFvAfter.live∪{907},Finset.union_subset s2Step344HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step344F4Plan : HmrHybridF4Plan := ⟨s2Step344F4FlagArena,[907],s2Step344Add0Arena,[913],s2Step344Add0During,s2Step344Add0Work,s2Step344Add1During,s2Step344Add1Work⟩

private def s2Step344HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 800],768⟩

private def s2Step344HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 903],770⟩

private def s2Step344HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 894, 844, 789],769⟩

private def s2Step344HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step344FrontHead : WindowBank := ⟨s2Step344HeadFOut,s2Step344HeadGOut,s2Step344HeadFvOut,s2Step344HeadGvOut⟩

private def s2Step344EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step344EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step344EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 894, 844],769⟩

private def s2Step344EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877],771⟩

private def s2Step344FrontPair : WindowBank := ⟨s2Step344EntryFOut,s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut⟩

private def s2Step344FrontSigmaArena : Arena := ⟨s2Step344EntryGvAfter.live∪{839},Finset.union_subset s2Step344EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step344HeadFFresh : List Wire := [800]

private def s2Step344HeadFvFresh : List Wire := [903]

private def s2Step344HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344HeadGFresh : List Wire := [789]

private def s2Step344HeadGvFresh : List Wire := [901]

private def s2Step344FrontPlan : HmrSourceFront := ⟨s2Step344EntryGvAfter,s2Step344FrontPair,(growRow 768 s2Step344EntryFFresh ++ (growRow 769 s2Step344EntryGFresh ++ (growRow 770 s2Step344EntryFvFresh ++ (growRow 771 s2Step344EntryGvFresh ++ [])))),s2Step344FrontSigmaArena,[839],s2Step344HeadGBefore,[827],
  s2Step344HeadFvAfter,s2Step344FrontHead,(growRow 769 s2Step344HeadGFresh ++ (growRow 768 s2Step344HeadFFresh ++ (growRow 771 s2Step344HeadGvFresh ++ (growRow 770 s2Step344HeadFvFresh ++ [])))),s2Step344F4Plan,s2Step344CounterDuring,s2Step344CounterWork,s2Step344ExitGvAfter,s2Step344FrontOut,(shrinkRow 769 s2Step344ExitGExtra ++ (shrinkRow 768 s2Step344ExitFExtra ++ (shrinkRow 770 s2Step344ExitFvExtra ++ (shrinkRow 771 s2Step344ExitGvExtra ++ []))))⟩

private def s2Step344CompletePlan : HmrEarlyStepPlan := ⟨s2Step344FrontPlan,s2Step344EarlyControlArena,s2Step344EarlyControlPlan,s2Step344CompleteMoves⟩

private theorem s2Step344Complete_apart : List.Disjoint (s2Step344CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [839, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step344CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[839, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step344Complete_owned : (s2Step344CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step344EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344Complete_repack : s2Step344ExitGvAfter.checkRepack s2Step344CompleteMoves=some s2Step344EarlyControlArena := by rfl

private theorem s2Step344EarlyControl_branchOwned : ([827] : List Wire).toFinset⊆s2Step344EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlSigmaArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_branch : compileHmrBranchRetirement s2Step344EarlyControlSigmaArena 827=some s2Step344EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step344EarlyControl_branchOwned
  · ext q
    simp [s2Step344EarlyControlOutputArena,s2Step344EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step344EarlyControl_classEqualityBorrow : s2Step344EarlyControlPositiveArena.checkBorrow (([839, 894] : List Wire).length-1) s2Step344EarlyControlLog.classWork=some s2Step344EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step344EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step344EarlyControlEqualityArena,s2Step344EarlyControlPositiveArena,s2Step344EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step344EarlyControl_classEqualityOwned : ([839, 894] : List Wire).toFinset⊆s2Step344EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_classEquality : compileHmrEqualityLog s2Step344EarlyControlPositiveArena [839, 894] 0 s2Step344EarlyControlLog.classWork=some (s2Step344EarlyControlEqualityArena,s2Step344EarlyControlLog.classWork,s2Step344EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step344EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step344EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step344EarlyControl_classOwned : ([777, 800, 839] : List Wire).toFinset⊆s2Step344EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_positiveBorrow : s2Step344EarlyControlZeroArena.checkBorrow (1) s2Step344EarlyControlLog.positiveWork=some s2Step344EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step344EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step344EarlyControlPositiveArena,s2Step344EarlyControlZeroArena,s2Step344EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step344EarlyControl_class : compileHmrSourceClassLog s2Step344EarlyControlZeroArena false 777 s2Step344EarlyControlZeroPlan.top 0 839 s2Step344EarlyControlLog.positiveWork s2Step344EarlyControlLog.classWork=some s2Step344EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step344EarlyControlClassPlan s2Step344EarlyControlZeroArena false 777 s2Step344EarlyControlZeroPlan.top 0 839
  constructor
  · decide +kernel
  · exact s2Step344EarlyControl_classOwned
  · exact s2Step344EarlyControl_positiveBorrow
  · exact s2Step344EarlyControl_classEquality

private theorem s2Step344EarlyControl_entryRecordOwned : ([827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step344EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_entrySigmaOwned : ([839, 254] : List Wire).toFinset⊆s2Step344EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_fitBorrow : s2Step344EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step344EarlyControlLog.recordFresh=some s2Step344EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step344EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
      decide +kernel
    · ext q
      simp [s2Step344EarlyControlFittedArena,s2Step344EarlyControlFlagArena,s2Step344EarlyControlLog,arenaWires]

private theorem s2Step344EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step344EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_fit : compileHmrRecordGrowLog s2Step344EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step344EarlyControlLog.recordFresh=some s2Step344EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step344EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step344EarlyControl_fitBorrow

private theorem s2Step344EarlyControl_flagsBorrow : s2Step344EarlyControlEqualityArena.checkBorrow (6) s2Step344EarlyControlLog.flagWork=some s2Step344EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step344EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step344EarlyControlFlagArena,s2Step344EarlyControlEqualityArena,s2Step344EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step344EarlyControl_flagsOwned : ([844, 253, 252, 251] : List Wire).toFinset⊆s2Step344EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_flags : compileHmrFlagsLog s2Step344EarlyControlClassPlan.equalityArena s2Step344EarlyControlClassPlan.equality.top 253 252 251 s2Step344EarlyControlLog.flagWork=some s2Step344EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step344EarlyControl_flagsOwned⟩
  · exact s2Step344EarlyControl_flagsBorrow

private theorem s2Step344EarlyControl_historyBorrow : s2Step344EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step344EarlyControlLog.recordFresh=some s2Step344EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step344EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step344EarlyControlHistoryArena,s2Step344EarlyControlArena,s2Step344EarlyControlLog,arenaWires]

private theorem s2Step344EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step344EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_history : compileHmrRecordGrowLog s2Step344EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step344EarlyControlLog.recordFresh=some s2Step344EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step344EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step344EarlyControl_historyBorrow

private theorem s2Step344EarlyControl_sigmaOwned : ([254, 839] : List Wire).toFinset⊆s2Step344EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_sigmaReleaseOwned : ([839] : List Wire).toFinset⊆s2Step344EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_sigmaRelease : s2Step344EarlyControlHistoryArena.release {839} (fun _ => false)=some s2Step344EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step344EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step344EarlyControlSigmaArena,s2Step344EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step344EarlyControl_sigma : compileHmrSigmaDropLog s2Step344EarlyControlHistoryArena false 0 0 254 839 []=some s2Step344EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step344EarlyControl_sigmaOwned⟩
  · exact s2Step344EarlyControl_sigmaRelease

private theorem s2Step344EarlyControl_zeroBorrow : s2Step344EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step344EarlyControlLog.zeroWork=some s2Step344EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step344EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step344EarlyControlZeroArena,s2Step344EarlyControlArena,s2Step344EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step344EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step344EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step344EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EarlyControl_zero : compileHmrEqualityLog s2Step344EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step344EarlyControlLog.zeroWork=some (s2Step344EarlyControlZeroArena,s2Step344EarlyControlLog.zeroWork,s2Step344EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step344EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step344EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step344EarlyControl_logged : s2Step344EarlyControlPlan.Logged s2Step344EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 839 254 253 252 251 827 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step344EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step344EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step344EarlyControl_zero
  · exact s2Step344EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step344EarlyControl_flags
  · exact s2Step344EarlyControl_fit
  · exact s2Step344EarlyControl_history
  · exact s2Step344EarlyControl_sigma
  · exact s2Step344EarlyControl_branch

private theorem s2Step344EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step344EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 839 254 253 252 251 827 60 s2Step344EarlyControlLog=some s2Step344EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step344EarlyControlPlan s2Step344EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 839 254 253 252 251 827 60 s2Step344EarlyControl_logged

private def s2Step344EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step344EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step344EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],769⟩

private def s2Step344EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩

private def s2Step344FrontBank : WindowBank := ⟨s2Step344EntryFRow,s2Step344EntryGRow,s2Step344EntryFvRow,s2Step344EntryGvRow⟩

private def s2Step344Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 800, 768]

private def s2Step344Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 894, 844, 789, 769]

private def s2Step344Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 903, 770]

private def s2Step344Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 771]

private theorem s2Step344Counter_apart : Disjoint s2Step344HeadFvAfter.live s2Step344CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step344HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344Counter_borrowed : s2Step344HeadFvAfter.checkBorrow 4 s2Step344CounterWork=some s2Step344CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step344HeadFvAfter s2Step344CounterDuring s2Step344CounterWork.toFinset s2Step344Counter_bounded s2Step344Counter_apart rfl

private theorem s2Step344Counter_owned : (839::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step344HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step344HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344Counter_checked : compileHmrCounterStepLog s2Step344HeadFvAfter true 839 [772, 773, 774, 775, 776, 777] s2Step344CounterWork=some s2Step344CounterDuring := by
  have owned : ∀q∈839::[772, 773, 774, 775, 776, 777],q∈s2Step344HeadFvAfter.live := fun q hq => s2Step344Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step344Counter_borrowed

private def s2Step344EntryFAfter : Arena := s2Step344EntryFBefore

private theorem s2Step344EntryBank_incomingDistinct : ([s2Step344EntryFRow,s2Step344EntryGRow,s2Step344EntryFvRow,s2Step344EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344EntryF_Incoming : rowsOwned s2Step344EntryFBefore [s2Step344EntryFRow,s2Step344EntryGRow,s2Step344EntryFvRow,s2Step344EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344EntryFRow,s2Step344EntryGRow,s2Step344EntryFvRow,s2Step344EntryGvRow] 0 s2Step344EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344EntryBank_outgoingOwned : rowsOwned s2Step344EntryGvAfter [s2Step344EntryFOut,s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step344EntryGvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344EntryF_Outgoing : rowsOwned s2Step344EntryGvAfter [s2Step344EntryFOut,s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut] :=
  hmrRows_owned_drop s2Step344EntryGvAfter [s2Step344EntryFOut,s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut] 0 s2Step344EntryBank_outgoingOwned

private theorem s2Step344EntryF_distinct : (s2Step344EntryFRow.sign::s2Step344EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344EntryF_owned : (s2Step344EntryFRow.sign::s2Step344EntryFRow.payload).toFinset⊆s2Step344EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EntryF_reserved : s2Step344EntryFBefore.reserve s2Step344EntryFFresh.toFinset=some s2Step344EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step344EntryFFresh,arenaWires]
  · norm_num [s2Step344EntryFBefore,s2Step344EntryFFresh,arenaWires]
  · simp only [s2Step344EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step344EntryF_checked : planRowResizeLog s2Step344EntryFBefore s2Step344EntryFRow 101 s2Step344EntryFFresh=
    some (s2Step344EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩,growRow 768 s2Step344EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step344EntryFBefore s2Step344EntryFAfter s2Step344EntryFRow 101 s2Step344EntryFFresh
    s2Step344EntryF_distinct s2Step344EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step344EntryF_reserved
  have rowEq : WindowRow.mk (s2Step344EntryFRow.payload++s2Step344EntryFFresh) s2Step344EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step344EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344EntryFvAfter : Arena := s2Step344EntryGAfter

private def s2Step344EntryFvBefore : Arena := s2Step344EntryGAfter

private theorem s2Step344EntryFv_Incoming : rowsOwned s2Step344EntryFvBefore [s2Step344EntryFvRow,s2Step344EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344EntryFRow,s2Step344EntryGRow,s2Step344EntryFvRow,s2Step344EntryGvRow] 2 s2Step344EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344EntryFv_Outgoing : rowsOwned s2Step344EntryGvAfter [s2Step344EntryFvOut,s2Step344EntryGvOut] :=
  hmrRows_owned_drop s2Step344EntryGvAfter [s2Step344EntryFOut,s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut] 2 s2Step344EntryBank_outgoingOwned

private theorem s2Step344EntryFv_distinct : (s2Step344EntryFvRow.sign::s2Step344EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344EntryFv_owned : (s2Step344EntryFvRow.sign::s2Step344EntryFvRow.payload).toFinset⊆s2Step344EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EntryFv_reserved : s2Step344EntryFvBefore.reserve s2Step344EntryFvFresh.toFinset=some s2Step344EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step344EntryFvFresh,arenaWires]
  · norm_num [s2Step344EntryFvBefore,s2Step344EntryGAfter,s2Step344EntryFvFresh,arenaWires]
  · simp only [s2Step344EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step344EntryFv_checked : planRowResizeLog s2Step344EntryFvBefore s2Step344EntryFvRow 189 s2Step344EntryFvFresh=
    some (s2Step344EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩,growRow 770 s2Step344EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step344EntryFvBefore s2Step344EntryFvAfter s2Step344EntryFvRow 189 s2Step344EntryFvFresh
    s2Step344EntryFv_distinct s2Step344EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step344EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step344EntryFvRow.payload++s2Step344EntryFvFresh) s2Step344EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step344EntryGBefore : Arena := s2Step344EntryFBefore

private theorem s2Step344EntryG_Incoming : rowsOwned s2Step344EntryGBefore [s2Step344EntryGRow,s2Step344EntryFvRow,s2Step344EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344EntryFRow,s2Step344EntryGRow,s2Step344EntryFvRow,s2Step344EntryGvRow] 1 s2Step344EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344EntryG_Outgoing : rowsOwned s2Step344EntryGvAfter [s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut] :=
  hmrRows_owned_drop s2Step344EntryGvAfter [s2Step344EntryFOut,s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut] 1 s2Step344EntryBank_outgoingOwned

private theorem s2Step344EntryG_distinct : (s2Step344EntryGRow.sign::s2Step344EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344EntryG_owned : (s2Step344EntryGRow.sign::s2Step344EntryGRow.payload).toFinset⊆s2Step344EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EntryG_reserved : s2Step344EntryGBefore.reserve s2Step344EntryGFresh.toFinset=some s2Step344EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step344EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step344EntryGBefore,s2Step344EntryFBefore,s2Step344EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step344EntryGAfter,s2Step344EntryGBefore,s2Step344EntryFBefore,s2Step344EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step344EntryG_checked : planRowResizeLog s2Step344EntryGBefore s2Step344EntryGRow 101 s2Step344EntryGFresh=
    some (s2Step344EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 894, 844],769⟩,growRow 769 s2Step344EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step344EntryGBefore s2Step344EntryGAfter s2Step344EntryGRow 101 s2Step344EntryGFresh
    s2Step344EntryG_distinct s2Step344EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step344EntryG_reserved
  have rowEq : WindowRow.mk (s2Step344EntryGRow.payload++s2Step344EntryGFresh) s2Step344EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 894, 844],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step344EntryGvBefore : Arena := s2Step344EntryGAfter

private theorem s2Step344EntryGv_Incoming : rowsOwned s2Step344EntryGvBefore [s2Step344EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344EntryFRow,s2Step344EntryGRow,s2Step344EntryFvRow,s2Step344EntryGvRow] 3 s2Step344EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344EntryGv_Outgoing : rowsOwned s2Step344EntryGvAfter [s2Step344EntryGvOut] :=
  hmrRows_owned_drop s2Step344EntryGvAfter [s2Step344EntryFOut,s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut] 3 s2Step344EntryBank_outgoingOwned

private theorem s2Step344EntryGv_distinct : (s2Step344EntryGvRow.sign::s2Step344EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344EntryGv_owned : (s2Step344EntryGvRow.sign::s2Step344EntryGvRow.payload).toFinset⊆s2Step344EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344EntryGv_reserved : s2Step344EntryGvBefore.reserve s2Step344EntryGvFresh.toFinset=some s2Step344EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step344EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step344EntryGvBefore,s2Step344EntryGAfter,s2Step344EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step344EntryGvAfter,s2Step344EntryGvBefore,s2Step344EntryGAfter,s2Step344EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step344EntryGv_checked : planRowResizeLog s2Step344EntryGvBefore s2Step344EntryGvRow 189 s2Step344EntryGvFresh=
    some (s2Step344EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877],771⟩,growRow 771 s2Step344EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step344EntryGvBefore s2Step344EntryGvAfter s2Step344EntryGvRow 189 s2Step344EntryGvFresh
    s2Step344EntryGv_distinct s2Step344EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step344EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step344EntryGvRow.payload++s2Step344EntryGvFresh) s2Step344EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step344EntryBank_rows : planWindowRowsLog s2Step344EntryFBefore [(s2Step344EntryFRow,101),(s2Step344EntryGRow,101),(s2Step344EntryFvRow,189),(s2Step344EntryGvRow,189)] [s2Step344EntryFFresh,s2Step344EntryGFresh,s2Step344EntryFvFresh,s2Step344EntryGvFresh]=
    some (s2Step344EntryGvAfter,[s2Step344EntryFOut,s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut],(growRow 768 s2Step344EntryFFresh ++ (growRow 769 s2Step344EntryGFresh ++ (growRow 770 s2Step344EntryFvFresh ++ (growRow 771 s2Step344EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step344EntryGvAfter [] []=some (s2Step344EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step344EntryGvBefore s2Step344EntryGvAfter s2Step344EntryGvAfter
    s2Step344EntryGvRow s2Step344EntryGvOut 189 s2Step344EntryGvFresh [] [] []
    (growRow 771 s2Step344EntryGvFresh) ([]) s2Step344EntryGv_Incoming s2Step344EntryGv_checked h4 s2Step344EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step344EntryFvBefore s2Step344EntryFvAfter s2Step344EntryGvAfter
    s2Step344EntryFvRow s2Step344EntryFvOut 189 s2Step344EntryFvFresh [(s2Step344EntryGvRow,189)] [s2Step344EntryGvFresh] [s2Step344EntryGvOut]
    (growRow 770 s2Step344EntryFvFresh) ((growRow 771 s2Step344EntryGvFresh ++ [])) s2Step344EntryFv_Incoming s2Step344EntryFv_checked h3 s2Step344EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step344EntryGBefore s2Step344EntryGAfter s2Step344EntryGvAfter
    s2Step344EntryGRow s2Step344EntryGOut 101 s2Step344EntryGFresh [(s2Step344EntryFvRow,189),(s2Step344EntryGvRow,189)] [s2Step344EntryFvFresh,s2Step344EntryGvFresh] [s2Step344EntryFvOut,s2Step344EntryGvOut]
    (growRow 769 s2Step344EntryGFresh) ((growRow 770 s2Step344EntryFvFresh ++ (growRow 771 s2Step344EntryGvFresh ++ []))) s2Step344EntryG_Incoming s2Step344EntryG_checked h2 s2Step344EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step344EntryFBefore s2Step344EntryFAfter s2Step344EntryGvAfter
    s2Step344EntryFRow s2Step344EntryFOut 101 s2Step344EntryFFresh [(s2Step344EntryGRow,101),(s2Step344EntryFvRow,189),(s2Step344EntryGvRow,189)] [s2Step344EntryGFresh,s2Step344EntryFvFresh,s2Step344EntryGvFresh] [s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut]
    (growRow 768 s2Step344EntryFFresh) ((growRow 769 s2Step344EntryGFresh ++ (growRow 770 s2Step344EntryFvFresh ++ (growRow 771 s2Step344EntryGvFresh ++ [])))) s2Step344EntryF_Incoming s2Step344EntryF_checked h1 s2Step344EntryF_Outgoing
  exact h0

private theorem s2Step344EntryBank_checked : compileHmrBankResizeLog .entry s2Step344EntryFBefore ⟨s2Step344EntryFRow,s2Step344EntryGRow,s2Step344EntryFvRow,s2Step344EntryGvRow⟩ ⟨101,101,189,189⟩ [s2Step344EntryFFresh,s2Step344EntryGFresh,s2Step344EntryFvFresh,s2Step344EntryGvFresh]=
    some (s2Step344EntryGvAfter,⟨s2Step344EntryFOut,s2Step344EntryGOut,s2Step344EntryFvOut,s2Step344EntryGvOut⟩,(growRow 768 s2Step344EntryFFresh ++ (growRow 769 s2Step344EntryGFresh ++ (growRow 770 s2Step344EntryFvFresh ++ (growRow 771 s2Step344EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step344EntryBank_rows]
  rfl

private def s2Step344ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344ExitFBefore : Arena := s2Step344ExitGAfter

private def s2Step344ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 800],768⟩

private def s2Step344ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 903],770⟩

private def s2Step344ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 894, 844, 789],769⟩

private def s2Step344ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private theorem s2Step344ExitBank_incomingDistinct : ([s2Step344ExitGRow,s2Step344ExitFRow,s2Step344ExitFvRow,s2Step344ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344ExitF_Incoming : rowsOwned s2Step344ExitFBefore [s2Step344ExitFRow,s2Step344ExitFvRow,s2Step344ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344ExitGRow,s2Step344ExitFRow,s2Step344ExitFvRow,s2Step344ExitGvRow] 1 s2Step344ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344ExitFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344ExitBank_outgoingOwned : rowsOwned s2Step344ExitGvAfter [s2Step344ExitGOut,s2Step344ExitFOut,s2Step344ExitFvOut,s2Step344ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step344ExitGvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344ExitF_Outgoing : rowsOwned s2Step344ExitGvAfter [s2Step344ExitFOut,s2Step344ExitFvOut,s2Step344ExitGvOut] :=
  hmrRows_owned_drop s2Step344ExitGvAfter [s2Step344ExitGOut,s2Step344ExitFOut,s2Step344ExitFvOut,s2Step344ExitGvOut] 1 s2Step344ExitBank_outgoingOwned

private theorem s2Step344ExitF_distinct : (s2Step344ExitFRow.sign::s2Step344ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344ExitF_owned : (s2Step344ExitFRow.sign::s2Step344ExitFRow.payload).toFinset⊆s2Step344ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344ExitFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344ExitF_retired : s2Step344ExitFBefore.retireSet s2Step344ExitFExtra.toFinset=s2Step344ExitFAfter := by
  unfold Arena.retireSet s2Step344ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step344ExitFBefore,s2Step344ExitGAfter,s2Step344ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step344ExitF_checked : planRowResizeLog s2Step344ExitFBefore s2Step344ExitFRow 101 []=
    some (s2Step344ExitFAfter,s2Step344ExitFOut,shrinkRow 768 s2Step344ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step344ExitFBefore s2Step344ExitFRow 101 s2Step344ExitF_distinct s2Step344ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step344ExitFRow.payload.take 101) s2Step344ExitFRow.sign=s2Step344ExitFOut := by decide +kernel
  have hi : s2Step344ExitFRow.payload.drop 101=s2Step344ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step344ExitF_retired] at result
  exact result

private def s2Step344ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344ExitFvBefore : Arena := s2Step344ExitFAfter

private theorem s2Step344ExitFv_Incoming : rowsOwned s2Step344ExitFvBefore [s2Step344ExitFvRow,s2Step344ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344ExitGRow,s2Step344ExitFRow,s2Step344ExitFvRow,s2Step344ExitGvRow] 2 s2Step344ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344ExitFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344ExitFv_Outgoing : rowsOwned s2Step344ExitGvAfter [s2Step344ExitFvOut,s2Step344ExitGvOut] :=
  hmrRows_owned_drop s2Step344ExitGvAfter [s2Step344ExitGOut,s2Step344ExitFOut,s2Step344ExitFvOut,s2Step344ExitGvOut] 2 s2Step344ExitBank_outgoingOwned

private theorem s2Step344ExitFv_distinct : (s2Step344ExitFvRow.sign::s2Step344ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344ExitFv_owned : (s2Step344ExitFvRow.sign::s2Step344ExitFvRow.payload).toFinset⊆s2Step344ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344ExitFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344ExitFv_retired : s2Step344ExitFvBefore.retireSet s2Step344ExitFvExtra.toFinset=s2Step344ExitFvAfter := by
  unfold Arena.retireSet s2Step344ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step344ExitFvBefore,s2Step344ExitFAfter,s2Step344ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step344ExitFv_checked : planRowResizeLog s2Step344ExitFvBefore s2Step344ExitFvRow 189 []=
    some (s2Step344ExitFvAfter,s2Step344ExitFvOut,shrinkRow 770 s2Step344ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step344ExitFvBefore s2Step344ExitFvRow 189 s2Step344ExitFv_distinct s2Step344ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step344ExitFvRow.payload.take 189) s2Step344ExitFvRow.sign=s2Step344ExitFvOut := by decide +kernel
  have hi : s2Step344ExitFvRow.payload.drop 189=s2Step344ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step344ExitFv_retired] at result
  exact result

private def s2Step344ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step344ExitG_Incoming : rowsOwned s2Step344ExitGBefore [s2Step344ExitGRow,s2Step344ExitFRow,s2Step344ExitFvRow,s2Step344ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344ExitGRow,s2Step344ExitFRow,s2Step344ExitFvRow,s2Step344ExitGvRow] 0 s2Step344ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344ExitGBefore (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344ExitG_Outgoing : rowsOwned s2Step344ExitGvAfter [s2Step344ExitGOut,s2Step344ExitFOut,s2Step344ExitFvOut,s2Step344ExitGvOut] :=
  hmrRows_owned_drop s2Step344ExitGvAfter [s2Step344ExitGOut,s2Step344ExitFOut,s2Step344ExitFvOut,s2Step344ExitGvOut] 0 s2Step344ExitBank_outgoingOwned

private theorem s2Step344ExitG_distinct : (s2Step344ExitGRow.sign::s2Step344ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344ExitG_owned : (s2Step344ExitGRow.sign::s2Step344ExitGRow.payload).toFinset⊆s2Step344ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344ExitGBefore (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344ExitG_retired : s2Step344ExitGBefore.retireSet s2Step344ExitGExtra.toFinset=s2Step344ExitGAfter := by
  unfold Arena.retireSet s2Step344ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step344ExitGBefore,s2Step344ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step344ExitG_checked : planRowResizeLog s2Step344ExitGBefore s2Step344ExitGRow 99 []=
    some (s2Step344ExitGAfter,s2Step344ExitGOut,shrinkRow 769 s2Step344ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step344ExitGBefore s2Step344ExitGRow 99 s2Step344ExitG_distinct s2Step344ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step344ExitGRow.payload.take 99) s2Step344ExitGRow.sign=s2Step344ExitGOut := by decide +kernel
  have hi : s2Step344ExitGRow.payload.drop 99=s2Step344ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step344ExitG_retired] at result
  exact result

private def s2Step344ExitGvBefore : Arena := s2Step344ExitFvAfter

private theorem s2Step344ExitGv_Incoming : rowsOwned s2Step344ExitGvBefore [s2Step344ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344ExitGRow,s2Step344ExitFRow,s2Step344ExitFvRow,s2Step344ExitGvRow] 3 s2Step344ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344ExitGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344ExitGv_Outgoing : rowsOwned s2Step344ExitGvAfter [s2Step344ExitGvOut] :=
  hmrRows_owned_drop s2Step344ExitGvAfter [s2Step344ExitGOut,s2Step344ExitFOut,s2Step344ExitFvOut,s2Step344ExitGvOut] 3 s2Step344ExitBank_outgoingOwned

private theorem s2Step344ExitGv_distinct : (s2Step344ExitGvRow.sign::s2Step344ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344ExitGv_owned : (s2Step344ExitGvRow.sign::s2Step344ExitGvRow.payload).toFinset⊆s2Step344ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344ExitGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344ExitGv_retired : s2Step344ExitGvBefore.retireSet s2Step344ExitGvExtra.toFinset=s2Step344ExitGvAfter := by
  unfold Arena.retireSet s2Step344ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step344ExitGvBefore,s2Step344ExitFvAfter,s2Step344ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step344ExitGv_checked : planRowResizeLog s2Step344ExitGvBefore s2Step344ExitGvRow 187 []=
    some (s2Step344ExitGvAfter,s2Step344ExitGvOut,shrinkRow 771 s2Step344ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step344ExitGvBefore s2Step344ExitGvRow 187 s2Step344ExitGv_distinct s2Step344ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step344ExitGvRow.payload.take 187) s2Step344ExitGvRow.sign=s2Step344ExitGvOut := by decide +kernel
  have hi : s2Step344ExitGvRow.payload.drop 187=s2Step344ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step344ExitGv_retired] at result
  exact result

private theorem s2Step344ExitBank_rows : planWindowRowsLog s2Step344ExitGBefore [(s2Step344ExitGRow,99),(s2Step344ExitFRow,101),(s2Step344ExitFvRow,189),(s2Step344ExitGvRow,187)] [[],[],[],[]]=
    some (s2Step344ExitGvAfter,[s2Step344ExitGOut,s2Step344ExitFOut,s2Step344ExitFvOut,s2Step344ExitGvOut],(shrinkRow 769 s2Step344ExitGExtra ++ (shrinkRow 768 s2Step344ExitFExtra ++ (shrinkRow 770 s2Step344ExitFvExtra ++ (shrinkRow 771 s2Step344ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step344ExitGvAfter [] []=some (s2Step344ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step344ExitGvBefore s2Step344ExitGvAfter s2Step344ExitGvAfter
    s2Step344ExitGvRow s2Step344ExitGvOut 187 [] [] [] []
    (shrinkRow 771 s2Step344ExitGvExtra) ([]) s2Step344ExitGv_Incoming s2Step344ExitGv_checked h4 s2Step344ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step344ExitFvBefore s2Step344ExitFvAfter s2Step344ExitGvAfter
    s2Step344ExitFvRow s2Step344ExitFvOut 189 [] [(s2Step344ExitGvRow,187)] [[]] [s2Step344ExitGvOut]
    (shrinkRow 770 s2Step344ExitFvExtra) ((shrinkRow 771 s2Step344ExitGvExtra ++ [])) s2Step344ExitFv_Incoming s2Step344ExitFv_checked h3 s2Step344ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step344ExitFBefore s2Step344ExitFAfter s2Step344ExitGvAfter
    s2Step344ExitFRow s2Step344ExitFOut 101 [] [(s2Step344ExitFvRow,189),(s2Step344ExitGvRow,187)] [[],[]] [s2Step344ExitFvOut,s2Step344ExitGvOut]
    (shrinkRow 768 s2Step344ExitFExtra) ((shrinkRow 770 s2Step344ExitFvExtra ++ (shrinkRow 771 s2Step344ExitGvExtra ++ []))) s2Step344ExitF_Incoming s2Step344ExitF_checked h2 s2Step344ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step344ExitGBefore s2Step344ExitGAfter s2Step344ExitGvAfter
    s2Step344ExitGRow s2Step344ExitGOut 99 [] [(s2Step344ExitFRow,101),(s2Step344ExitFvRow,189),(s2Step344ExitGvRow,187)] [[],[],[]] [s2Step344ExitFOut,s2Step344ExitFvOut,s2Step344ExitGvOut]
    (shrinkRow 769 s2Step344ExitGExtra) ((shrinkRow 768 s2Step344ExitFExtra ++ (shrinkRow 770 s2Step344ExitFvExtra ++ (shrinkRow 771 s2Step344ExitGvExtra ++ [])))) s2Step344ExitG_Incoming s2Step344ExitG_checked h1 s2Step344ExitG_Outgoing
  exact h0

private theorem s2Step344ExitBank_checked : compileHmrBankResizeLog .exit s2Step344ExitGBefore ⟨s2Step344ExitFRow,s2Step344ExitGRow,s2Step344ExitFvRow,s2Step344ExitGvRow⟩ ⟨101,99,189,187⟩ [[],[],[],[]]=
    some (s2Step344ExitGvAfter,⟨s2Step344ExitFOut,s2Step344ExitGOut,s2Step344ExitFvOut,s2Step344ExitGvOut⟩,(shrinkRow 769 s2Step344ExitGExtra ++ (shrinkRow 768 s2Step344ExitFExtra ++ (shrinkRow 770 s2Step344ExitFvExtra ++ (shrinkRow 771 s2Step344ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step344ExitBank_rows]
  rfl

private theorem s2Step344Add0_apart : Disjoint s2Step344Add0Arena.live s2Step344Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step344Add0Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step344Add0_card : s2Step344Add0Arena.live.card=914 := by
  decide +kernel

private theorem s2Step344Add0_borrowed : s2Step344Add0Arena.checkBorrow (hmrHybridCount s2Step344Add0Arena s2Step344Add0B.length) s2Step344Add0Work=some s2Step344Add0During := by
  have len : s2Step344Add0Work.length=hmrHybridCount s2Step344Add0Arena s2Step344Add0B.length := by
    rw [hmrHybridCount,s2Step344Add0_card]
    decide +kernel
  have nd : s2Step344Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step344Add0Arena s2Step344Add0During s2Step344Add0Work.toFinset s2Step344Add0_bounded s2Step344Add0_apart rfl

private theorem s2Step344Add0_distinct : (907::827::913::(s2Step344Add0A++s2Step344Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344Add0_owned : (907::827::913::(s2Step344Add0A++s2Step344Add0B)).toFinset⊆s2Step344Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step344Add0Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step344Add0_checked : compileHmrHybridCinLog s2Step344Add0Arena 827 907 913 s2Step344Add0A s2Step344Add0B s2Step344Add0Work=some s2Step344Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step344Add0Arena s2Step344Add0During 827 907 913 s2Step344Add0A s2Step344Add0B s2Step344Add0Work
    (by decide +kernel) (by decide +kernel) s2Step344Add0_distinct
    (fun q hq => s2Step344Add0_owned (List.mem_toFinset.mpr hq)) s2Step344Add0_borrowed

private theorem s2Step344Add1_apart : Disjoint s2Step344Add1Arena.live s2Step344Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step344Add1Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step344Add1_card : s2Step344Add1Arena.live.card=914 := by
  decide +kernel

private theorem s2Step344Add1_borrowed : s2Step344Add1Arena.checkBorrow (hmrHybridCount s2Step344Add1Arena s2Step344Add1B.length) s2Step344Add1Work=some s2Step344Add1During := by
  have len : s2Step344Add1Work.length=hmrHybridCount s2Step344Add1Arena s2Step344Add1B.length := by
    rw [hmrHybridCount,s2Step344Add1_card]
    decide +kernel
  have nd : s2Step344Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step344Add1Arena s2Step344Add1During s2Step344Add1Work.toFinset s2Step344Add1_bounded s2Step344Add1_apart rfl

private theorem s2Step344Add1_distinct : (907::827::913::(s2Step344Add1A++s2Step344Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344Add1_owned : (907::827::913::(s2Step344Add1A++s2Step344Add1B)).toFinset⊆s2Step344Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step344Add1Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step344Add1_checked : compileHmrHybridCinLog s2Step344Add1Arena 827 907 913 s2Step344Add1A s2Step344Add1B s2Step344Add1Work=some s2Step344Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step344Add1Arena s2Step344Add1During 827 907 913 s2Step344Add1A s2Step344Add1B s2Step344Add1Work
    (by decide +kernel) (by decide +kernel) s2Step344Add1_distinct
    (fun q hq => s2Step344Add1_owned (List.mem_toFinset.mpr hq)) s2Step344Add1_borrowed

private theorem s2Step344F4_apart : Disjoint (s2Step344Add0A++s2Step344Add0B).toFinset (s2Step344Add1A++s2Step344Add1B).toFinset := by
  have nd : ((s2Step344Add0A++s2Step344Add0B)++(s2Step344Add1A++s2Step344Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step344F4_carry : s2Step344F4FlagArena.checkBorrow 1 [913]=some s2Step344Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step344F4FlagArena,s2Step344HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step344F4FlagArena,s2Step344HeadFvAfter,s2Step344Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step344F4_distinct : (839::827::907::913::((s2Step344Add0A++s2Step344Add1A)++(s2Step344Add0B++s2Step344Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344F4_flag : s2Step344HeadFvAfter.checkBorrow 1 [907]=some s2Step344F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step344HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step344F4_owned : (839::827::((s2Step344Add0A++s2Step344Add1A)++(s2Step344Add0B++s2Step344Add1B))).toFinset⊆s2Step344HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step344HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344F4_checked : compileHmrHybridF4Log s2Step344HeadFvAfter 839 827 s2Step344Add0A s2Step344Add0B s2Step344Add1A s2Step344Add1B [907] [913] s2Step344Add0Work s2Step344Add1Work=some s2Step344F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step344HeadFvAfter s2Step344F4FlagArena s2Step344Add0Arena s2Step344Add0During s2Step344Add1During 839 827
    s2Step344Add0A s2Step344Add0B s2Step344Add1A s2Step344Add1B [907] [913] s2Step344Add0Work s2Step344Add1Work
    (fun q hq => s2Step344F4_owned (List.mem_toFinset.mpr hq)) s2Step344F4_flag s2Step344F4_carry
    s2Step344F4_distinct s2Step344F4_apart s2Step344Add0_checked s2Step344Add1_checked

private theorem s2Step344Front_branch : s2Step344FrontSigmaArena.checkBorrow 1 [827]=some s2Step344HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step344FrontSigmaArena,s2Step344EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step344FrontSigmaArena,s2Step344EntryGvAfter,s2Step344HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step344Front_entry : HmrFrontEntryValid s2Step344EntryFBefore s2Step344FrontBank 101 189 ⟨101,99,189,187⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step344FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step344EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step344EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step344FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step344Front_sigma : s2Step344EntryGvAfter.checkBorrow 1 [839]=some s2Step344FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step344EntryGvAfter,arenaWires]
  · rfl

private def s2Step344HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344HeadFBefore : Arena := s2Step344HeadGAfter

private def s2Step344HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step344HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step344HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 894, 844],769⟩

private def s2Step344HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877],771⟩

private theorem s2Step344HeadBank_incomingDistinct : ([s2Step344HeadGRow,s2Step344HeadFRow,s2Step344HeadGvRow,s2Step344HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344HeadF_Incoming : rowsOwned s2Step344HeadFBefore [s2Step344HeadFRow,s2Step344HeadGvRow,s2Step344HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344HeadGRow,s2Step344HeadFRow,s2Step344HeadGvRow,s2Step344HeadFvRow] 1 s2Step344HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344HeadBank_outgoingOwned : rowsOwned s2Step344HeadFvAfter [s2Step344HeadGOut,s2Step344HeadFOut,s2Step344HeadGvOut,s2Step344HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step344HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344HeadF_Outgoing : rowsOwned s2Step344HeadFvAfter [s2Step344HeadFOut,s2Step344HeadGvOut,s2Step344HeadFvOut] :=
  hmrRows_owned_drop s2Step344HeadFvAfter [s2Step344HeadGOut,s2Step344HeadFOut,s2Step344HeadGvOut,s2Step344HeadFvOut] 1 s2Step344HeadBank_outgoingOwned

private theorem s2Step344HeadF_distinct : (s2Step344HeadFRow.sign::s2Step344HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344HeadF_owned : (s2Step344HeadFRow.sign::s2Step344HeadFRow.payload).toFinset⊆s2Step344HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344HeadF_reserved : s2Step344HeadFBefore.reserve s2Step344HeadFFresh.toFinset=some s2Step344HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step344HeadFFresh,arenaWires]
  · norm_num [s2Step344HeadFBefore,s2Step344HeadGAfter,s2Step344HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step344HeadFAfter,s2Step344HeadFBefore,s2Step344HeadGAfter,s2Step344HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step344HeadF_checked : planRowResizeLog s2Step344HeadFBefore s2Step344HeadFRow 102 s2Step344HeadFFresh=
    some (s2Step344HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 800],768⟩,growRow 768 s2Step344HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step344HeadFBefore s2Step344HeadFAfter s2Step344HeadFRow 102 s2Step344HeadFFresh
    s2Step344HeadF_distinct s2Step344HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step344HeadF_reserved
  have rowEq : WindowRow.mk (s2Step344HeadFRow.payload++s2Step344HeadFFresh) s2Step344HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step344HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step344HeadFvBefore : Arena := s2Step344HeadGvAfter

private theorem s2Step344HeadFv_Incoming : rowsOwned s2Step344HeadFvBefore [s2Step344HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344HeadGRow,s2Step344HeadFRow,s2Step344HeadGvRow,s2Step344HeadFvRow] 3 s2Step344HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344HeadFvBefore (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344HeadFv_Outgoing : rowsOwned s2Step344HeadFvAfter [s2Step344HeadFvOut] :=
  hmrRows_owned_drop s2Step344HeadFvAfter [s2Step344HeadGOut,s2Step344HeadFOut,s2Step344HeadGvOut,s2Step344HeadFvOut] 3 s2Step344HeadBank_outgoingOwned

private theorem s2Step344HeadFv_distinct : (s2Step344HeadFvRow.sign::s2Step344HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344HeadFv_owned : (s2Step344HeadFvRow.sign::s2Step344HeadFvRow.payload).toFinset⊆s2Step344HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344HeadFvBefore (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344HeadFv_reserved : s2Step344HeadFvBefore.reserve s2Step344HeadFvFresh.toFinset=some s2Step344HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step344HeadFvFresh,arenaWires]
  · norm_num [s2Step344HeadFvBefore,s2Step344HeadGvAfter,s2Step344HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step344HeadFvAfter,s2Step344HeadFvBefore,s2Step344HeadGvAfter,s2Step344HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step344HeadFv_checked : planRowResizeLog s2Step344HeadFvBefore s2Step344HeadFvRow 190 s2Step344HeadFvFresh=
    some (s2Step344HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 903],770⟩,growRow 770 s2Step344HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step344HeadFvBefore s2Step344HeadFvAfter s2Step344HeadFvRow 190 s2Step344HeadFvFresh
    s2Step344HeadFv_distinct s2Step344HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step344HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step344HeadFvRow.payload++s2Step344HeadFvFresh) s2Step344HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 903],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step344HeadG_Incoming : rowsOwned s2Step344HeadGBefore [s2Step344HeadGRow,s2Step344HeadFRow,s2Step344HeadGvRow,s2Step344HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344HeadGRow,s2Step344HeadFRow,s2Step344HeadGvRow,s2Step344HeadFvRow] 0 s2Step344HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344HeadG_Outgoing : rowsOwned s2Step344HeadFvAfter [s2Step344HeadGOut,s2Step344HeadFOut,s2Step344HeadGvOut,s2Step344HeadFvOut] :=
  hmrRows_owned_drop s2Step344HeadFvAfter [s2Step344HeadGOut,s2Step344HeadFOut,s2Step344HeadGvOut,s2Step344HeadFvOut] 0 s2Step344HeadBank_outgoingOwned

private theorem s2Step344HeadG_distinct : (s2Step344HeadGRow.sign::s2Step344HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344HeadG_owned : (s2Step344HeadGRow.sign::s2Step344HeadGRow.payload).toFinset⊆s2Step344HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344HeadG_reserved : s2Step344HeadGBefore.reserve s2Step344HeadGFresh.toFinset=some s2Step344HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step344HeadGFresh,arenaWires]
  · norm_num [s2Step344HeadGBefore,s2Step344HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step344HeadGAfter,s2Step344HeadGBefore,s2Step344HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step344HeadG_checked : planRowResizeLog s2Step344HeadGBefore s2Step344HeadGRow 102 s2Step344HeadGFresh=
    some (s2Step344HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 894, 844, 789],769⟩,growRow 769 s2Step344HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step344HeadGBefore s2Step344HeadGAfter s2Step344HeadGRow 102 s2Step344HeadGFresh
    s2Step344HeadG_distinct s2Step344HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step344HeadG_reserved
  have rowEq : WindowRow.mk (s2Step344HeadGRow.payload++s2Step344HeadGFresh) s2Step344HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 894, 844, 789],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step344HeadGvBefore : Arena := s2Step344HeadFAfter

private theorem s2Step344HeadGv_Incoming : rowsOwned s2Step344HeadGvBefore [s2Step344HeadGvRow,s2Step344HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step344HeadGRow,s2Step344HeadFRow,s2Step344HeadGvRow,s2Step344HeadFvRow] 2 s2Step344HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step344HeadGvBefore (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step344HeadGv_Outgoing : rowsOwned s2Step344HeadFvAfter [s2Step344HeadGvOut,s2Step344HeadFvOut] :=
  hmrRows_owned_drop s2Step344HeadFvAfter [s2Step344HeadGOut,s2Step344HeadFOut,s2Step344HeadGvOut,s2Step344HeadFvOut] 2 s2Step344HeadBank_outgoingOwned

private theorem s2Step344HeadGv_distinct : (s2Step344HeadGvRow.sign::s2Step344HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step344HeadGv_owned : (s2Step344HeadGvRow.sign::s2Step344HeadGvRow.payload).toFinset⊆s2Step344HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step344HeadGvBefore (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step344HeadGv_reserved : s2Step344HeadGvBefore.reserve s2Step344HeadGvFresh.toFinset=some s2Step344HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step344HeadGvFresh,arenaWires]
  · norm_num [s2Step344HeadGvBefore,s2Step344HeadFAfter,s2Step344HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step344HeadGvAfter,s2Step344HeadGvBefore,s2Step344HeadFAfter,s2Step344HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step344HeadGv_checked : planRowResizeLog s2Step344HeadGvBefore s2Step344HeadGvRow 190 s2Step344HeadGvFresh=
    some (s2Step344HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩,growRow 771 s2Step344HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step344HeadGvBefore s2Step344HeadGvAfter s2Step344HeadGvRow 190 s2Step344HeadGvFresh
    s2Step344HeadGv_distinct s2Step344HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step344HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step344HeadGvRow.payload++s2Step344HeadGvFresh) s2Step344HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step344HeadBank_rows : planWindowRowsLog s2Step344HeadGBefore [(s2Step344HeadGRow,102),(s2Step344HeadFRow,102),(s2Step344HeadGvRow,190),(s2Step344HeadFvRow,190)] [s2Step344HeadGFresh,s2Step344HeadFFresh,s2Step344HeadGvFresh,s2Step344HeadFvFresh]=
    some (s2Step344HeadFvAfter,[s2Step344HeadGOut,s2Step344HeadFOut,s2Step344HeadGvOut,s2Step344HeadFvOut],(growRow 769 s2Step344HeadGFresh ++ (growRow 768 s2Step344HeadFFresh ++ (growRow 771 s2Step344HeadGvFresh ++ (growRow 770 s2Step344HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step344HeadFvAfter [] []=some (s2Step344HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step344HeadFvBefore s2Step344HeadFvAfter s2Step344HeadFvAfter
    s2Step344HeadFvRow s2Step344HeadFvOut 190 s2Step344HeadFvFresh [] [] []
    (growRow 770 s2Step344HeadFvFresh) ([]) s2Step344HeadFv_Incoming s2Step344HeadFv_checked h4 s2Step344HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step344HeadGvBefore s2Step344HeadGvAfter s2Step344HeadFvAfter
    s2Step344HeadGvRow s2Step344HeadGvOut 190 s2Step344HeadGvFresh [(s2Step344HeadFvRow,190)] [s2Step344HeadFvFresh] [s2Step344HeadFvOut]
    (growRow 771 s2Step344HeadGvFresh) ((growRow 770 s2Step344HeadFvFresh ++ [])) s2Step344HeadGv_Incoming s2Step344HeadGv_checked h3 s2Step344HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step344HeadFBefore s2Step344HeadFAfter s2Step344HeadFvAfter
    s2Step344HeadFRow s2Step344HeadFOut 102 s2Step344HeadFFresh [(s2Step344HeadGvRow,190),(s2Step344HeadFvRow,190)] [s2Step344HeadGvFresh,s2Step344HeadFvFresh] [s2Step344HeadGvOut,s2Step344HeadFvOut]
    (growRow 768 s2Step344HeadFFresh) ((growRow 771 s2Step344HeadGvFresh ++ (growRow 770 s2Step344HeadFvFresh ++ []))) s2Step344HeadF_Incoming s2Step344HeadF_checked h2 s2Step344HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step344HeadGBefore s2Step344HeadGAfter s2Step344HeadFvAfter
    s2Step344HeadGRow s2Step344HeadGOut 102 s2Step344HeadGFresh [(s2Step344HeadFRow,102),(s2Step344HeadGvRow,190),(s2Step344HeadFvRow,190)] [s2Step344HeadFFresh,s2Step344HeadGvFresh,s2Step344HeadFvFresh] [s2Step344HeadFOut,s2Step344HeadGvOut,s2Step344HeadFvOut]
    (growRow 769 s2Step344HeadGFresh) ((growRow 768 s2Step344HeadFFresh ++ (growRow 771 s2Step344HeadGvFresh ++ (growRow 770 s2Step344HeadFvFresh ++ [])))) s2Step344HeadG_Incoming s2Step344HeadG_checked h1 s2Step344HeadG_Outgoing
  exact h0

private theorem s2Step344HeadBank_checked : compileHmrBankResizeLog .headroom s2Step344HeadGBefore ⟨s2Step344HeadFRow,s2Step344HeadGRow,s2Step344HeadFvRow,s2Step344HeadGvRow⟩ ⟨102,102,190,190⟩ [s2Step344HeadGFresh,s2Step344HeadFFresh,s2Step344HeadGvFresh,s2Step344HeadFvFresh]=
    some (s2Step344HeadFvAfter,⟨s2Step344HeadFOut,s2Step344HeadGOut,s2Step344HeadFvOut,s2Step344HeadGvOut⟩,(growRow 769 s2Step344HeadGFresh ++ (growRow 768 s2Step344HeadFFresh ++ (growRow 771 s2Step344HeadGvFresh ++ (growRow 770 s2Step344HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step344HeadBank_rows]
  rfl

private theorem s2Step344Front_checked : compileHmrSourceFrontLog s2Step344EntryFBefore s2Step344FrontBank 101 189 ⟨101,99,189,187⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step344FrontLog=some s2Step344FrontPlan := by
  have pairEq : s2Step344FrontPair=⟨s2Step344HeadFRow,s2Step344HeadGRow,s2Step344HeadFvRow,s2Step344HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step344FrontHead=⟨s2Step344ExitFRow,s2Step344ExitGRow,s2Step344ExitFvRow,s2Step344ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step344Add0A=s2Step344FrontHead.f.wires := by decide +kernel
  have gEq : s2Step344Add0B=s2Step344FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step344Add1A=s2Step344FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step344Add1B=s2Step344FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step344EntryFBefore s2Step344FrontBank 101 189 ⟨101,99,189,187⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step344FrontLog s2Step344FrontPlan
  · exact s2Step344Front_entry
  · exact s2Step344EntryBank_checked
  · exact s2Step344Front_sigma
  · rfl
  · exact s2Step344Front_branch
  · rfl
  · simpa only [s2Step344FrontPlan,pairEq] using s2Step344HeadBank_checked
  · simpa only [s2Step344FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step344F4_checked
  · exact s2Step344Counter_checked
  · rfl
  · simpa only [s2Step344FrontPlan,headEq] using s2Step344ExitBank_checked

private theorem s2Step344Complete_explicit_checked : compileHmrEarlyStepLog s2Step344EntryFBefore s2Step344FrontBank 101 189 ⟨101,99,189,187⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step344CompleteLog=some s2Step344CompletePlan := by
  let Q := s2Step344EarlyControlPlan
  have hq := s2Step344EarlyControl_plan_checked
  have fv1 : s2Step344CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step344CompleteOut.fv.payload[2]?.getD s2Step344CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step344CompleteOut.fv.payload[3]?.getD s2Step344CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step344CompleteOut.fv.payload[4]?.getD s2Step344CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step344EntryFBefore s2Step344EarlyControlArena s2Step344FrontBank 101 189 ⟨101,99,189,187⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step344CompleteLog s2Step344FrontPlan Q
    s2Step344Front_checked s2Step344Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step344Complete_owned s2Step344Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step344EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 839 s2Step344CompleteOut.fv.second (s2Step344CompleteOut.fv.payload[2]?.getD s2Step344CompleteOut.fv.sign) (s2Step344CompleteOut.fv.payload[3]?.getD s2Step344CompleteOut.fv.sign) (s2Step344CompleteOut.fv.payload[4]?.getD s2Step344CompleteOut.fv.sign) 827 60 s2Step344EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep344Arena : Arena := s2Step344EntryFBefore
def s2PrivateStep344Bank : WindowBank := s2Step344FrontBank
def s2PrivateStep344Spec : HmrSourceWalkStepLog := ⟨101,189,⟨101,99,189,187⟩,60,.early s2Step344CompleteLog⟩
def s2PrivateStep344Plan : HmrSourceStepPlan := .early s2Step344CompletePlan
theorem s2PrivateStep344_source : s2PrivateStep344Spec=s2ObservedLogs336[8] := rfl
theorem s2PrivateStep344_checked : compileHmrSourceStepLog s2PrivateStep344Arena s2PrivateStep344Bank
    s2PrivateStep344Spec.fgWidth s2PrivateStep344Spec.vWidth s2PrivateStep344Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 344 s2PrivateStep344Spec.need none s2PrivateStep344Spec.log=some s2PrivateStep344Plan := by
  change compileHmrSourceStepLog s2Step344EntryFBefore s2Step344FrontBank 101 189 ⟨101,99,189,187⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 344 60 none (.early s2Step344CompleteLog)=some (.early s2Step344CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 344<498)]
  rw [s2Step344Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
