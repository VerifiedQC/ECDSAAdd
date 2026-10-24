import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep318
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

private def s2Step320CompleteMoves : List (Wire × Wire) := [(840,622),(814,623)]

private def s2Step320EarlyControlLog : HmrEarlyControlLog := ⟨[814, 840, 827, 787, 834],[806],[784],[800, 894, 896, 901, 903, 907],[908]⟩

private def s2Step320FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [806, 784], [], [792]],[[800], [834], [827], [787]],[[], [], [], []]⟩,[807],[830],[894],[896],[901, 903, 907, 908, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[901, 903, 907, 908, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903]⟩

private def s2Step320CompleteLog : HmrEarlyStepLog := ⟨s2Step320FrontLog,s2Step320CompleteMoves,s2Step320EarlyControlLog⟩

private def s2Step320ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩

private def s2Step320ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step320ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩

private def s2Step320ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩

private def s2Step320FrontOut : WindowBank := ⟨s2Step320ExitFOut,s2Step320ExitGOut,s2Step320ExitFvOut,s2Step320ExitGvOut⟩

private def s2Step320CompleteOut : WindowBank := s2Step320FrontOut.repacked s2Step320CompleteMoves

private def s2Step320EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step320EarlyControlPositiveArena,[806],s2Step320EarlyControlEqualityArena,[784],⟨⟨807,false⟩,[⟨⟨806,false⟩,784⟩]⟩⟩

private def s2Step320EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<908) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,814⟩,⟨⟨774,false⟩,840⟩,⟨⟨775,false⟩,827⟩,⟨⟨776,false⟩,787⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step320EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step320EarlyControlZeroArena,s2Step320EarlyControlZeroPlan,s2Step320EarlyControlClassPlan,s2Step320EarlyControlFlagArena,s2Step320EarlyControlFittedArena,s2Step320EarlyControlHistoryArena,s2Step320EarlyControlSigmaArena,s2Step320EarlyControlOutputArena,s2Step320EarlyControlLog⟩

private def s2Step320CounterWork : List Wire := [894, 896, 901, 903]

private theorem s2Step320Counter_bounded : s2Step320CounterWork.toFinset⊆arenaWires := by norm_num [s2Step320CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step320HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320CounterDuring : Arena := ⟨s2Step320HeadFvAfter.live∪s2Step320CounterWork.toFinset,Finset.union_subset s2Step320HeadFvAfter.bounded s2Step320Counter_bounded⟩

private def s2Step320EntryFFresh : List Wire := []

private def s2Step320EntryFvFresh : List Wire := []

private def s2Step320EntryGFresh : List Wire := [806, 784]

private def s2Step320EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EntryGvFresh : List Wire := [792]

private def s2Step320ExitFExtra : List Wire := [622, 623, 834]

private def s2Step320ExitFvExtra : List Wire := [787]

private def s2Step320ExitGExtra : List Wire := [806, 784, 800]

private def s2Step320ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<622) ∨ (624≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320ExitGvExtra : List Wire := [827]

private def s2Step320Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320Add0Work : List Wire := [901, 903, 907, 908, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step320Add0_bounded : s2Step320Add0Work.toFinset⊆arenaWires := by
  have h : s2Step320Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step320Add0During : Arena := ⟨s2Step320Add0Arena.live∪s2Step320Add0Work.toFinset,Finset.union_subset s2Step320Add0Arena.bounded s2Step320Add0_bounded⟩

private def s2Step320Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320Add1Work : List Wire := [901, 903, 907, 908, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step320Add1_bounded : s2Step320Add1Work.toFinset⊆arenaWires := by
  have h : s2Step320Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step320Add1During : Arena := ⟨s2Step320Add1Arena.live∪s2Step320Add1Work.toFinset,Finset.union_subset s2Step320Add1Arena.bounded s2Step320Add1_bounded⟩

private def s2Step320F4FlagArena : Arena := ⟨s2Step320HeadFvAfter.live∪{894},Finset.union_subset s2Step320HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step320F4Plan : HmrHybridF4Plan := ⟨s2Step320F4FlagArena,[894],s2Step320Add0Arena,[896],s2Step320Add0During,s2Step320Add0Work,s2Step320Add1During,s2Step320Add1Work⟩

private def s2Step320HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩

private def s2Step320HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 787],770⟩

private def s2Step320HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 806, 784, 800],769⟩

private def s2Step320HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 827],771⟩

private def s2Step320FrontHead : WindowBank := ⟨s2Step320HeadFOut,s2Step320HeadGOut,s2Step320HeadFvOut,s2Step320HeadGvOut⟩

private def s2Step320EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step320EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step320EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 806, 784],769⟩

private def s2Step320EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩

private def s2Step320FrontPair : WindowBank := ⟨s2Step320EntryFOut,s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut⟩

private def s2Step320FrontSigmaArena : Arena := ⟨s2Step320EntryGvAfter.live∪{807},Finset.union_subset s2Step320EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step320HeadFFresh : List Wire := [834]

private def s2Step320HeadFvFresh : List Wire := [787]

private def s2Step320HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320HeadGFresh : List Wire := [800]

private def s2Step320HeadGvFresh : List Wire := [827]

private def s2Step320FrontPlan : HmrSourceFront := ⟨s2Step320EntryGvAfter,s2Step320FrontPair,(growRow 768 s2Step320EntryFFresh ++ (growRow 769 s2Step320EntryGFresh ++ (growRow 770 s2Step320EntryFvFresh ++ (growRow 771 s2Step320EntryGvFresh ++ [])))),s2Step320FrontSigmaArena,[807],s2Step320HeadGBefore,[830],
  s2Step320HeadFvAfter,s2Step320FrontHead,(growRow 769 s2Step320HeadGFresh ++ (growRow 768 s2Step320HeadFFresh ++ (growRow 771 s2Step320HeadGvFresh ++ (growRow 770 s2Step320HeadFvFresh ++ [])))),s2Step320F4Plan,s2Step320CounterDuring,s2Step320CounterWork,s2Step320ExitGvAfter,s2Step320FrontOut,(shrinkRow 769 s2Step320ExitGExtra ++ (shrinkRow 768 s2Step320ExitFExtra ++ (shrinkRow 770 s2Step320ExitFvExtra ++ (shrinkRow 771 s2Step320ExitGvExtra ++ []))))⟩

private def s2Step320CompletePlan : HmrEarlyStepPlan := ⟨s2Step320FrontPlan,s2Step320EarlyControlArena,s2Step320EarlyControlPlan,s2Step320CompleteMoves⟩

