import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep319
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

private def s2Step321CompleteMoves : List (Wire × Wire) := []

private def s2Step321EarlyControlLog : HmrEarlyControlLog := ⟨[827, 787, 840, 814, 834],[806],[784],[800, 894, 896, 901, 903, 907],[911]⟩

private def s2Step321FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[814], [840], [827], [787]],[[], [], [], []]⟩,[830],[807],[834],[806],[784, 800, 894, 896, 901, 903, 907, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[834, 806, 784, 800]⟩

private def s2Step321CompleteLog : HmrEarlyStepLog := ⟨s2Step321FrontLog,s2Step321CompleteMoves,s2Step321EarlyControlLog⟩

private def s2Step321ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩

private def s2Step321ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step321ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩

private def s2Step321ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩

private def s2Step321FrontOut : WindowBank := ⟨s2Step321ExitFOut,s2Step321ExitGOut,s2Step321ExitFvOut,s2Step321ExitGvOut⟩

private def s2Step321CompleteOut : WindowBank := s2Step321FrontOut.repacked s2Step321CompleteMoves

private def s2Step321EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step321EarlyControlPositiveArena,[806],s2Step321EarlyControlEqualityArena,[784],⟨⟨830,false⟩,[⟨⟨806,false⟩,784⟩]⟩⟩

private def s2Step321EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step321EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step321EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step321EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step321EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,827⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,840⟩,⟨⟨776,false⟩,814⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step321EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step321EarlyControlZeroArena,s2Step321EarlyControlZeroPlan,s2Step321EarlyControlClassPlan,s2Step321EarlyControlFlagArena,s2Step321EarlyControlFittedArena,s2Step321EarlyControlHistoryArena,s2Step321EarlyControlSigmaArena,s2Step321EarlyControlOutputArena,s2Step321EarlyControlLog⟩

private def s2Step321CounterWork : List Wire := [834, 806, 784, 800]

private theorem s2Step321Counter_bounded : s2Step321CounterWork.toFinset⊆arenaWires := by norm_num [s2Step321CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step321HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321CounterDuring : Arena := ⟨s2Step321HeadFvAfter.live∪s2Step321CounterWork.toFinset,Finset.union_subset s2Step321HeadFvAfter.bounded s2Step321Counter_bounded⟩

private def s2Step321EntryFFresh : List Wire := []

private def s2Step321EntryFvFresh : List Wire := []

private def s2Step321EntryGFresh : List Wire := []

private def s2Step321EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321EntryGvAfter : Arena := s2Step321EntryFBefore

private def s2Step321EntryGvFresh : List Wire := []

private def s2Step321ExitFExtra : List Wire := [840]

private def s2Step321ExitFvExtra : List Wire := [787]

private def s2Step321ExitGExtra : List Wire := [814]

private def s2Step321ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321ExitGvExtra : List Wire := [827]

private def s2Step321Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step321Add0_bounded : s2Step321Add0Work.toFinset⊆arenaWires := by
  have h : s2Step321Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step321Add0During : Arena := ⟨s2Step321Add0Arena.live∪s2Step321Add0Work.toFinset,Finset.union_subset s2Step321Add0Arena.bounded s2Step321Add0_bounded⟩

private def s2Step321Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step321Add1_bounded : s2Step321Add1Work.toFinset⊆arenaWires := by
  have h : s2Step321Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step321Add1During : Arena := ⟨s2Step321Add1Arena.live∪s2Step321Add1Work.toFinset,Finset.union_subset s2Step321Add1Arena.bounded s2Step321Add1_bounded⟩

private def s2Step321F4FlagArena : Arena := ⟨s2Step321HeadFvAfter.live∪{834},Finset.union_subset s2Step321HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step321F4Plan : HmrHybridF4Plan := ⟨s2Step321F4FlagArena,[834],s2Step321Add0Arena,[806],s2Step321Add0During,s2Step321Add0Work,s2Step321Add1During,s2Step321Add1Work⟩

private def s2Step321HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 840],768⟩

private def s2Step321HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 787],770⟩

private def s2Step321HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 814],769⟩

private def s2Step321HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 827],771⟩

private def s2Step321FrontHead : WindowBank := ⟨s2Step321HeadFOut,s2Step321HeadGOut,s2Step321HeadFvOut,s2Step321HeadGvOut⟩

private def s2Step321EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩

private def s2Step321EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step321EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩

private def s2Step321EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩

private def s2Step321FrontPair : WindowBank := ⟨s2Step321EntryFOut,s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut⟩

private def s2Step321FrontSigmaArena : Arena := ⟨s2Step321EntryGvAfter.live∪{830},Finset.union_subset s2Step321EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step321HeadFFresh : List Wire := [840]

private def s2Step321HeadFvFresh : List Wire := [787]

private def s2Step321HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321HeadGFresh : List Wire := [814]

private def s2Step321HeadGvFresh : List Wire := [827]

private def s2Step321FrontPlan : HmrSourceFront := ⟨s2Step321EntryGvAfter,s2Step321FrontPair,(growRow 768 s2Step321EntryFFresh ++ (growRow 769 s2Step321EntryGFresh ++ (growRow 770 s2Step321EntryFvFresh ++ (growRow 771 s2Step321EntryGvFresh ++ [])))),s2Step321FrontSigmaArena,[830],s2Step321HeadGBefore,[807],
  s2Step321HeadFvAfter,s2Step321FrontHead,(growRow 769 s2Step321HeadGFresh ++ (growRow 768 s2Step321HeadFFresh ++ (growRow 771 s2Step321HeadGvFresh ++ (growRow 770 s2Step321HeadFvFresh ++ [])))),s2Step321F4Plan,s2Step321CounterDuring,s2Step321CounterWork,s2Step321ExitGvAfter,s2Step321FrontOut,(shrinkRow 769 s2Step321ExitGExtra ++ (shrinkRow 768 s2Step321ExitFExtra ++ (shrinkRow 770 s2Step321ExitFvExtra ++ (shrinkRow 771 s2Step321ExitGvExtra ++ []))))⟩

private def s2Step321CompletePlan : HmrEarlyStepPlan := ⟨s2Step321FrontPlan,s2Step321EarlyControlArena,s2Step321EarlyControlPlan,s2Step321CompleteMoves⟩