private theorem s2Step320Complete_apart : List.Disjoint (s2Step320CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [807, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] := by
  have nd : ((s2Step320CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[807, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step320Complete_owned : (s2Step320CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step320EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private def s2Step320CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,623),(624,784),(785,787),(788,800),(801,806),(807,827),(828,834),(835,840),(841,894),(895,896),(897,901),(902,903),(904,907),(909,911)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step320CompleteRelocationMove0Borrowed : Arena := ⟨s2Step320ExitGvAfter.live∪{622},Finset.union_subset s2Step320ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step320CompleteRelocationMove1Borrowed : Arena := ⟨s2Step320CompleteRelocationMove0After.live∪{623},Finset.union_subset s2Step320CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step320CompleteRelocation_move0_owned : 840∈s2Step320ExitGvAfter.live := by norm_num [s2Step320ExitGvAfter,arenaWires]

private theorem s2Step320CompleteRelocation_move0_reserve : s2Step320ExitGvAfter.reserve {622}=some s2Step320CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step320ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step320CompleteRelocation_move0_retire : s2Step320CompleteRelocationMove0Borrowed.retireSet {840}=s2Step320CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step320CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step320CompleteRelocationMove0Borrowed,s2Step320ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step320CompleteRelocation_move1_owned : 814∈s2Step320CompleteRelocationMove0After.live := by norm_num [s2Step320CompleteRelocationMove0After,arenaWires]

private theorem s2Step320CompleteRelocation_move1_reserve : s2Step320CompleteRelocationMove0After.reserve {623}=some s2Step320CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step320CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step320CompleteRelocation_move1_retire : s2Step320CompleteRelocationMove1Borrowed.retireSet {814}=s2Step320EarlyControlArena := by
  unfold Arena.retireSet s2Step320EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step320CompleteRelocationMove1Borrowed,s2Step320CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step320CompleteRelocation_checked : s2Step320ExitGvAfter.checkRepack [(840,622),(814,623)]=some s2Step320EarlyControlArena := by
  have tail2 : s2Step320EarlyControlArena.checkRepack []=some s2Step320EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step320CompleteRelocationMove0After s2Step320CompleteRelocationMove1Borrowed s2Step320EarlyControlArena s2Step320EarlyControlArena 814 623 []
    s2Step320CompleteRelocation_move1_owned s2Step320CompleteRelocation_move1_reserve s2Step320CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step320ExitGvAfter s2Step320CompleteRelocationMove0Borrowed s2Step320CompleteRelocationMove0After s2Step320EarlyControlArena 840 622 [(814,623)]
    s2Step320CompleteRelocation_move0_owned s2Step320CompleteRelocation_move0_reserve s2Step320CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step320Complete_repack : s2Step320ExitGvAfter.checkRepack s2Step320CompleteMoves=some s2Step320EarlyControlArena := by
  simpa only [s2Step320CompleteMoves] using s2Step320CompleteRelocation_checked

private theorem s2Step320EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s2Step320EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_branch : compileHmrBranchRetirement s2Step320EarlyControlSigmaArena 830=some s2Step320EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step320EarlyControl_branchOwned
  · ext q
    simp [s2Step320EarlyControlOutputArena,s2Step320EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step320EarlyControl_classEqualityBorrow : s2Step320EarlyControlPositiveArena.checkBorrow (([807, 806] : List Wire).length-1) s2Step320EarlyControlLog.classWork=some s2Step320EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step320EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step320EarlyControlEqualityArena,s2Step320EarlyControlPositiveArena,s2Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step320EarlyControl_classEqualityOwned : ([807, 806] : List Wire).toFinset⊆s2Step320EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_classEquality : compileHmrEqualityLog s2Step320EarlyControlPositiveArena [807, 806] 0 s2Step320EarlyControlLog.classWork=some (s2Step320EarlyControlEqualityArena,s2Step320EarlyControlLog.classWork,s2Step320EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step320EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step320EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step320EarlyControl_classOwned : ([777, 834, 807] : List Wire).toFinset⊆s2Step320EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_positiveBorrow : s2Step320EarlyControlZeroArena.checkBorrow (1) s2Step320EarlyControlLog.positiveWork=some s2Step320EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step320EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step320EarlyControlPositiveArena,s2Step320EarlyControlZeroArena,s2Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step320EarlyControl_class : compileHmrSourceClassLog s2Step320EarlyControlZeroArena false 777 s2Step320EarlyControlZeroPlan.top 0 807 s2Step320EarlyControlLog.positiveWork s2Step320EarlyControlLog.classWork=some s2Step320EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step320EarlyControlClassPlan s2Step320EarlyControlZeroArena false 777 s2Step320EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s2Step320EarlyControl_classOwned
  · exact s2Step320EarlyControl_positiveBorrow
  · exact s2Step320EarlyControl_classEquality

private theorem s2Step320EarlyControl_entryRecordOwned : ([830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] : List Wire).toFinset⊆s2Step320EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s2Step320EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_fitBorrow : s2Step320EarlyControlFlagArena.checkBorrow ((58-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] : List Wire).length)) s2Step320EarlyControlLog.recordFresh=some s2Step320EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step320EarlyControlFlagArena (fun q => (0≤q ∧ q<908) ∨ (909≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step320EarlyControlFittedArena,s2Step320EarlyControlFlagArena,s2Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step320EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] : List Wire).toFinset⊆s2Step320EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlFlagArena (fun q => (0≤q ∧ q<908) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_fit : compileHmrRecordGrowLog s2Step320EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] 58 s2Step320EarlyControlLog.recordFresh=some s2Step320EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step320EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step320EarlyControl_fitBorrow

private theorem s2Step320EarlyControl_flagsBorrow : s2Step320EarlyControlEqualityArena.checkBorrow (6) s2Step320EarlyControlLog.flagWork=some s2Step320EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step320EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step320EarlyControlFlagArena,s2Step320EarlyControlEqualityArena,s2Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step320EarlyControl_flagsOwned : ([784, 253, 252, 251] : List Wire).toFinset⊆s2Step320EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_flags : compileHmrFlagsLog s2Step320EarlyControlClassPlan.equalityArena s2Step320EarlyControlClassPlan.equality.top 253 252 251 s2Step320EarlyControlLog.flagWork=some s2Step320EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step320EarlyControl_flagsOwned⟩
  · exact s2Step320EarlyControl_flagsBorrow

private theorem s2Step320EarlyControl_historyBorrow : s2Step320EarlyControlArena.checkBorrow ((58-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] : List Wire).length)) s2Step320EarlyControlLog.recordFresh=some s2Step320EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step320EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step320EarlyControlHistoryArena,s2Step320EarlyControlArena,s2Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step320EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] : List Wire).toFinset⊆s2Step320EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_history : compileHmrRecordGrowLog s2Step320EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] 58 s2Step320EarlyControlLog.recordFresh=some s2Step320EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step320EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step320EarlyControl_historyBorrow

private theorem s2Step320EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s2Step320EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s2Step320EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_sigmaRelease : s2Step320EarlyControlHistoryArena.release {807} (fun _ => false)=some s2Step320EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step320EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step320EarlyControlSigmaArena,s2Step320EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step320EarlyControl_sigma : compileHmrSigmaDropLog s2Step320EarlyControlHistoryArena false 0 0 254 807 []=some s2Step320EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step320EarlyControl_sigmaOwned⟩
  · exact s2Step320EarlyControl_sigmaRelease

private theorem s2Step320EarlyControl_zeroBorrow : s2Step320EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step320EarlyControlLog.zeroWork=some s2Step320EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step320EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step320EarlyControlZeroArena,s2Step320EarlyControlArena,s2Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step320EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step320EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step320EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EarlyControl_zero : compileHmrEqualityLog s2Step320EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step320EarlyControlLog.zeroWork=some (s2Step320EarlyControlZeroArena,s2Step320EarlyControlLog.zeroWork,s2Step320EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step320EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step320EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step320EarlyControl_logged : s2Step320EarlyControlPlan.Logged s2Step320EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] 777 807 254 253 252 251 830 58 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step320EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step320EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step320EarlyControl_zero
  · exact s2Step320EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step320EarlyControl_flags
  · exact s2Step320EarlyControl_fit
  · exact s2Step320EarlyControl_history
  · exact s2Step320EarlyControl_sigma
  · exact s2Step320EarlyControl_branch

private theorem s2Step320EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step320EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] 777 807 254 253 252 251 830 58 s2Step320EarlyControlLog=some s2Step320EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step320EarlyControlPlan s2Step320EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] 777 807 254 253 252 251 830 58 s2Step320EarlyControl_logged

private def s2Step320EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step320EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step320EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩

private def s2Step320EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809],771⟩

private def s2Step320FrontBank : WindowBank := ⟨s2Step320EntryFRow,s2Step320EntryGRow,s2Step320EntryFvRow,s2Step320EntryGvRow⟩

private def s2Step320Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834, 768]