private theorem s2Step321Complete_apart : List.Disjoint (s2Step321CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [830, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] := by
  have nd : ((s2Step321CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[830, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step321Complete_owned : (s2Step321CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step321EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321Complete_repack : s2Step321ExitGvAfter.checkRepack s2Step321CompleteMoves=some s2Step321EarlyControlArena := by rfl

private theorem s2Step321EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s2Step321EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_branch : compileHmrBranchRetirement s2Step321EarlyControlSigmaArena 807=some s2Step321EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step321EarlyControl_branchOwned
  · ext q
    simp [s2Step321EarlyControlOutputArena,s2Step321EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step321EarlyControl_classEqualityBorrow : s2Step321EarlyControlPositiveArena.checkBorrow (([830, 806] : List Wire).length-1) s2Step321EarlyControlLog.classWork=some s2Step321EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step321EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step321EarlyControlEqualityArena,s2Step321EarlyControlPositiveArena,s2Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step321EarlyControl_classEqualityOwned : ([830, 806] : List Wire).toFinset⊆s2Step321EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_classEquality : compileHmrEqualityLog s2Step321EarlyControlPositiveArena [830, 806] 0 s2Step321EarlyControlLog.classWork=some (s2Step321EarlyControlEqualityArena,s2Step321EarlyControlLog.classWork,s2Step321EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step321EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step321EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step321EarlyControl_classOwned : ([777, 834, 830] : List Wire).toFinset⊆s2Step321EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_positiveBorrow : s2Step321EarlyControlZeroArena.checkBorrow (1) s2Step321EarlyControlLog.positiveWork=some s2Step321EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step321EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step321EarlyControlPositiveArena,s2Step321EarlyControlZeroArena,s2Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step321EarlyControl_class : compileHmrSourceClassLog s2Step321EarlyControlZeroArena false 777 s2Step321EarlyControlZeroPlan.top 0 830 s2Step321EarlyControlLog.positiveWork s2Step321EarlyControlLog.classWork=some s2Step321EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step321EarlyControlClassPlan s2Step321EarlyControlZeroArena false 777 s2Step321EarlyControlZeroPlan.top 0 830
  constructor
  · decide +kernel
  · exact s2Step321EarlyControl_classOwned
  · exact s2Step321EarlyControl_positiveBorrow
  · exact s2Step321EarlyControl_classEquality

private theorem s2Step321EarlyControl_entryRecordOwned : ([807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] : List Wire).toFinset⊆s2Step321EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_entrySigmaOwned : ([830, 254] : List Wire).toFinset⊆s2Step321EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_fitBorrow : s2Step321EarlyControlFlagArena.checkBorrow ((59-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] : List Wire).length)) s2Step321EarlyControlLog.recordFresh=some s2Step321EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step321EarlyControlFlagArena (fun q => (0≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step321EarlyControlFittedArena,s2Step321EarlyControlFlagArena,s2Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step321EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] : List Wire).toFinset⊆s2Step321EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlFlagArena (fun q => (0≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_fit : compileHmrRecordGrowLog s2Step321EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] 59 s2Step321EarlyControlLog.recordFresh=some s2Step321EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step321EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step321EarlyControl_fitBorrow

private theorem s2Step321EarlyControl_flagsBorrow : s2Step321EarlyControlEqualityArena.checkBorrow (6) s2Step321EarlyControlLog.flagWork=some s2Step321EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step321EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step321EarlyControlFlagArena,s2Step321EarlyControlEqualityArena,s2Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step321EarlyControl_flagsOwned : ([784, 253, 252, 251] : List Wire).toFinset⊆s2Step321EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_flags : compileHmrFlagsLog s2Step321EarlyControlClassPlan.equalityArena s2Step321EarlyControlClassPlan.equality.top 253 252 251 s2Step321EarlyControlLog.flagWork=some s2Step321EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step321EarlyControl_flagsOwned⟩
  · exact s2Step321EarlyControl_flagsBorrow

private theorem s2Step321EarlyControl_historyBorrow : s2Step321EarlyControlArena.checkBorrow ((59-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] : List Wire).length)) s2Step321EarlyControlLog.recordFresh=some s2Step321EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step321EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step321EarlyControlHistoryArena,s2Step321EarlyControlArena,s2Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step321EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] : List Wire).toFinset⊆s2Step321EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_history : compileHmrRecordGrowLog s2Step321EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] 59 s2Step321EarlyControlLog.recordFresh=some s2Step321EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step321EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step321EarlyControl_historyBorrow

private theorem s2Step321EarlyControl_sigmaOwned : ([254, 830] : List Wire).toFinset⊆s2Step321EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_sigmaReleaseOwned : ([830] : List Wire).toFinset⊆s2Step321EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_sigmaRelease : s2Step321EarlyControlHistoryArena.release {830} (fun _ => false)=some s2Step321EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step321EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step321EarlyControlSigmaArena,s2Step321EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step321EarlyControl_sigma : compileHmrSigmaDropLog s2Step321EarlyControlHistoryArena false 0 0 254 830 []=some s2Step321EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step321EarlyControl_sigmaOwned⟩
  · exact s2Step321EarlyControl_sigmaRelease

private theorem s2Step321EarlyControl_zeroBorrow : s2Step321EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step321EarlyControlLog.zeroWork=some s2Step321EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step321EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
      decide +kernel
    · ext q
      simp [s2Step321EarlyControlZeroArena,s2Step321EarlyControlArena,s2Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step321EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step321EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step321EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EarlyControl_zero : compileHmrEqualityLog s2Step321EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step321EarlyControlLog.zeroWork=some (s2Step321EarlyControlZeroArena,s2Step321EarlyControlLog.zeroWork,s2Step321EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step321EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step321EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step321EarlyControl_logged : s2Step321EarlyControlPlan.Logged s2Step321EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] 777 830 254 253 252 251 807 59 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step321EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step321EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step321EarlyControl_zero
  · exact s2Step321EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step321EarlyControl_flags
  · exact s2Step321EarlyControl_fit
  · exact s2Step321EarlyControl_history
  · exact s2Step321EarlyControl_sigma
  · exact s2Step321EarlyControl_branch

private theorem s2Step321EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step321EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] 777 830 254 253 252 251 807 59 s2Step321EarlyControlLog=some s2Step321EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step321EarlyControlPlan s2Step321EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] 777 830 254 253 252 251 807 59 s2Step321EarlyControl_logged

private def s2Step321EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩

private def s2Step321EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step321EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩

private def s2Step321EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩

private def s2Step321FrontBank : WindowBank := ⟨s2Step321EntryFRow,s2Step321EntryGRow,s2Step321EntryFvRow,s2Step321EntryGvRow⟩

private def s2Step321Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 840, 768]

private def s2Step321Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 814, 769]

private def s2Step321Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 787, 770]

private def s2Step321Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 827, 771]

private theorem s2Step321Counter_apart : Disjoint s2Step321HeadFvAfter.live s2Step321CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step321HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321Counter_borrowed : s2Step321HeadFvAfter.checkBorrow 4 s2Step321CounterWork=some s2Step321CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step321HeadFvAfter s2Step321CounterDuring s2Step321CounterWork.toFinset s2Step321Counter_bounded s2Step321Counter_apart rfl