private def s2Step320Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 806, 784, 800, 769]

private def s2Step320Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 787, 770]

private def s2Step320Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 827, 771]

private theorem s2Step320Counter_apart : Disjoint s2Step320HeadFvAfter.live s2Step320CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step320HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320Counter_borrowed : s2Step320HeadFvAfter.checkBorrow 4 s2Step320CounterWork=some s2Step320CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step320HeadFvAfter s2Step320CounterDuring s2Step320CounterWork.toFinset s2Step320Counter_bounded s2Step320Counter_apart rfl

private theorem s2Step320Counter_owned : (807::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step320HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step320HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320Counter_checked : compileHmrCounterStepLog s2Step320HeadFvAfter true 807 [772, 773, 774, 775, 776, 777] s2Step320CounterWork=some s2Step320CounterDuring := by
  have owned : ∀q∈807::[772, 773, 774, 775, 776, 777],q∈s2Step320HeadFvAfter.live := fun q hq => s2Step320Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step320Counter_borrowed

private def s2Step320EntryFAfter : Arena := s2Step320EntryFBefore

private theorem s2Step320EntryBank_incomingDistinct : ([s2Step320EntryFRow,s2Step320EntryGRow,s2Step320EntryFvRow,s2Step320EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320EntryF_Incoming : rowsOwned s2Step320EntryFBefore [s2Step320EntryFRow,s2Step320EntryGRow,s2Step320EntryFvRow,s2Step320EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320EntryFRow,s2Step320EntryGRow,s2Step320EntryFvRow,s2Step320EntryGvRow] 0 s2Step320EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320EntryBank_outgoingOwned : rowsOwned s2Step320EntryGvAfter [s2Step320EntryFOut,s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step320EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320EntryF_Outgoing : rowsOwned s2Step320EntryGvAfter [s2Step320EntryFOut,s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut] :=
  hmrRows_owned_drop s2Step320EntryGvAfter [s2Step320EntryFOut,s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut] 0 s2Step320EntryBank_outgoingOwned

private theorem s2Step320EntryF_distinct : (s2Step320EntryFRow.sign::s2Step320EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320EntryF_owned : (s2Step320EntryFRow.sign::s2Step320EntryFRow.payload).toFinset⊆s2Step320EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EntryF_reserved : s2Step320EntryFBefore.reserve s2Step320EntryFFresh.toFinset=some s2Step320EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step320EntryFFresh,arenaWires]
  · norm_num [s2Step320EntryFBefore,s2Step320EntryFFresh,arenaWires]
  · simp only [s2Step320EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step320EntryF_checked : planRowResizeLog s2Step320EntryFBefore s2Step320EntryFRow 112 s2Step320EntryFFresh=
    some (s2Step320EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩,growRow 768 s2Step320EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step320EntryFBefore s2Step320EntryFAfter s2Step320EntryFRow 112 s2Step320EntryFFresh
    s2Step320EntryF_distinct s2Step320EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step320EntryF_reserved
  have rowEq : WindowRow.mk (s2Step320EntryFRow.payload++s2Step320EntryFFresh) s2Step320EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step320EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320EntryFvAfter : Arena := s2Step320EntryGAfter

private def s2Step320EntryFvBefore : Arena := s2Step320EntryGAfter

private theorem s2Step320EntryFv_Incoming : rowsOwned s2Step320EntryFvBefore [s2Step320EntryFvRow,s2Step320EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320EntryFRow,s2Step320EntryGRow,s2Step320EntryFvRow,s2Step320EntryGvRow] 2 s2Step320EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320EntryFv_Outgoing : rowsOwned s2Step320EntryGvAfter [s2Step320EntryFvOut,s2Step320EntryGvOut] :=
  hmrRows_owned_drop s2Step320EntryGvAfter [s2Step320EntryFOut,s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut] 2 s2Step320EntryBank_outgoingOwned

private theorem s2Step320EntryFv_distinct : (s2Step320EntryFvRow.sign::s2Step320EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320EntryFv_owned : (s2Step320EntryFvRow.sign::s2Step320EntryFvRow.payload).toFinset⊆s2Step320EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EntryFv_reserved : s2Step320EntryFvBefore.reserve s2Step320EntryFvFresh.toFinset=some s2Step320EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step320EntryFvFresh,arenaWires]
  · norm_num [s2Step320EntryFvBefore,s2Step320EntryGAfter,s2Step320EntryFvFresh,arenaWires]
  · simp only [s2Step320EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step320EntryFv_checked : planRowResizeLog s2Step320EntryFvBefore s2Step320EntryFvRow 176 s2Step320EntryFvFresh=
    some (s2Step320EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩,growRow 770 s2Step320EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step320EntryFvBefore s2Step320EntryFvAfter s2Step320EntryFvRow 176 s2Step320EntryFvFresh
    s2Step320EntryFv_distinct s2Step320EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step320EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step320EntryFvRow.payload++s2Step320EntryFvFresh) s2Step320EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step320EntryGBefore : Arena := s2Step320EntryFBefore

private theorem s2Step320EntryG_Incoming : rowsOwned s2Step320EntryGBefore [s2Step320EntryGRow,s2Step320EntryFvRow,s2Step320EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320EntryFRow,s2Step320EntryGRow,s2Step320EntryFvRow,s2Step320EntryGvRow] 1 s2Step320EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320EntryG_Outgoing : rowsOwned s2Step320EntryGvAfter [s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut] :=
  hmrRows_owned_drop s2Step320EntryGvAfter [s2Step320EntryFOut,s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut] 1 s2Step320EntryBank_outgoingOwned

private theorem s2Step320EntryG_distinct : (s2Step320EntryGRow.sign::s2Step320EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320EntryG_owned : (s2Step320EntryGRow.sign::s2Step320EntryGRow.payload).toFinset⊆s2Step320EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EntryG_reserved : s2Step320EntryGBefore.reserve s2Step320EntryGFresh.toFinset=some s2Step320EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step320EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step320EntryGBefore,s2Step320EntryFBefore,s2Step320EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step320EntryGAfter,s2Step320EntryGBefore,s2Step320EntryFBefore,s2Step320EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step320EntryG_checked : planRowResizeLog s2Step320EntryGBefore s2Step320EntryGRow 112 s2Step320EntryGFresh=
    some (s2Step320EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 806, 784],769⟩,growRow 769 s2Step320EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step320EntryGBefore s2Step320EntryGAfter s2Step320EntryGRow 112 s2Step320EntryGFresh
    s2Step320EntryG_distinct s2Step320EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step320EntryG_reserved
  have rowEq : WindowRow.mk (s2Step320EntryGRow.payload++s2Step320EntryGFresh) s2Step320EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 806, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step320EntryGvBefore : Arena := s2Step320EntryGAfter

private theorem s2Step320EntryGv_Incoming : rowsOwned s2Step320EntryGvBefore [s2Step320EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320EntryFRow,s2Step320EntryGRow,s2Step320EntryFvRow,s2Step320EntryGvRow] 3 s2Step320EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320EntryGv_Outgoing : rowsOwned s2Step320EntryGvAfter [s2Step320EntryGvOut] :=
  hmrRows_owned_drop s2Step320EntryGvAfter [s2Step320EntryFOut,s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut] 3 s2Step320EntryBank_outgoingOwned

private theorem s2Step320EntryGv_distinct : (s2Step320EntryGvRow.sign::s2Step320EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320EntryGv_owned : (s2Step320EntryGvRow.sign::s2Step320EntryGvRow.payload).toFinset⊆s2Step320EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320EntryGv_reserved : s2Step320EntryGvBefore.reserve s2Step320EntryGvFresh.toFinset=some s2Step320EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step320EntryGvFresh,arenaWires]
  · norm_num [s2Step320EntryGvBefore,s2Step320EntryGAfter,s2Step320EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step320EntryGvAfter,s2Step320EntryGvBefore,s2Step320EntryGAfter,s2Step320EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step320EntryGv_checked : planRowResizeLog s2Step320EntryGvBefore s2Step320EntryGvRow 176 s2Step320EntryGvFresh=
    some (s2Step320EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩,growRow 771 s2Step320EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step320EntryGvBefore s2Step320EntryGvAfter s2Step320EntryGvRow 176 s2Step320EntryGvFresh
    s2Step320EntryGv_distinct s2Step320EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step320EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step320EntryGvRow.payload++s2Step320EntryGvFresh) s2Step320EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step320EntryBank_rows : planWindowRowsLog s2Step320EntryFBefore [(s2Step320EntryFRow,112),(s2Step320EntryGRow,112),(s2Step320EntryFvRow,176),(s2Step320EntryGvRow,176)] [s2Step320EntryFFresh,s2Step320EntryGFresh,s2Step320EntryFvFresh,s2Step320EntryGvFresh]=
    some (s2Step320EntryGvAfter,[s2Step320EntryFOut,s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut],(growRow 768 s2Step320EntryFFresh ++ (growRow 769 s2Step320EntryGFresh ++ (growRow 770 s2Step320EntryFvFresh ++ (growRow 771 s2Step320EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step320EntryGvAfter [] []=some (s2Step320EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step320EntryGvBefore s2Step320EntryGvAfter s2Step320EntryGvAfter
    s2Step320EntryGvRow s2Step320EntryGvOut 176 s2Step320EntryGvFresh [] [] []
    (growRow 771 s2Step320EntryGvFresh) ([]) s2Step320EntryGv_Incoming s2Step320EntryGv_checked h4 s2Step320EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step320EntryFvBefore s2Step320EntryFvAfter s2Step320EntryGvAfter
    s2Step320EntryFvRow s2Step320EntryFvOut 176 s2Step320EntryFvFresh [(s2Step320EntryGvRow,176)] [s2Step320EntryGvFresh] [s2Step320EntryGvOut]
    (growRow 770 s2Step320EntryFvFresh) ((growRow 771 s2Step320EntryGvFresh ++ [])) s2Step320EntryFv_Incoming s2Step320EntryFv_checked h3 s2Step320EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step320EntryGBefore s2Step320EntryGAfter s2Step320EntryGvAfter
    s2Step320EntryGRow s2Step320EntryGOut 112 s2Step320EntryGFresh [(s2Step320EntryFvRow,176),(s2Step320EntryGvRow,176)] [s2Step320EntryFvFresh,s2Step320EntryGvFresh] [s2Step320EntryFvOut,s2Step320EntryGvOut]
    (growRow 769 s2Step320EntryGFresh) ((growRow 770 s2Step320EntryFvFresh ++ (growRow 771 s2Step320EntryGvFresh ++ []))) s2Step320EntryG_Incoming s2Step320EntryG_checked h2 s2Step320EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step320EntryFBefore s2Step320EntryFAfter s2Step320EntryGvAfter
    s2Step320EntryFRow s2Step320EntryFOut 112 s2Step320EntryFFresh [(s2Step320EntryGRow,112),(s2Step320EntryFvRow,176),(s2Step320EntryGvRow,176)] [s2Step320EntryGFresh,s2Step320EntryFvFresh,s2Step320EntryGvFresh] [s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut]
    (growRow 768 s2Step320EntryFFresh) ((growRow 769 s2Step320EntryGFresh ++ (growRow 770 s2Step320EntryFvFresh ++ (growRow 771 s2Step320EntryGvFresh ++ [])))) s2Step320EntryF_Incoming s2Step320EntryF_checked h1 s2Step320EntryF_Outgoing
  exact h0

private theorem s2Step320EntryBank_checked : compileHmrBankResizeLog .entry s2Step320EntryFBefore ⟨s2Step320EntryFRow,s2Step320EntryGRow,s2Step320EntryFvRow,s2Step320EntryGvRow⟩ ⟨112,112,176,176⟩ [s2Step320EntryFFresh,s2Step320EntryGFresh,s2Step320EntryFvFresh,s2Step320EntryGvFresh]=
    some (s2Step320EntryGvAfter,⟨s2Step320EntryFOut,s2Step320EntryGOut,s2Step320EntryFvOut,s2Step320EntryGvOut⟩,(growRow 768 s2Step320EntryFFresh ++ (growRow 769 s2Step320EntryGFresh ++ (growRow 770 s2Step320EntryFvFresh ++ (growRow 771 s2Step320EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step320EntryBank_rows]
  rfl

private def s2Step320ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<622) ∨ (624≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320ExitFBefore : Arena := s2Step320ExitGAfter

private def s2Step320ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩

private def s2Step320ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 787],770⟩

private def s2Step320ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 806, 784, 800],769⟩

private def s2Step320ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 827],771⟩

private theorem s2Step320ExitBank_incomingDistinct : ([s2Step320ExitGRow,s2Step320ExitFRow,s2Step320ExitFvRow,s2Step320ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320ExitF_Incoming : rowsOwned s2Step320ExitFBefore [s2Step320ExitFRow,s2Step320ExitFvRow,s2Step320ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320ExitGRow,s2Step320ExitFRow,s2Step320ExitFvRow,s2Step320ExitGvRow] 1 s2Step320ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320ExitBank_outgoingOwned : rowsOwned s2Step320ExitGvAfter [s2Step320ExitGOut,s2Step320ExitFOut,s2Step320ExitFvOut,s2Step320ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step320ExitGvAfter (fun q => (0≤q ∧ q<622) ∨ (624≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320ExitF_Outgoing : rowsOwned s2Step320ExitGvAfter [s2Step320ExitFOut,s2Step320ExitFvOut,s2Step320ExitGvOut] :=
  hmrRows_owned_drop s2Step320ExitGvAfter [s2Step320ExitGOut,s2Step320ExitFOut,s2Step320ExitFvOut,s2Step320ExitGvOut] 1 s2Step320ExitBank_outgoingOwned

private theorem s2Step320ExitF_distinct : (s2Step320ExitFRow.sign::s2Step320ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320ExitF_owned : (s2Step320ExitFRow.sign::s2Step320ExitFRow.payload).toFinset⊆s2Step320ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320ExitF_retired : s2Step320ExitFBefore.retireSet s2Step320ExitFExtra.toFinset=s2Step320ExitFAfter := by
  unfold Arena.retireSet s2Step320ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step320ExitFBefore,s2Step320ExitGAfter,s2Step320ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step320ExitF_checked : planRowResizeLog s2Step320ExitFBefore s2Step320ExitFRow 110 []=
    some (s2Step320ExitFAfter,s2Step320ExitFOut,shrinkRow 768 s2Step320ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step320ExitFBefore s2Step320ExitFRow 110 s2Step320ExitF_distinct s2Step320ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step320ExitFRow.payload.take 110) s2Step320ExitFRow.sign=s2Step320ExitFOut := by decide +kernel
  have hi : s2Step320ExitFRow.payload.drop 110=s2Step320ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step320ExitF_retired] at result
  exact result

private def s2Step320ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<622) ∨ (624≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320ExitFvBefore : Arena := s2Step320ExitFAfter

private theorem s2Step320ExitFv_Incoming : rowsOwned s2Step320ExitFvBefore [s2Step320ExitFvRow,s2Step320ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320ExitGRow,s2Step320ExitFRow,s2Step320ExitFvRow,s2Step320ExitGvRow] 2 s2Step320ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320ExitFvBefore (fun q => (0≤q ∧ q<622) ∨ (624≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320ExitFv_Outgoing : rowsOwned s2Step320ExitGvAfter [s2Step320ExitFvOut,s2Step320ExitGvOut] :=
  hmrRows_owned_drop s2Step320ExitGvAfter [s2Step320ExitGOut,s2Step320ExitFOut,s2Step320ExitFvOut,s2Step320ExitGvOut] 2 s2Step320ExitBank_outgoingOwned

private theorem s2Step320ExitFv_distinct : (s2Step320ExitFvRow.sign::s2Step320ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320ExitFv_owned : (s2Step320ExitFvRow.sign::s2Step320ExitFvRow.payload).toFinset⊆s2Step320ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320ExitFvBefore (fun q => (0≤q ∧ q<622) ∨ (624≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320ExitFv_retired : s2Step320ExitFvBefore.retireSet s2Step320ExitFvExtra.toFinset=s2Step320ExitFvAfter := by
  unfold Arena.retireSet s2Step320ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step320ExitFvBefore,s2Step320ExitFAfter,s2Step320ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step320ExitFv_checked : planRowResizeLog s2Step320ExitFvBefore s2Step320ExitFvRow 176 []=
    some (s2Step320ExitFvAfter,s2Step320ExitFvOut,shrinkRow 770 s2Step320ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step320ExitFvBefore s2Step320ExitFvRow 176 s2Step320ExitFv_distinct s2Step320ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step320ExitFvRow.payload.take 176) s2Step320ExitFvRow.sign=s2Step320ExitFvOut := by decide +kernel
  have hi : s2Step320ExitFvRow.payload.drop 176=s2Step320ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step320ExitFv_retired] at result
  exact result

private def s2Step320ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private theorem s2Step320ExitG_Incoming : rowsOwned s2Step320ExitGBefore [s2Step320ExitGRow,s2Step320ExitFRow,s2Step320ExitFvRow,s2Step320ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320ExitGRow,s2Step320ExitFRow,s2Step320ExitFvRow,s2Step320ExitGvRow] 0 s2Step320ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320ExitG_Outgoing : rowsOwned s2Step320ExitGvAfter [s2Step320ExitGOut,s2Step320ExitFOut,s2Step320ExitFvOut,s2Step320ExitGvOut] :=
  hmrRows_owned_drop s2Step320ExitGvAfter [s2Step320ExitGOut,s2Step320ExitFOut,s2Step320ExitFvOut,s2Step320ExitGvOut] 0 s2Step320ExitBank_outgoingOwned

private theorem s2Step320ExitG_distinct : (s2Step320ExitGRow.sign::s2Step320ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320ExitG_owned : (s2Step320ExitGRow.sign::s2Step320ExitGRow.payload).toFinset⊆s2Step320ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320ExitG_retired : s2Step320ExitGBefore.retireSet s2Step320ExitGExtra.toFinset=s2Step320ExitGAfter := by
  unfold Arena.retireSet s2Step320ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step320ExitGBefore,s2Step320ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step320ExitG_checked : planRowResizeLog s2Step320ExitGBefore s2Step320ExitGRow 110 []=
    some (s2Step320ExitGAfter,s2Step320ExitGOut,shrinkRow 769 s2Step320ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step320ExitGBefore s2Step320ExitGRow 110 s2Step320ExitG_distinct s2Step320ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step320ExitGRow.payload.take 110) s2Step320ExitGRow.sign=s2Step320ExitGOut := by decide +kernel
  have hi : s2Step320ExitGRow.payload.drop 110=s2Step320ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step320ExitG_retired] at result
  exact result

private def s2Step320ExitGvBefore : Arena := s2Step320ExitFvAfter

private theorem s2Step320ExitGv_Incoming : rowsOwned s2Step320ExitGvBefore [s2Step320ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320ExitGRow,s2Step320ExitFRow,s2Step320ExitFvRow,s2Step320ExitGvRow] 3 s2Step320ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320ExitGvBefore (fun q => (0≤q ∧ q<622) ∨ (624≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320ExitGv_Outgoing : rowsOwned s2Step320ExitGvAfter [s2Step320ExitGvOut] :=
  hmrRows_owned_drop s2Step320ExitGvAfter [s2Step320ExitGOut,s2Step320ExitFOut,s2Step320ExitFvOut,s2Step320ExitGvOut] 3 s2Step320ExitBank_outgoingOwned

private theorem s2Step320ExitGv_distinct : (s2Step320ExitGvRow.sign::s2Step320ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320ExitGv_owned : (s2Step320ExitGvRow.sign::s2Step320ExitGvRow.payload).toFinset⊆s2Step320ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320ExitGvBefore (fun q => (0≤q ∧ q<622) ∨ (624≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320ExitGv_retired : s2Step320ExitGvBefore.retireSet s2Step320ExitGvExtra.toFinset=s2Step320ExitGvAfter := by
  unfold Arena.retireSet s2Step320ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step320ExitGvBefore,s2Step320ExitFvAfter,s2Step320ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step320ExitGv_checked : planRowResizeLog s2Step320ExitGvBefore s2Step320ExitGvRow 176 []=
    some (s2Step320ExitGvAfter,s2Step320ExitGvOut,shrinkRow 771 s2Step320ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step320ExitGvBefore s2Step320ExitGvRow 176 s2Step320ExitGv_distinct s2Step320ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step320ExitGvRow.payload.take 176) s2Step320ExitGvRow.sign=s2Step320ExitGvOut := by decide +kernel
  have hi : s2Step320ExitGvRow.payload.drop 176=s2Step320ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step320ExitGv_retired] at result
  exact result

private theorem s2Step320ExitBank_rows : planWindowRowsLog s2Step320ExitGBefore [(s2Step320ExitGRow,110),(s2Step320ExitFRow,110),(s2Step320ExitFvRow,176),(s2Step320ExitGvRow,176)] [[],[],[],[]]=
    some (s2Step320ExitGvAfter,[s2Step320ExitGOut,s2Step320ExitFOut,s2Step320ExitFvOut,s2Step320ExitGvOut],(shrinkRow 769 s2Step320ExitGExtra ++ (shrinkRow 768 s2Step320ExitFExtra ++ (shrinkRow 770 s2Step320ExitFvExtra ++ (shrinkRow 771 s2Step320ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step320ExitGvAfter [] []=some (s2Step320ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step320ExitGvBefore s2Step320ExitGvAfter s2Step320ExitGvAfter
    s2Step320ExitGvRow s2Step320ExitGvOut 176 [] [] [] []
    (shrinkRow 771 s2Step320ExitGvExtra) ([]) s2Step320ExitGv_Incoming s2Step320ExitGv_checked h4 s2Step320ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step320ExitFvBefore s2Step320ExitFvAfter s2Step320ExitGvAfter
    s2Step320ExitFvRow s2Step320ExitFvOut 176 [] [(s2Step320ExitGvRow,176)] [[]] [s2Step320ExitGvOut]
    (shrinkRow 770 s2Step320ExitFvExtra) ((shrinkRow 771 s2Step320ExitGvExtra ++ [])) s2Step320ExitFv_Incoming s2Step320ExitFv_checked h3 s2Step320ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step320ExitFBefore s2Step320ExitFAfter s2Step320ExitGvAfter
    s2Step320ExitFRow s2Step320ExitFOut 110 [] [(s2Step320ExitFvRow,176),(s2Step320ExitGvRow,176)] [[],[]] [s2Step320ExitFvOut,s2Step320ExitGvOut]
    (shrinkRow 768 s2Step320ExitFExtra) ((shrinkRow 770 s2Step320ExitFvExtra ++ (shrinkRow 771 s2Step320ExitGvExtra ++ []))) s2Step320ExitF_Incoming s2Step320ExitF_checked h2 s2Step320ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step320ExitGBefore s2Step320ExitGAfter s2Step320ExitGvAfter
    s2Step320ExitGRow s2Step320ExitGOut 110 [] [(s2Step320ExitFRow,110),(s2Step320ExitFvRow,176),(s2Step320ExitGvRow,176)] [[],[],[]] [s2Step320ExitFOut,s2Step320ExitFvOut,s2Step320ExitGvOut]
    (shrinkRow 769 s2Step320ExitGExtra) ((shrinkRow 768 s2Step320ExitFExtra ++ (shrinkRow 770 s2Step320ExitFvExtra ++ (shrinkRow 771 s2Step320ExitGvExtra ++ [])))) s2Step320ExitG_Incoming s2Step320ExitG_checked h1 s2Step320ExitG_Outgoing
  exact h0

private theorem s2Step320ExitBank_checked : compileHmrBankResizeLog .exit s2Step320ExitGBefore ⟨s2Step320ExitFRow,s2Step320ExitGRow,s2Step320ExitFvRow,s2Step320ExitGvRow⟩ ⟨110,110,176,176⟩ [[],[],[],[]]=
    some (s2Step320ExitGvAfter,⟨s2Step320ExitFOut,s2Step320ExitGOut,s2Step320ExitFvOut,s2Step320ExitGvOut⟩,(shrinkRow 769 s2Step320ExitGExtra ++ (shrinkRow 768 s2Step320ExitFExtra ++ (shrinkRow 770 s2Step320ExitFvExtra ++ (shrinkRow 771 s2Step320ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step320ExitBank_rows]
  rfl

private theorem s2Step320Add0_apart : Disjoint s2Step320Add0Arena.live s2Step320Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step320Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320Add0_card : s2Step320Add0Arena.live.card=907 := by
  decide +kernel

private theorem s2Step320Add0_borrowed : s2Step320Add0Arena.checkBorrow (hmrHybridCount s2Step320Add0Arena s2Step320Add0B.length) s2Step320Add0Work=some s2Step320Add0During := by
  have len : s2Step320Add0Work.length=hmrHybridCount s2Step320Add0Arena s2Step320Add0B.length := by
    rw [hmrHybridCount,s2Step320Add0_card]
    decide +kernel
  have nd : s2Step320Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step320Add0Arena s2Step320Add0During s2Step320Add0Work.toFinset s2Step320Add0_bounded s2Step320Add0_apart rfl

private theorem s2Step320Add0_distinct : (894::830::896::(s2Step320Add0A++s2Step320Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320Add0_owned : (894::830::896::(s2Step320Add0A++s2Step320Add0B)).toFinset⊆s2Step320Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step320Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320Add0_checked : compileHmrHybridCinLog s2Step320Add0Arena 830 894 896 s2Step320Add0A s2Step320Add0B s2Step320Add0Work=some s2Step320Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step320Add0Arena s2Step320Add0During 830 894 896 s2Step320Add0A s2Step320Add0B s2Step320Add0Work
    (by decide +kernel) (by decide +kernel) s2Step320Add0_distinct
    (fun q hq => s2Step320Add0_owned (List.mem_toFinset.mpr hq)) s2Step320Add0_borrowed

private theorem s2Step320Add1_apart : Disjoint s2Step320Add1Arena.live s2Step320Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step320Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320Add1_card : s2Step320Add1Arena.live.card=907 := by
  decide +kernel

private theorem s2Step320Add1_borrowed : s2Step320Add1Arena.checkBorrow (hmrHybridCount s2Step320Add1Arena s2Step320Add1B.length) s2Step320Add1Work=some s2Step320Add1During := by
  have len : s2Step320Add1Work.length=hmrHybridCount s2Step320Add1Arena s2Step320Add1B.length := by
    rw [hmrHybridCount,s2Step320Add1_card]
    decide +kernel
  have nd : s2Step320Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step320Add1Arena s2Step320Add1During s2Step320Add1Work.toFinset s2Step320Add1_bounded s2Step320Add1_apart rfl

private theorem s2Step320Add1_distinct : (894::830::896::(s2Step320Add1A++s2Step320Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320Add1_owned : (894::830::896::(s2Step320Add1A++s2Step320Add1B)).toFinset⊆s2Step320Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step320Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320Add1_checked : compileHmrHybridCinLog s2Step320Add1Arena 830 894 896 s2Step320Add1A s2Step320Add1B s2Step320Add1Work=some s2Step320Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step320Add1Arena s2Step320Add1During 830 894 896 s2Step320Add1A s2Step320Add1B s2Step320Add1Work
    (by decide +kernel) (by decide +kernel) s2Step320Add1_distinct
    (fun q hq => s2Step320Add1_owned (List.mem_toFinset.mpr hq)) s2Step320Add1_borrowed

private theorem s2Step320F4_apart : Disjoint (s2Step320Add0A++s2Step320Add0B).toFinset (s2Step320Add1A++s2Step320Add1B).toFinset := by
  have nd : ((s2Step320Add0A++s2Step320Add0B)++(s2Step320Add1A++s2Step320Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step320F4_carry : s2Step320F4FlagArena.checkBorrow 1 [896]=some s2Step320Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step320F4FlagArena,s2Step320HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step320F4FlagArena,s2Step320HeadFvAfter,s2Step320Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step320F4_distinct : (807::830::894::896::((s2Step320Add0A++s2Step320Add1A)++(s2Step320Add0B++s2Step320Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320F4_flag : s2Step320HeadFvAfter.checkBorrow 1 [894]=some s2Step320F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step320HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step320F4_owned : (807::830::((s2Step320Add0A++s2Step320Add1A)++(s2Step320Add0B++s2Step320Add1B))).toFinset⊆s2Step320HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step320HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320F4_checked : compileHmrHybridF4Log s2Step320HeadFvAfter 807 830 s2Step320Add0A s2Step320Add0B s2Step320Add1A s2Step320Add1B [894] [896] s2Step320Add0Work s2Step320Add1Work=some s2Step320F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step320HeadFvAfter s2Step320F4FlagArena s2Step320Add0Arena s2Step320Add0During s2Step320Add1During 807 830
    s2Step320Add0A s2Step320Add0B s2Step320Add1A s2Step320Add1B [894] [896] s2Step320Add0Work s2Step320Add1Work
    (fun q hq => s2Step320F4_owned (List.mem_toFinset.mpr hq)) s2Step320F4_flag s2Step320F4_carry
    s2Step320F4_distinct s2Step320F4_apart s2Step320Add0_checked s2Step320Add1_checked

private theorem s2Step320Front_branch : s2Step320FrontSigmaArena.checkBorrow 1 [830]=some s2Step320HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step320FrontSigmaArena,s2Step320EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step320FrontSigmaArena,s2Step320EntryGvAfter,s2Step320HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step320Front_entry : HmrFrontEntryValid s2Step320EntryFBefore s2Step320FrontBank 112 176 ⟨110,110,176,176⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step320FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step320EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step320EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step320FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step320Front_sigma : s2Step320EntryGvAfter.checkBorrow 1 [807]=some s2Step320FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step320EntryGvAfter,arenaWires]
  · rfl

private def s2Step320HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320HeadFBefore : Arena := s2Step320HeadGAfter

private def s2Step320HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step320HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step320HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 806, 784],769⟩

private def s2Step320HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩

private theorem s2Step320HeadBank_incomingDistinct : ([s2Step320HeadGRow,s2Step320HeadFRow,s2Step320HeadGvRow,s2Step320HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320HeadF_Incoming : rowsOwned s2Step320HeadFBefore [s2Step320HeadFRow,s2Step320HeadGvRow,s2Step320HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320HeadGRow,s2Step320HeadFRow,s2Step320HeadGvRow,s2Step320HeadFvRow] 1 s2Step320HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320HeadBank_outgoingOwned : rowsOwned s2Step320HeadFvAfter [s2Step320HeadGOut,s2Step320HeadFOut,s2Step320HeadGvOut,s2Step320HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step320HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320HeadF_Outgoing : rowsOwned s2Step320HeadFvAfter [s2Step320HeadFOut,s2Step320HeadGvOut,s2Step320HeadFvOut] :=
  hmrRows_owned_drop s2Step320HeadFvAfter [s2Step320HeadGOut,s2Step320HeadFOut,s2Step320HeadGvOut,s2Step320HeadFvOut] 1 s2Step320HeadBank_outgoingOwned

private theorem s2Step320HeadF_distinct : (s2Step320HeadFRow.sign::s2Step320HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320HeadF_owned : (s2Step320HeadFRow.sign::s2Step320HeadFRow.payload).toFinset⊆s2Step320HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320HeadF_reserved : s2Step320HeadFBefore.reserve s2Step320HeadFFresh.toFinset=some s2Step320HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step320HeadFFresh,arenaWires]
  · norm_num [s2Step320HeadFBefore,s2Step320HeadGAfter,s2Step320HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step320HeadFAfter,s2Step320HeadFBefore,s2Step320HeadGAfter,s2Step320HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step320HeadF_checked : planRowResizeLog s2Step320HeadFBefore s2Step320HeadFRow 113 s2Step320HeadFFresh=
    some (s2Step320HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩,growRow 768 s2Step320HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step320HeadFBefore s2Step320HeadFAfter s2Step320HeadFRow 113 s2Step320HeadFFresh
    s2Step320HeadF_distinct s2Step320HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step320HeadF_reserved
  have rowEq : WindowRow.mk (s2Step320HeadFRow.payload++s2Step320HeadFFresh) s2Step320HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step320HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step320HeadFvBefore : Arena := s2Step320HeadGvAfter

private theorem s2Step320HeadFv_Incoming : rowsOwned s2Step320HeadFvBefore [s2Step320HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320HeadGRow,s2Step320HeadFRow,s2Step320HeadGvRow,s2Step320HeadFvRow] 3 s2Step320HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320HeadFv_Outgoing : rowsOwned s2Step320HeadFvAfter [s2Step320HeadFvOut] :=
  hmrRows_owned_drop s2Step320HeadFvAfter [s2Step320HeadGOut,s2Step320HeadFOut,s2Step320HeadGvOut,s2Step320HeadFvOut] 3 s2Step320HeadBank_outgoingOwned

private theorem s2Step320HeadFv_distinct : (s2Step320HeadFvRow.sign::s2Step320HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320HeadFv_owned : (s2Step320HeadFvRow.sign::s2Step320HeadFvRow.payload).toFinset⊆s2Step320HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320HeadFv_reserved : s2Step320HeadFvBefore.reserve s2Step320HeadFvFresh.toFinset=some s2Step320HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step320HeadFvFresh,arenaWires]
  · norm_num [s2Step320HeadFvBefore,s2Step320HeadGvAfter,s2Step320HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step320HeadFvAfter,s2Step320HeadFvBefore,s2Step320HeadGvAfter,s2Step320HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step320HeadFv_checked : planRowResizeLog s2Step320HeadFvBefore s2Step320HeadFvRow 177 s2Step320HeadFvFresh=
    some (s2Step320HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 787],770⟩,growRow 770 s2Step320HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step320HeadFvBefore s2Step320HeadFvAfter s2Step320HeadFvRow 177 s2Step320HeadFvFresh
    s2Step320HeadFv_distinct s2Step320HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step320HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step320HeadFvRow.payload++s2Step320HeadFvFresh) s2Step320HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step320HeadG_Incoming : rowsOwned s2Step320HeadGBefore [s2Step320HeadGRow,s2Step320HeadFRow,s2Step320HeadGvRow,s2Step320HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320HeadGRow,s2Step320HeadFRow,s2Step320HeadGvRow,s2Step320HeadFvRow] 0 s2Step320HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320HeadG_Outgoing : rowsOwned s2Step320HeadFvAfter [s2Step320HeadGOut,s2Step320HeadFOut,s2Step320HeadGvOut,s2Step320HeadFvOut] :=
  hmrRows_owned_drop s2Step320HeadFvAfter [s2Step320HeadGOut,s2Step320HeadFOut,s2Step320HeadGvOut,s2Step320HeadFvOut] 0 s2Step320HeadBank_outgoingOwned

private theorem s2Step320HeadG_distinct : (s2Step320HeadGRow.sign::s2Step320HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320HeadG_owned : (s2Step320HeadGRow.sign::s2Step320HeadGRow.payload).toFinset⊆s2Step320HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320HeadG_reserved : s2Step320HeadGBefore.reserve s2Step320HeadGFresh.toFinset=some s2Step320HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step320HeadGFresh,arenaWires]
  · norm_num [s2Step320HeadGBefore,s2Step320HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step320HeadGAfter,s2Step320HeadGBefore,s2Step320HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step320HeadG_checked : planRowResizeLog s2Step320HeadGBefore s2Step320HeadGRow 113 s2Step320HeadGFresh=
    some (s2Step320HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 806, 784, 800],769⟩,growRow 769 s2Step320HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step320HeadGBefore s2Step320HeadGAfter s2Step320HeadGRow 113 s2Step320HeadGFresh
    s2Step320HeadG_distinct s2Step320HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step320HeadG_reserved
  have rowEq : WindowRow.mk (s2Step320HeadGRow.payload++s2Step320HeadGFresh) s2Step320HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 806, 784, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step320HeadGvBefore : Arena := s2Step320HeadFAfter

private theorem s2Step320HeadGv_Incoming : rowsOwned s2Step320HeadGvBefore [s2Step320HeadGvRow,s2Step320HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step320HeadGRow,s2Step320HeadFRow,s2Step320HeadGvRow,s2Step320HeadFvRow] 2 s2Step320HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step320HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step320HeadGv_Outgoing : rowsOwned s2Step320HeadFvAfter [s2Step320HeadGvOut,s2Step320HeadFvOut] :=
  hmrRows_owned_drop s2Step320HeadFvAfter [s2Step320HeadGOut,s2Step320HeadFOut,s2Step320HeadGvOut,s2Step320HeadFvOut] 2 s2Step320HeadBank_outgoingOwned

private theorem s2Step320HeadGv_distinct : (s2Step320HeadGvRow.sign::s2Step320HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step320HeadGv_owned : (s2Step320HeadGvRow.sign::s2Step320HeadGvRow.payload).toFinset⊆s2Step320HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step320HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step320HeadGv_reserved : s2Step320HeadGvBefore.reserve s2Step320HeadGvFresh.toFinset=some s2Step320HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step320HeadGvFresh,arenaWires]
  · norm_num [s2Step320HeadGvBefore,s2Step320HeadFAfter,s2Step320HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step320HeadGvAfter,s2Step320HeadGvBefore,s2Step320HeadFAfter,s2Step320HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step320HeadGv_checked : planRowResizeLog s2Step320HeadGvBefore s2Step320HeadGvRow 177 s2Step320HeadGvFresh=
    some (s2Step320HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 827],771⟩,growRow 771 s2Step320HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step320HeadGvBefore s2Step320HeadGvAfter s2Step320HeadGvRow 177 s2Step320HeadGvFresh
    s2Step320HeadGv_distinct s2Step320HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step320HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step320HeadGvRow.payload++s2Step320HeadGvFresh) s2Step320HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 827],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step320HeadBank_rows : planWindowRowsLog s2Step320HeadGBefore [(s2Step320HeadGRow,113),(s2Step320HeadFRow,113),(s2Step320HeadGvRow,177),(s2Step320HeadFvRow,177)] [s2Step320HeadGFresh,s2Step320HeadFFresh,s2Step320HeadGvFresh,s2Step320HeadFvFresh]=
    some (s2Step320HeadFvAfter,[s2Step320HeadGOut,s2Step320HeadFOut,s2Step320HeadGvOut,s2Step320HeadFvOut],(growRow 769 s2Step320HeadGFresh ++ (growRow 768 s2Step320HeadFFresh ++ (growRow 771 s2Step320HeadGvFresh ++ (growRow 770 s2Step320HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step320HeadFvAfter [] []=some (s2Step320HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step320HeadFvBefore s2Step320HeadFvAfter s2Step320HeadFvAfter
    s2Step320HeadFvRow s2Step320HeadFvOut 177 s2Step320HeadFvFresh [] [] []
    (growRow 770 s2Step320HeadFvFresh) ([]) s2Step320HeadFv_Incoming s2Step320HeadFv_checked h4 s2Step320HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step320HeadGvBefore s2Step320HeadGvAfter s2Step320HeadFvAfter
    s2Step320HeadGvRow s2Step320HeadGvOut 177 s2Step320HeadGvFresh [(s2Step320HeadFvRow,177)] [s2Step320HeadFvFresh] [s2Step320HeadFvOut]
    (growRow 771 s2Step320HeadGvFresh) ((growRow 770 s2Step320HeadFvFresh ++ [])) s2Step320HeadGv_Incoming s2Step320HeadGv_checked h3 s2Step320HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step320HeadFBefore s2Step320HeadFAfter s2Step320HeadFvAfter
    s2Step320HeadFRow s2Step320HeadFOut 113 s2Step320HeadFFresh [(s2Step320HeadGvRow,177),(s2Step320HeadFvRow,177)] [s2Step320HeadGvFresh,s2Step320HeadFvFresh] [s2Step320HeadGvOut,s2Step320HeadFvOut]
    (growRow 768 s2Step320HeadFFresh) ((growRow 771 s2Step320HeadGvFresh ++ (growRow 770 s2Step320HeadFvFresh ++ []))) s2Step320HeadF_Incoming s2Step320HeadF_checked h2 s2Step320HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step320HeadGBefore s2Step320HeadGAfter s2Step320HeadFvAfter
    s2Step320HeadGRow s2Step320HeadGOut 113 s2Step320HeadGFresh [(s2Step320HeadFRow,113),(s2Step320HeadGvRow,177),(s2Step320HeadFvRow,177)] [s2Step320HeadFFresh,s2Step320HeadGvFresh,s2Step320HeadFvFresh] [s2Step320HeadFOut,s2Step320HeadGvOut,s2Step320HeadFvOut]
    (growRow 769 s2Step320HeadGFresh) ((growRow 768 s2Step320HeadFFresh ++ (growRow 771 s2Step320HeadGvFresh ++ (growRow 770 s2Step320HeadFvFresh ++ [])))) s2Step320HeadG_Incoming s2Step320HeadG_checked h1 s2Step320HeadG_Outgoing
  exact h0

private theorem s2Step320HeadBank_checked : compileHmrBankResizeLog .headroom s2Step320HeadGBefore ⟨s2Step320HeadFRow,s2Step320HeadGRow,s2Step320HeadFvRow,s2Step320HeadGvRow⟩ ⟨113,113,177,177⟩ [s2Step320HeadGFresh,s2Step320HeadFFresh,s2Step320HeadGvFresh,s2Step320HeadFvFresh]=
    some (s2Step320HeadFvAfter,⟨s2Step320HeadFOut,s2Step320HeadGOut,s2Step320HeadFvOut,s2Step320HeadGvOut⟩,(growRow 769 s2Step320HeadGFresh ++ (growRow 768 s2Step320HeadFFresh ++ (growRow 771 s2Step320HeadGvFresh ++ (growRow 770 s2Step320HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step320HeadBank_rows]
  rfl

private theorem s2Step320Front_checked : compileHmrSourceFrontLog s2Step320EntryFBefore s2Step320FrontBank 112 176 ⟨110,110,176,176⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step320FrontLog=some s2Step320FrontPlan := by
  have pairEq : s2Step320FrontPair=⟨s2Step320HeadFRow,s2Step320HeadGRow,s2Step320HeadFvRow,s2Step320HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step320FrontHead=⟨s2Step320ExitFRow,s2Step320ExitGRow,s2Step320ExitFvRow,s2Step320ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step320Add0A=s2Step320FrontHead.f.wires := by decide +kernel
  have gEq : s2Step320Add0B=s2Step320FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step320Add1A=s2Step320FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step320Add1B=s2Step320FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step320EntryFBefore s2Step320FrontBank 112 176 ⟨110,110,176,176⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step320FrontLog s2Step320FrontPlan
  · exact s2Step320Front_entry
  · exact s2Step320EntryBank_checked
  · exact s2Step320Front_sigma
  · rfl
  · exact s2Step320Front_branch
  · rfl
  · simpa only [s2Step320FrontPlan,pairEq] using s2Step320HeadBank_checked
  · simpa only [s2Step320FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step320F4_checked
  · exact s2Step320Counter_checked
  · rfl
  · simpa only [s2Step320FrontPlan,headEq] using s2Step320ExitBank_checked

private theorem s2Step320Complete_explicit_checked : compileHmrEarlyStepLog s2Step320EntryFBefore s2Step320FrontBank 112 176 ⟨110,110,176,176⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] 58 s2Step320CompleteLog=some s2Step320CompletePlan := by
  let Q := s2Step320EarlyControlPlan
  have hq := s2Step320EarlyControl_plan_checked
  have fv1 : s2Step320CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step320CompleteOut.fv.payload[2]?.getD s2Step320CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step320CompleteOut.fv.payload[3]?.getD s2Step320CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step320CompleteOut.fv.payload[4]?.getD s2Step320CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step320EntryFBefore s2Step320EarlyControlArena s2Step320FrontBank 112 176 ⟨110,110,176,176⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] 58 s2Step320CompleteLog s2Step320FrontPlan Q
    s2Step320Front_checked s2Step320Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step320Complete_owned s2Step320Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step320EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] 777 807 s2Step320CompleteOut.fv.second (s2Step320CompleteOut.fv.payload[2]?.getD s2Step320CompleteOut.fv.sign) (s2Step320CompleteOut.fv.payload[3]?.getD s2Step320CompleteOut.fv.sign) (s2Step320CompleteOut.fv.payload[4]?.getD s2Step320CompleteOut.fv.sign) 830 58 s2Step320EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep320Arena : Arena := s2Step320EntryFBefore
def s2PrivateStep320Bank : WindowBank := s2Step320FrontBank
def s2PrivateStep320Spec : HmrSourceWalkStepLog := ⟨112,176,⟨110,110,176,176⟩,58,.early s2Step320CompleteLog⟩
def s2PrivateStep320Plan : HmrSourceStepPlan := .early s2Step320CompletePlan
theorem s2PrivateStep320_source : s2PrivateStep320Spec=s2ObservedLogs320[0] := rfl
theorem s2PrivateStep320_checked : compileHmrSourceStepLog s2PrivateStep320Arena s2PrivateStep320Bank
    s2PrivateStep320Spec.fgWidth s2PrivateStep320Spec.vWidth s2PrivateStep320Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910]
    6 498 320 s2PrivateStep320Spec.need none s2PrivateStep320Spec.log=some s2PrivateStep320Plan := by
  change compileHmrSourceStepLog s2Step320EntryFBefore s2Step320FrontBank 112 176 ⟨110,110,176,176⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] 6 498 320 58 none (.early s2Step320CompleteLog)=some (.early s2Step320CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 320<498)]
  rw [s2Step320Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