private theorem s2Step321Counter_owned : (830::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step321HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step321HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321Counter_checked : compileHmrCounterStepLog s2Step321HeadFvAfter true 830 [772, 773, 774, 775, 776, 777] s2Step321CounterWork=some s2Step321CounterDuring := by
  have owned : ∀q∈830::[772, 773, 774, 775, 776, 777],q∈s2Step321HeadFvAfter.live := fun q hq => s2Step321Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step321Counter_borrowed

private def s2Step321EntryFAfter : Arena := s2Step321EntryFBefore

private theorem s2Step321EntryBank_incomingDistinct : ([s2Step321EntryFRow,s2Step321EntryGRow,s2Step321EntryFvRow,s2Step321EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321EntryF_Incoming : rowsOwned s2Step321EntryFBefore [s2Step321EntryFRow,s2Step321EntryGRow,s2Step321EntryFvRow,s2Step321EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321EntryFRow,s2Step321EntryGRow,s2Step321EntryFvRow,s2Step321EntryGvRow] 0 s2Step321EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321EntryBank_outgoingOwned : rowsOwned s2Step321EntryGvAfter [s2Step321EntryFOut,s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step321EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321EntryF_Outgoing : rowsOwned s2Step321EntryGvAfter [s2Step321EntryFOut,s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut] :=
  hmrRows_owned_drop s2Step321EntryGvAfter [s2Step321EntryFOut,s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut] 0 s2Step321EntryBank_outgoingOwned

private theorem s2Step321EntryF_distinct : (s2Step321EntryFRow.sign::s2Step321EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321EntryF_owned : (s2Step321EntryFRow.sign::s2Step321EntryFRow.payload).toFinset⊆s2Step321EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EntryF_reserved : s2Step321EntryFBefore.reserve s2Step321EntryFFresh.toFinset=some s2Step321EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step321EntryFFresh,arenaWires]
  · norm_num [s2Step321EntryFBefore,s2Step321EntryFFresh,arenaWires]
  · simp only [s2Step321EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step321EntryF_checked : planRowResizeLog s2Step321EntryFBefore s2Step321EntryFRow 110 s2Step321EntryFFresh=
    some (s2Step321EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩,growRow 768 s2Step321EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step321EntryFBefore s2Step321EntryFAfter s2Step321EntryFRow 110 s2Step321EntryFFresh
    s2Step321EntryF_distinct s2Step321EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step321EntryF_reserved
  have rowEq : WindowRow.mk (s2Step321EntryFRow.payload++s2Step321EntryFFresh) s2Step321EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step321EntryFvAfter : Arena := s2Step321EntryFBefore

private def s2Step321EntryFvBefore : Arena := s2Step321EntryFBefore

private theorem s2Step321EntryFv_Incoming : rowsOwned s2Step321EntryFvBefore [s2Step321EntryFvRow,s2Step321EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321EntryFRow,s2Step321EntryGRow,s2Step321EntryFvRow,s2Step321EntryGvRow] 2 s2Step321EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321EntryFv_Outgoing : rowsOwned s2Step321EntryGvAfter [s2Step321EntryFvOut,s2Step321EntryGvOut] :=
  hmrRows_owned_drop s2Step321EntryGvAfter [s2Step321EntryFOut,s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut] 2 s2Step321EntryBank_outgoingOwned

private theorem s2Step321EntryFv_distinct : (s2Step321EntryFvRow.sign::s2Step321EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321EntryFv_owned : (s2Step321EntryFvRow.sign::s2Step321EntryFvRow.payload).toFinset⊆s2Step321EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EntryFv_reserved : s2Step321EntryFvBefore.reserve s2Step321EntryFvFresh.toFinset=some s2Step321EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step321EntryFvFresh,arenaWires]
  · norm_num [s2Step321EntryFvBefore,s2Step321EntryFBefore,s2Step321EntryFvFresh,arenaWires]
  · simp only [s2Step321EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step321EntryFv_checked : planRowResizeLog s2Step321EntryFvBefore s2Step321EntryFvRow 176 s2Step321EntryFvFresh=
    some (s2Step321EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩,growRow 770 s2Step321EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step321EntryFvBefore s2Step321EntryFvAfter s2Step321EntryFvRow 176 s2Step321EntryFvFresh
    s2Step321EntryFv_distinct s2Step321EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step321EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step321EntryFvRow.payload++s2Step321EntryFvFresh) s2Step321EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step321EntryGAfter : Arena := s2Step321EntryFBefore

private def s2Step321EntryGBefore : Arena := s2Step321EntryFBefore

private theorem s2Step321EntryG_Incoming : rowsOwned s2Step321EntryGBefore [s2Step321EntryGRow,s2Step321EntryFvRow,s2Step321EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321EntryFRow,s2Step321EntryGRow,s2Step321EntryFvRow,s2Step321EntryGvRow] 1 s2Step321EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321EntryG_Outgoing : rowsOwned s2Step321EntryGvAfter [s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut] :=
  hmrRows_owned_drop s2Step321EntryGvAfter [s2Step321EntryFOut,s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut] 1 s2Step321EntryBank_outgoingOwned

private theorem s2Step321EntryG_distinct : (s2Step321EntryGRow.sign::s2Step321EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321EntryG_owned : (s2Step321EntryGRow.sign::s2Step321EntryGRow.payload).toFinset⊆s2Step321EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EntryG_reserved : s2Step321EntryGBefore.reserve s2Step321EntryGFresh.toFinset=some s2Step321EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step321EntryGFresh,arenaWires]
  · norm_num [s2Step321EntryGBefore,s2Step321EntryFBefore,s2Step321EntryGFresh,arenaWires]
  · simp only [s2Step321EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step321EntryG_checked : planRowResizeLog s2Step321EntryGBefore s2Step321EntryGRow 110 s2Step321EntryGFresh=
    some (s2Step321EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩,growRow 769 s2Step321EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step321EntryGBefore s2Step321EntryGAfter s2Step321EntryGRow 110 s2Step321EntryGFresh
    s2Step321EntryG_distinct s2Step321EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step321EntryG_reserved
  have rowEq : WindowRow.mk (s2Step321EntryGRow.payload++s2Step321EntryGFresh) s2Step321EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step321EntryGvBefore : Arena := s2Step321EntryFBefore

private theorem s2Step321EntryGv_Incoming : rowsOwned s2Step321EntryGvBefore [s2Step321EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321EntryFRow,s2Step321EntryGRow,s2Step321EntryFvRow,s2Step321EntryGvRow] 3 s2Step321EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321EntryGv_Outgoing : rowsOwned s2Step321EntryGvAfter [s2Step321EntryGvOut] :=
  hmrRows_owned_drop s2Step321EntryGvAfter [s2Step321EntryFOut,s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut] 3 s2Step321EntryBank_outgoingOwned

private theorem s2Step321EntryGv_distinct : (s2Step321EntryGvRow.sign::s2Step321EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321EntryGv_owned : (s2Step321EntryGvRow.sign::s2Step321EntryGvRow.payload).toFinset⊆s2Step321EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321EntryGv_reserved : s2Step321EntryGvBefore.reserve s2Step321EntryGvFresh.toFinset=some s2Step321EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step321EntryGvFresh,arenaWires]
  · norm_num [s2Step321EntryGvBefore,s2Step321EntryFBefore,s2Step321EntryGvFresh,arenaWires]
  · simp only [s2Step321EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step321EntryGv_checked : planRowResizeLog s2Step321EntryGvBefore s2Step321EntryGvRow 176 s2Step321EntryGvFresh=
    some (s2Step321EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩,growRow 771 s2Step321EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step321EntryGvBefore s2Step321EntryGvAfter s2Step321EntryGvRow 176 s2Step321EntryGvFresh
    s2Step321EntryGv_distinct s2Step321EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step321EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step321EntryGvRow.payload++s2Step321EntryGvFresh) s2Step321EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step321EntryBank_rows : planWindowRowsLog s2Step321EntryFBefore [(s2Step321EntryFRow,110),(s2Step321EntryGRow,110),(s2Step321EntryFvRow,176),(s2Step321EntryGvRow,176)] [s2Step321EntryFFresh,s2Step321EntryGFresh,s2Step321EntryFvFresh,s2Step321EntryGvFresh]=
    some (s2Step321EntryGvAfter,[s2Step321EntryFOut,s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut],(growRow 768 s2Step321EntryFFresh ++ (growRow 769 s2Step321EntryGFresh ++ (growRow 770 s2Step321EntryFvFresh ++ (growRow 771 s2Step321EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step321EntryGvAfter [] []=some (s2Step321EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step321EntryGvBefore s2Step321EntryGvAfter s2Step321EntryGvAfter
    s2Step321EntryGvRow s2Step321EntryGvOut 176 s2Step321EntryGvFresh [] [] []
    (growRow 771 s2Step321EntryGvFresh) ([]) s2Step321EntryGv_Incoming s2Step321EntryGv_checked h4 s2Step321EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step321EntryFvBefore s2Step321EntryFvAfter s2Step321EntryGvAfter
    s2Step321EntryFvRow s2Step321EntryFvOut 176 s2Step321EntryFvFresh [(s2Step321EntryGvRow,176)] [s2Step321EntryGvFresh] [s2Step321EntryGvOut]
    (growRow 770 s2Step321EntryFvFresh) ((growRow 771 s2Step321EntryGvFresh ++ [])) s2Step321EntryFv_Incoming s2Step321EntryFv_checked h3 s2Step321EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step321EntryGBefore s2Step321EntryGAfter s2Step321EntryGvAfter
    s2Step321EntryGRow s2Step321EntryGOut 110 s2Step321EntryGFresh [(s2Step321EntryFvRow,176),(s2Step321EntryGvRow,176)] [s2Step321EntryFvFresh,s2Step321EntryGvFresh] [s2Step321EntryFvOut,s2Step321EntryGvOut]
    (growRow 769 s2Step321EntryGFresh) ((growRow 770 s2Step321EntryFvFresh ++ (growRow 771 s2Step321EntryGvFresh ++ []))) s2Step321EntryG_Incoming s2Step321EntryG_checked h2 s2Step321EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step321EntryFBefore s2Step321EntryFAfter s2Step321EntryGvAfter
    s2Step321EntryFRow s2Step321EntryFOut 110 s2Step321EntryFFresh [(s2Step321EntryGRow,110),(s2Step321EntryFvRow,176),(s2Step321EntryGvRow,176)] [s2Step321EntryGFresh,s2Step321EntryFvFresh,s2Step321EntryGvFresh] [s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut]
    (growRow 768 s2Step321EntryFFresh) ((growRow 769 s2Step321EntryGFresh ++ (growRow 770 s2Step321EntryFvFresh ++ (growRow 771 s2Step321EntryGvFresh ++ [])))) s2Step321EntryF_Incoming s2Step321EntryF_checked h1 s2Step321EntryF_Outgoing
  exact h0

private theorem s2Step321EntryBank_checked : compileHmrBankResizeLog .entry s2Step321EntryFBefore ⟨s2Step321EntryFRow,s2Step321EntryGRow,s2Step321EntryFvRow,s2Step321EntryGvRow⟩ ⟨110,110,176,176⟩ [s2Step321EntryFFresh,s2Step321EntryGFresh,s2Step321EntryFvFresh,s2Step321EntryGvFresh]=
    some (s2Step321EntryGvAfter,⟨s2Step321EntryFOut,s2Step321EntryGOut,s2Step321EntryFvOut,s2Step321EntryGvOut⟩,(growRow 768 s2Step321EntryFFresh ++ (growRow 769 s2Step321EntryGFresh ++ (growRow 770 s2Step321EntryFvFresh ++ (growRow 771 s2Step321EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step321EntryBank_rows]
  rfl

private def s2Step321ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321ExitFBefore : Arena := s2Step321ExitGAfter

private def s2Step321ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 840],768⟩

private def s2Step321ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 787],770⟩

private def s2Step321ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 814],769⟩

private def s2Step321ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 827],771⟩

private theorem s2Step321ExitBank_incomingDistinct : ([s2Step321ExitGRow,s2Step321ExitFRow,s2Step321ExitFvRow,s2Step321ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321ExitF_Incoming : rowsOwned s2Step321ExitFBefore [s2Step321ExitFRow,s2Step321ExitFvRow,s2Step321ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321ExitGRow,s2Step321ExitFRow,s2Step321ExitFvRow,s2Step321ExitGvRow] 1 s2Step321ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321ExitBank_outgoingOwned : rowsOwned s2Step321ExitGvAfter [s2Step321ExitGOut,s2Step321ExitFOut,s2Step321ExitFvOut,s2Step321ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step321ExitGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321ExitF_Outgoing : rowsOwned s2Step321ExitGvAfter [s2Step321ExitFOut,s2Step321ExitFvOut,s2Step321ExitGvOut] :=
  hmrRows_owned_drop s2Step321ExitGvAfter [s2Step321ExitGOut,s2Step321ExitFOut,s2Step321ExitFvOut,s2Step321ExitGvOut] 1 s2Step321ExitBank_outgoingOwned

private theorem s2Step321ExitF_distinct : (s2Step321ExitFRow.sign::s2Step321ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321ExitF_owned : (s2Step321ExitFRow.sign::s2Step321ExitFRow.payload).toFinset⊆s2Step321ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321ExitF_retired : s2Step321ExitFBefore.retireSet s2Step321ExitFExtra.toFinset=s2Step321ExitFAfter := by
  unfold Arena.retireSet s2Step321ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step321ExitFBefore,s2Step321ExitGAfter,s2Step321ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step321ExitF_checked : planRowResizeLog s2Step321ExitFBefore s2Step321ExitFRow 110 []=
    some (s2Step321ExitFAfter,s2Step321ExitFOut,shrinkRow 768 s2Step321ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step321ExitFBefore s2Step321ExitFRow 110 s2Step321ExitF_distinct s2Step321ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step321ExitFRow.payload.take 110) s2Step321ExitFRow.sign=s2Step321ExitFOut := by decide +kernel
  have hi : s2Step321ExitFRow.payload.drop 110=s2Step321ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step321ExitF_retired] at result
  exact result

private def s2Step321ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321ExitFvBefore : Arena := s2Step321ExitFAfter

private theorem s2Step321ExitFv_Incoming : rowsOwned s2Step321ExitFvBefore [s2Step321ExitFvRow,s2Step321ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321ExitGRow,s2Step321ExitFRow,s2Step321ExitFvRow,s2Step321ExitGvRow] 2 s2Step321ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321ExitFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321ExitFv_Outgoing : rowsOwned s2Step321ExitGvAfter [s2Step321ExitFvOut,s2Step321ExitGvOut] :=
  hmrRows_owned_drop s2Step321ExitGvAfter [s2Step321ExitGOut,s2Step321ExitFOut,s2Step321ExitFvOut,s2Step321ExitGvOut] 2 s2Step321ExitBank_outgoingOwned

private theorem s2Step321ExitFv_distinct : (s2Step321ExitFvRow.sign::s2Step321ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321ExitFv_owned : (s2Step321ExitFvRow.sign::s2Step321ExitFvRow.payload).toFinset⊆s2Step321ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321ExitFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321ExitFv_retired : s2Step321ExitFvBefore.retireSet s2Step321ExitFvExtra.toFinset=s2Step321ExitFvAfter := by
  unfold Arena.retireSet s2Step321ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step321ExitFvBefore,s2Step321ExitFAfter,s2Step321ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step321ExitFv_checked : planRowResizeLog s2Step321ExitFvBefore s2Step321ExitFvRow 176 []=
    some (s2Step321ExitFvAfter,s2Step321ExitFvOut,shrinkRow 770 s2Step321ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step321ExitFvBefore s2Step321ExitFvRow 176 s2Step321ExitFv_distinct s2Step321ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step321ExitFvRow.payload.take 176) s2Step321ExitFvRow.sign=s2Step321ExitFvOut := by decide +kernel
  have hi : s2Step321ExitFvRow.payload.drop 176=s2Step321ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step321ExitFv_retired] at result
  exact result

private def s2Step321ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private theorem s2Step321ExitG_Incoming : rowsOwned s2Step321ExitGBefore [s2Step321ExitGRow,s2Step321ExitFRow,s2Step321ExitFvRow,s2Step321ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321ExitGRow,s2Step321ExitFRow,s2Step321ExitFvRow,s2Step321ExitGvRow] 0 s2Step321ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321ExitG_Outgoing : rowsOwned s2Step321ExitGvAfter [s2Step321ExitGOut,s2Step321ExitFOut,s2Step321ExitFvOut,s2Step321ExitGvOut] :=
  hmrRows_owned_drop s2Step321ExitGvAfter [s2Step321ExitGOut,s2Step321ExitFOut,s2Step321ExitFvOut,s2Step321ExitGvOut] 0 s2Step321ExitBank_outgoingOwned

private theorem s2Step321ExitG_distinct : (s2Step321ExitGRow.sign::s2Step321ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321ExitG_owned : (s2Step321ExitGRow.sign::s2Step321ExitGRow.payload).toFinset⊆s2Step321ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321ExitG_retired : s2Step321ExitGBefore.retireSet s2Step321ExitGExtra.toFinset=s2Step321ExitGAfter := by
  unfold Arena.retireSet s2Step321ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step321ExitGBefore,s2Step321ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step321ExitG_checked : planRowResizeLog s2Step321ExitGBefore s2Step321ExitGRow 110 []=
    some (s2Step321ExitGAfter,s2Step321ExitGOut,shrinkRow 769 s2Step321ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step321ExitGBefore s2Step321ExitGRow 110 s2Step321ExitG_distinct s2Step321ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step321ExitGRow.payload.take 110) s2Step321ExitGRow.sign=s2Step321ExitGOut := by decide +kernel
  have hi : s2Step321ExitGRow.payload.drop 110=s2Step321ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step321ExitG_retired] at result
  exact result

private def s2Step321ExitGvBefore : Arena := s2Step321ExitFvAfter

private theorem s2Step321ExitGv_Incoming : rowsOwned s2Step321ExitGvBefore [s2Step321ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321ExitGRow,s2Step321ExitFRow,s2Step321ExitFvRow,s2Step321ExitGvRow] 3 s2Step321ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321ExitGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321ExitGv_Outgoing : rowsOwned s2Step321ExitGvAfter [s2Step321ExitGvOut] :=
  hmrRows_owned_drop s2Step321ExitGvAfter [s2Step321ExitGOut,s2Step321ExitFOut,s2Step321ExitFvOut,s2Step321ExitGvOut] 3 s2Step321ExitBank_outgoingOwned

private theorem s2Step321ExitGv_distinct : (s2Step321ExitGvRow.sign::s2Step321ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321ExitGv_owned : (s2Step321ExitGvRow.sign::s2Step321ExitGvRow.payload).toFinset⊆s2Step321ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321ExitGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321ExitGv_retired : s2Step321ExitGvBefore.retireSet s2Step321ExitGvExtra.toFinset=s2Step321ExitGvAfter := by
  unfold Arena.retireSet s2Step321ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step321ExitGvBefore,s2Step321ExitFvAfter,s2Step321ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step321ExitGv_checked : planRowResizeLog s2Step321ExitGvBefore s2Step321ExitGvRow 176 []=
    some (s2Step321ExitGvAfter,s2Step321ExitGvOut,shrinkRow 771 s2Step321ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step321ExitGvBefore s2Step321ExitGvRow 176 s2Step321ExitGv_distinct s2Step321ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step321ExitGvRow.payload.take 176) s2Step321ExitGvRow.sign=s2Step321ExitGvOut := by decide +kernel
  have hi : s2Step321ExitGvRow.payload.drop 176=s2Step321ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step321ExitGv_retired] at result
  exact result

private theorem s2Step321ExitBank_rows : planWindowRowsLog s2Step321ExitGBefore [(s2Step321ExitGRow,110),(s2Step321ExitFRow,110),(s2Step321ExitFvRow,176),(s2Step321ExitGvRow,176)] [[],[],[],[]]=
    some (s2Step321ExitGvAfter,[s2Step321ExitGOut,s2Step321ExitFOut,s2Step321ExitFvOut,s2Step321ExitGvOut],(shrinkRow 769 s2Step321ExitGExtra ++ (shrinkRow 768 s2Step321ExitFExtra ++ (shrinkRow 770 s2Step321ExitFvExtra ++ (shrinkRow 771 s2Step321ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step321ExitGvAfter [] []=some (s2Step321ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step321ExitGvBefore s2Step321ExitGvAfter s2Step321ExitGvAfter
    s2Step321ExitGvRow s2Step321ExitGvOut 176 [] [] [] []
    (shrinkRow 771 s2Step321ExitGvExtra) ([]) s2Step321ExitGv_Incoming s2Step321ExitGv_checked h4 s2Step321ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step321ExitFvBefore s2Step321ExitFvAfter s2Step321ExitGvAfter
    s2Step321ExitFvRow s2Step321ExitFvOut 176 [] [(s2Step321ExitGvRow,176)] [[]] [s2Step321ExitGvOut]
    (shrinkRow 770 s2Step321ExitFvExtra) ((shrinkRow 771 s2Step321ExitGvExtra ++ [])) s2Step321ExitFv_Incoming s2Step321ExitFv_checked h3 s2Step321ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step321ExitFBefore s2Step321ExitFAfter s2Step321ExitGvAfter
    s2Step321ExitFRow s2Step321ExitFOut 110 [] [(s2Step321ExitFvRow,176),(s2Step321ExitGvRow,176)] [[],[]] [s2Step321ExitFvOut,s2Step321ExitGvOut]
    (shrinkRow 768 s2Step321ExitFExtra) ((shrinkRow 770 s2Step321ExitFvExtra ++ (shrinkRow 771 s2Step321ExitGvExtra ++ []))) s2Step321ExitF_Incoming s2Step321ExitF_checked h2 s2Step321ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step321ExitGBefore s2Step321ExitGAfter s2Step321ExitGvAfter
    s2Step321ExitGRow s2Step321ExitGOut 110 [] [(s2Step321ExitFRow,110),(s2Step321ExitFvRow,176),(s2Step321ExitGvRow,176)] [[],[],[]] [s2Step321ExitFOut,s2Step321ExitFvOut,s2Step321ExitGvOut]
    (shrinkRow 769 s2Step321ExitGExtra) ((shrinkRow 768 s2Step321ExitFExtra ++ (shrinkRow 770 s2Step321ExitFvExtra ++ (shrinkRow 771 s2Step321ExitGvExtra ++ [])))) s2Step321ExitG_Incoming s2Step321ExitG_checked h1 s2Step321ExitG_Outgoing
  exact h0

private theorem s2Step321ExitBank_checked : compileHmrBankResizeLog .exit s2Step321ExitGBefore ⟨s2Step321ExitFRow,s2Step321ExitGRow,s2Step321ExitFvRow,s2Step321ExitGvRow⟩ ⟨110,110,176,176⟩ [[],[],[],[]]=
    some (s2Step321ExitGvAfter,⟨s2Step321ExitFOut,s2Step321ExitGOut,s2Step321ExitFvOut,s2Step321ExitGvOut⟩,(shrinkRow 769 s2Step321ExitGExtra ++ (shrinkRow 768 s2Step321ExitFExtra ++ (shrinkRow 770 s2Step321ExitFvExtra ++ (shrinkRow 771 s2Step321ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step321ExitBank_rows]
  rfl

private theorem s2Step321Add0_apart : Disjoint s2Step321Add0Arena.live s2Step321Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step321Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321Add0_card : s2Step321Add0Arena.live.card=904 := by
  decide +kernel

private theorem s2Step321Add0_borrowed : s2Step321Add0Arena.checkBorrow (hmrHybridCount s2Step321Add0Arena s2Step321Add0B.length) s2Step321Add0Work=some s2Step321Add0During := by
  have len : s2Step321Add0Work.length=hmrHybridCount s2Step321Add0Arena s2Step321Add0B.length := by
    rw [hmrHybridCount,s2Step321Add0_card]
    decide +kernel
  have nd : s2Step321Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step321Add0Arena s2Step321Add0During s2Step321Add0Work.toFinset s2Step321Add0_bounded s2Step321Add0_apart rfl

private theorem s2Step321Add0_distinct : (834::807::806::(s2Step321Add0A++s2Step321Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321Add0_owned : (834::807::806::(s2Step321Add0A++s2Step321Add0B)).toFinset⊆s2Step321Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step321Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321Add0_checked : compileHmrHybridCinLog s2Step321Add0Arena 807 834 806 s2Step321Add0A s2Step321Add0B s2Step321Add0Work=some s2Step321Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step321Add0Arena s2Step321Add0During 807 834 806 s2Step321Add0A s2Step321Add0B s2Step321Add0Work
    (by decide +kernel) (by decide +kernel) s2Step321Add0_distinct
    (fun q hq => s2Step321Add0_owned (List.mem_toFinset.mpr hq)) s2Step321Add0_borrowed

private theorem s2Step321Add1_apart : Disjoint s2Step321Add1Arena.live s2Step321Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step321Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321Add1_card : s2Step321Add1Arena.live.card=904 := by
  decide +kernel

private theorem s2Step321Add1_borrowed : s2Step321Add1Arena.checkBorrow (hmrHybridCount s2Step321Add1Arena s2Step321Add1B.length) s2Step321Add1Work=some s2Step321Add1During := by
  have len : s2Step321Add1Work.length=hmrHybridCount s2Step321Add1Arena s2Step321Add1B.length := by
    rw [hmrHybridCount,s2Step321Add1_card]
    decide +kernel
  have nd : s2Step321Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step321Add1Arena s2Step321Add1During s2Step321Add1Work.toFinset s2Step321Add1_bounded s2Step321Add1_apart rfl

private theorem s2Step321Add1_distinct : (834::807::806::(s2Step321Add1A++s2Step321Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321Add1_owned : (834::807::806::(s2Step321Add1A++s2Step321Add1B)).toFinset⊆s2Step321Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step321Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321Add1_checked : compileHmrHybridCinLog s2Step321Add1Arena 807 834 806 s2Step321Add1A s2Step321Add1B s2Step321Add1Work=some s2Step321Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step321Add1Arena s2Step321Add1During 807 834 806 s2Step321Add1A s2Step321Add1B s2Step321Add1Work
    (by decide +kernel) (by decide +kernel) s2Step321Add1_distinct
    (fun q hq => s2Step321Add1_owned (List.mem_toFinset.mpr hq)) s2Step321Add1_borrowed

private theorem s2Step321F4_apart : Disjoint (s2Step321Add0A++s2Step321Add0B).toFinset (s2Step321Add1A++s2Step321Add1B).toFinset := by
  have nd : ((s2Step321Add0A++s2Step321Add0B)++(s2Step321Add1A++s2Step321Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step321F4_carry : s2Step321F4FlagArena.checkBorrow 1 [806]=some s2Step321Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step321F4FlagArena,s2Step321HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step321F4FlagArena,s2Step321HeadFvAfter,s2Step321Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step321F4_distinct : (830::807::834::806::((s2Step321Add0A++s2Step321Add1A)++(s2Step321Add0B++s2Step321Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321F4_flag : s2Step321HeadFvAfter.checkBorrow 1 [834]=some s2Step321F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step321HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step321F4_owned : (830::807::((s2Step321Add0A++s2Step321Add1A)++(s2Step321Add0B++s2Step321Add1B))).toFinset⊆s2Step321HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step321HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321F4_checked : compileHmrHybridF4Log s2Step321HeadFvAfter 830 807 s2Step321Add0A s2Step321Add0B s2Step321Add1A s2Step321Add1B [834] [806] s2Step321Add0Work s2Step321Add1Work=some s2Step321F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step321HeadFvAfter s2Step321F4FlagArena s2Step321Add0Arena s2Step321Add0During s2Step321Add1During 830 807
    s2Step321Add0A s2Step321Add0B s2Step321Add1A s2Step321Add1B [834] [806] s2Step321Add0Work s2Step321Add1Work
    (fun q hq => s2Step321F4_owned (List.mem_toFinset.mpr hq)) s2Step321F4_flag s2Step321F4_carry
    s2Step321F4_distinct s2Step321F4_apart s2Step321Add0_checked s2Step321Add1_checked

private theorem s2Step321Front_branch : s2Step321FrontSigmaArena.checkBorrow 1 [807]=some s2Step321HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step321FrontSigmaArena,s2Step321EntryGvAfter,s2Step321EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step321FrontSigmaArena,s2Step321EntryGvAfter,s2Step321EntryFBefore,s2Step321HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step321Front_entry : HmrFrontEntryValid s2Step321EntryFBefore s2Step321FrontBank 110 176 ⟨110,110,176,176⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step321FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step321EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step321EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step321FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step321Front_sigma : s2Step321EntryGvAfter.checkBorrow 1 [830]=some s2Step321FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step321EntryGvAfter,s2Step321EntryFBefore,arenaWires]
  · rfl

private def s2Step321HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321HeadFBefore : Arena := s2Step321HeadGAfter

private def s2Step321HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩

private def s2Step321HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step321HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩

private def s2Step321HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩

private theorem s2Step321HeadBank_incomingDistinct : ([s2Step321HeadGRow,s2Step321HeadFRow,s2Step321HeadGvRow,s2Step321HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321HeadF_Incoming : rowsOwned s2Step321HeadFBefore [s2Step321HeadFRow,s2Step321HeadGvRow,s2Step321HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321HeadGRow,s2Step321HeadFRow,s2Step321HeadGvRow,s2Step321HeadFvRow] 1 s2Step321HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321HeadBank_outgoingOwned : rowsOwned s2Step321HeadFvAfter [s2Step321HeadGOut,s2Step321HeadFOut,s2Step321HeadGvOut,s2Step321HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step321HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321HeadF_Outgoing : rowsOwned s2Step321HeadFvAfter [s2Step321HeadFOut,s2Step321HeadGvOut,s2Step321HeadFvOut] :=
  hmrRows_owned_drop s2Step321HeadFvAfter [s2Step321HeadGOut,s2Step321HeadFOut,s2Step321HeadGvOut,s2Step321HeadFvOut] 1 s2Step321HeadBank_outgoingOwned

private theorem s2Step321HeadF_distinct : (s2Step321HeadFRow.sign::s2Step321HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321HeadF_owned : (s2Step321HeadFRow.sign::s2Step321HeadFRow.payload).toFinset⊆s2Step321HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321HeadF_reserved : s2Step321HeadFBefore.reserve s2Step321HeadFFresh.toFinset=some s2Step321HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step321HeadFFresh,arenaWires]
  · norm_num [s2Step321HeadFBefore,s2Step321HeadGAfter,s2Step321HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step321HeadFAfter,s2Step321HeadFBefore,s2Step321HeadGAfter,s2Step321HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step321HeadF_checked : planRowResizeLog s2Step321HeadFBefore s2Step321HeadFRow 111 s2Step321HeadFFresh=
    some (s2Step321HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 840],768⟩,growRow 768 s2Step321HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step321HeadFBefore s2Step321HeadFAfter s2Step321HeadFRow 111 s2Step321HeadFFresh
    s2Step321HeadF_distinct s2Step321HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step321HeadF_reserved
  have rowEq : WindowRow.mk (s2Step321HeadFRow.payload++s2Step321HeadFFresh) s2Step321HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 840],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step321HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step321HeadFvBefore : Arena := s2Step321HeadGvAfter

private theorem s2Step321HeadFv_Incoming : rowsOwned s2Step321HeadFvBefore [s2Step321HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321HeadGRow,s2Step321HeadFRow,s2Step321HeadGvRow,s2Step321HeadFvRow] 3 s2Step321HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321HeadFv_Outgoing : rowsOwned s2Step321HeadFvAfter [s2Step321HeadFvOut] :=
  hmrRows_owned_drop s2Step321HeadFvAfter [s2Step321HeadGOut,s2Step321HeadFOut,s2Step321HeadGvOut,s2Step321HeadFvOut] 3 s2Step321HeadBank_outgoingOwned

private theorem s2Step321HeadFv_distinct : (s2Step321HeadFvRow.sign::s2Step321HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321HeadFv_owned : (s2Step321HeadFvRow.sign::s2Step321HeadFvRow.payload).toFinset⊆s2Step321HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321HeadFv_reserved : s2Step321HeadFvBefore.reserve s2Step321HeadFvFresh.toFinset=some s2Step321HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step321HeadFvFresh,arenaWires]
  · norm_num [s2Step321HeadFvBefore,s2Step321HeadGvAfter,s2Step321HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step321HeadFvAfter,s2Step321HeadFvBefore,s2Step321HeadGvAfter,s2Step321HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step321HeadFv_checked : planRowResizeLog s2Step321HeadFvBefore s2Step321HeadFvRow 177 s2Step321HeadFvFresh=
    some (s2Step321HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 787],770⟩,growRow 770 s2Step321HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step321HeadFvBefore s2Step321HeadFvAfter s2Step321HeadFvRow 177 s2Step321HeadFvFresh
    s2Step321HeadFv_distinct s2Step321HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step321HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step321HeadFvRow.payload++s2Step321HeadFvFresh) s2Step321HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step321HeadG_Incoming : rowsOwned s2Step321HeadGBefore [s2Step321HeadGRow,s2Step321HeadFRow,s2Step321HeadGvRow,s2Step321HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321HeadGRow,s2Step321HeadFRow,s2Step321HeadGvRow,s2Step321HeadFvRow] 0 s2Step321HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321HeadG_Outgoing : rowsOwned s2Step321HeadFvAfter [s2Step321HeadGOut,s2Step321HeadFOut,s2Step321HeadGvOut,s2Step321HeadFvOut] :=
  hmrRows_owned_drop s2Step321HeadFvAfter [s2Step321HeadGOut,s2Step321HeadFOut,s2Step321HeadGvOut,s2Step321HeadFvOut] 0 s2Step321HeadBank_outgoingOwned

private theorem s2Step321HeadG_distinct : (s2Step321HeadGRow.sign::s2Step321HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321HeadG_owned : (s2Step321HeadGRow.sign::s2Step321HeadGRow.payload).toFinset⊆s2Step321HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321HeadG_reserved : s2Step321HeadGBefore.reserve s2Step321HeadGFresh.toFinset=some s2Step321HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step321HeadGFresh,arenaWires]
  · norm_num [s2Step321HeadGBefore,s2Step321HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step321HeadGAfter,s2Step321HeadGBefore,s2Step321HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step321HeadG_checked : planRowResizeLog s2Step321HeadGBefore s2Step321HeadGRow 111 s2Step321HeadGFresh=
    some (s2Step321HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 814],769⟩,growRow 769 s2Step321HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step321HeadGBefore s2Step321HeadGAfter s2Step321HeadGRow 111 s2Step321HeadGFresh
    s2Step321HeadG_distinct s2Step321HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step321HeadG_reserved
  have rowEq : WindowRow.mk (s2Step321HeadGRow.payload++s2Step321HeadGFresh) s2Step321HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step321HeadGvBefore : Arena := s2Step321HeadFAfter

private theorem s2Step321HeadGv_Incoming : rowsOwned s2Step321HeadGvBefore [s2Step321HeadGvRow,s2Step321HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step321HeadGRow,s2Step321HeadFRow,s2Step321HeadGvRow,s2Step321HeadFvRow] 2 s2Step321HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step321HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
    decide +kernel

private theorem s2Step321HeadGv_Outgoing : rowsOwned s2Step321HeadFvAfter [s2Step321HeadGvOut,s2Step321HeadFvOut] :=
  hmrRows_owned_drop s2Step321HeadFvAfter [s2Step321HeadGOut,s2Step321HeadFOut,s2Step321HeadGvOut,s2Step321HeadFvOut] 2 s2Step321HeadBank_outgoingOwned

private theorem s2Step321HeadGv_distinct : (s2Step321HeadGvRow.sign::s2Step321HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step321HeadGv_owned : (s2Step321HeadGvRow.sign::s2Step321HeadGvRow.payload).toFinset⊆s2Step321HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step321HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step321HeadGv_reserved : s2Step321HeadGvBefore.reserve s2Step321HeadGvFresh.toFinset=some s2Step321HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step321HeadGvFresh,arenaWires]
  · norm_num [s2Step321HeadGvBefore,s2Step321HeadFAfter,s2Step321HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step321HeadGvAfter,s2Step321HeadGvBefore,s2Step321HeadFAfter,s2Step321HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step321HeadGv_checked : planRowResizeLog s2Step321HeadGvBefore s2Step321HeadGvRow 177 s2Step321HeadGvFresh=
    some (s2Step321HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 827],771⟩,growRow 771 s2Step321HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step321HeadGvBefore s2Step321HeadGvAfter s2Step321HeadGvRow 177 s2Step321HeadGvFresh
    s2Step321HeadGv_distinct s2Step321HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step321HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step321HeadGvRow.payload++s2Step321HeadGvFresh) s2Step321HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 827],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step321HeadBank_rows : planWindowRowsLog s2Step321HeadGBefore [(s2Step321HeadGRow,111),(s2Step321HeadFRow,111),(s2Step321HeadGvRow,177),(s2Step321HeadFvRow,177)] [s2Step321HeadGFresh,s2Step321HeadFFresh,s2Step321HeadGvFresh,s2Step321HeadFvFresh]=
    some (s2Step321HeadFvAfter,[s2Step321HeadGOut,s2Step321HeadFOut,s2Step321HeadGvOut,s2Step321HeadFvOut],(growRow 769 s2Step321HeadGFresh ++ (growRow 768 s2Step321HeadFFresh ++ (growRow 771 s2Step321HeadGvFresh ++ (growRow 770 s2Step321HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step321HeadFvAfter [] []=some (s2Step321HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step321HeadFvBefore s2Step321HeadFvAfter s2Step321HeadFvAfter
    s2Step321HeadFvRow s2Step321HeadFvOut 177 s2Step321HeadFvFresh [] [] []
    (growRow 770 s2Step321HeadFvFresh) ([]) s2Step321HeadFv_Incoming s2Step321HeadFv_checked h4 s2Step321HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step321HeadGvBefore s2Step321HeadGvAfter s2Step321HeadFvAfter
    s2Step321HeadGvRow s2Step321HeadGvOut 177 s2Step321HeadGvFresh [(s2Step321HeadFvRow,177)] [s2Step321HeadFvFresh] [s2Step321HeadFvOut]
    (growRow 771 s2Step321HeadGvFresh) ((growRow 770 s2Step321HeadFvFresh ++ [])) s2Step321HeadGv_Incoming s2Step321HeadGv_checked h3 s2Step321HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step321HeadFBefore s2Step321HeadFAfter s2Step321HeadFvAfter
    s2Step321HeadFRow s2Step321HeadFOut 111 s2Step321HeadFFresh [(s2Step321HeadGvRow,177),(s2Step321HeadFvRow,177)] [s2Step321HeadGvFresh,s2Step321HeadFvFresh] [s2Step321HeadGvOut,s2Step321HeadFvOut]
    (growRow 768 s2Step321HeadFFresh) ((growRow 771 s2Step321HeadGvFresh ++ (growRow 770 s2Step321HeadFvFresh ++ []))) s2Step321HeadF_Incoming s2Step321HeadF_checked h2 s2Step321HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step321HeadGBefore s2Step321HeadGAfter s2Step321HeadFvAfter
    s2Step321HeadGRow s2Step321HeadGOut 111 s2Step321HeadGFresh [(s2Step321HeadFRow,111),(s2Step321HeadGvRow,177),(s2Step321HeadFvRow,177)] [s2Step321HeadFFresh,s2Step321HeadGvFresh,s2Step321HeadFvFresh] [s2Step321HeadFOut,s2Step321HeadGvOut,s2Step321HeadFvOut]
    (growRow 769 s2Step321HeadGFresh) ((growRow 768 s2Step321HeadFFresh ++ (growRow 771 s2Step321HeadGvFresh ++ (growRow 770 s2Step321HeadFvFresh ++ [])))) s2Step321HeadG_Incoming s2Step321HeadG_checked h1 s2Step321HeadG_Outgoing
  exact h0

private theorem s2Step321HeadBank_checked : compileHmrBankResizeLog .headroom s2Step321HeadGBefore ⟨s2Step321HeadFRow,s2Step321HeadGRow,s2Step321HeadFvRow,s2Step321HeadGvRow⟩ ⟨111,111,177,177⟩ [s2Step321HeadGFresh,s2Step321HeadFFresh,s2Step321HeadGvFresh,s2Step321HeadFvFresh]=
    some (s2Step321HeadFvAfter,⟨s2Step321HeadFOut,s2Step321HeadGOut,s2Step321HeadFvOut,s2Step321HeadGvOut⟩,(growRow 769 s2Step321HeadGFresh ++ (growRow 768 s2Step321HeadFFresh ++ (growRow 771 s2Step321HeadGvFresh ++ (growRow 770 s2Step321HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step321HeadBank_rows]
  rfl

private theorem s2Step321Front_checked : compileHmrSourceFrontLog s2Step321EntryFBefore s2Step321FrontBank 110 176 ⟨110,110,176,176⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step321FrontLog=some s2Step321FrontPlan := by
  have pairEq : s2Step321FrontPair=⟨s2Step321HeadFRow,s2Step321HeadGRow,s2Step321HeadFvRow,s2Step321HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step321FrontHead=⟨s2Step321ExitFRow,s2Step321ExitGRow,s2Step321ExitFvRow,s2Step321ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step321Add0A=s2Step321FrontHead.f.wires := by decide +kernel
  have gEq : s2Step321Add0B=s2Step321FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step321Add1A=s2Step321FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step321Add1B=s2Step321FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step321EntryFBefore s2Step321FrontBank 110 176 ⟨110,110,176,176⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step321FrontLog s2Step321FrontPlan
  · exact s2Step321Front_entry
  · exact s2Step321EntryBank_checked
  · exact s2Step321Front_sigma
  · rfl
  · exact s2Step321Front_branch
  · rfl
  · simpa only [s2Step321FrontPlan,pairEq] using s2Step321HeadBank_checked
  · simpa only [s2Step321FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step321F4_checked
  · exact s2Step321Counter_checked
  · rfl
  · simpa only [s2Step321FrontPlan,headEq] using s2Step321ExitBank_checked

private theorem s2Step321Complete_explicit_checked : compileHmrEarlyStepLog s2Step321EntryFBefore s2Step321FrontBank 110 176 ⟨110,110,176,176⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] 59 s2Step321CompleteLog=some s2Step321CompletePlan := by
  let Q := s2Step321EarlyControlPlan
  have hq := s2Step321EarlyControl_plan_checked
  have fv1 : s2Step321CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step321CompleteOut.fv.payload[2]?.getD s2Step321CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step321CompleteOut.fv.payload[3]?.getD s2Step321CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step321CompleteOut.fv.payload[4]?.getD s2Step321CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step321EntryFBefore s2Step321EarlyControlArena s2Step321FrontBank 110 176 ⟨110,110,176,176⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] 59 s2Step321CompleteLog s2Step321FrontPlan Q
    s2Step321Front_checked s2Step321Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step321Complete_owned s2Step321Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step321EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] 777 830 s2Step321CompleteOut.fv.second (s2Step321CompleteOut.fv.payload[2]?.getD s2Step321CompleteOut.fv.sign) (s2Step321CompleteOut.fv.payload[3]?.getD s2Step321CompleteOut.fv.sign) (s2Step321CompleteOut.fv.payload[4]?.getD s2Step321CompleteOut.fv.sign) 807 59 s2Step321EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep321Arena : Arena := s2Step321EntryFBefore
def s2PrivateStep321Bank : WindowBank := s2Step321FrontBank
def s2PrivateStep321Spec : HmrSourceWalkStepLog := ⟨110,176,⟨110,110,176,176⟩,59,.early s2Step321CompleteLog⟩
def s2PrivateStep321Plan : HmrSourceStepPlan := .early s2Step321CompletePlan
theorem s2PrivateStep321_source : s2PrivateStep321Spec=s2ObservedLogs320[1] := rfl
theorem s2PrivateStep321_checked : compileHmrSourceStepLog s2PrivateStep321Arena s2PrivateStep321Bank
    s2PrivateStep321Spec.fgWidth s2PrivateStep321Spec.vWidth s2PrivateStep321Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908]
    6 498 321 s2PrivateStep321Spec.need none s2PrivateStep321Spec.log=some s2PrivateStep321Plan := by
  change compileHmrSourceStepLog s2Step321EntryFBefore s2Step321FrontBank 110 176 ⟨110,110,176,176⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908] 6 498 321 59 none (.early s2Step321CompleteLog)=some (.early s2Step321CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 321<498)]
  rw [s2Step321Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
