import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep321
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

private def s2Step323CompleteMoves : List (Wire × Wire) := [(885,108)]

private def s2Step323EarlyControlLog : HmrEarlyControlLog := ⟨[885, 787, 827, 867, 879],[834],[806],[784, 800, 894, 896, 901, 903],[]⟩

private def s2Step323FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[879], [867], [787], [827]],[[], [], [], []]⟩,[830],[807],[834],[806],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[834, 806, 784, 800]⟩

private def s2Step323CompleteLog : HmrEarlyStepLog := ⟨s2Step323FrontLog,s2Step323CompleteMoves,s2Step323EarlyControlLog⟩

private def s2Step323ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩

private def s2Step323ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩

private def s2Step323ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩

private def s2Step323ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private def s2Step323FrontOut : WindowBank := ⟨s2Step323ExitFOut,s2Step323ExitGOut,s2Step323ExitFvOut,s2Step323ExitGvOut⟩

private def s2Step323CompleteOut : WindowBank := s2Step323FrontOut.repacked s2Step323CompleteMoves

private def s2Step323EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step323EarlyControlPositiveArena,[834],s2Step323EarlyControlEqualityArena,[806],⟨⟨830,false⟩,[⟨⟨834,false⟩,806⟩]⟩⟩

private def s2Step323EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,885⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,827⟩,⟨⟨776,false⟩,867⟩,⟨⟨777,false⟩,879⟩]⟩

private def s2Step323EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step323EarlyControlZeroArena,s2Step323EarlyControlZeroPlan,s2Step323EarlyControlClassPlan,s2Step323EarlyControlFlagArena,s2Step323EarlyControlFittedArena,s2Step323EarlyControlHistoryArena,s2Step323EarlyControlSigmaArena,s2Step323EarlyControlOutputArena,s2Step323EarlyControlLog⟩

private def s2Step323CounterWork : List Wire := [834, 806, 784, 800]

private theorem s2Step323Counter_bounded : s2Step323CounterWork.toFinset⊆arenaWires := by norm_num [s2Step323CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step323HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323CounterDuring : Arena := ⟨s2Step323HeadFvAfter.live∪s2Step323CounterWork.toFinset,Finset.union_subset s2Step323HeadFvAfter.bounded s2Step323Counter_bounded⟩

private def s2Step323EntryFFresh : List Wire := []

private def s2Step323EntryFvFresh : List Wire := []

private def s2Step323EntryGFresh : List Wire := []

private def s2Step323EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323EntryGvAfter : Arena := s2Step323EntryFBefore

private def s2Step323EntryGvFresh : List Wire := []

private def s2Step323ExitFExtra : List Wire := [867]

private def s2Step323ExitFvExtra : List Wire := [827]

private def s2Step323ExitGExtra : List Wire := [108, 879]

private def s2Step323ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323ExitGvExtra : List Wire := [787]

private def s2Step323Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step323Add0_bounded : s2Step323Add0Work.toFinset⊆arenaWires := by
  have h : s2Step323Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step323Add0During : Arena := ⟨s2Step323Add0Arena.live∪s2Step323Add0Work.toFinset,Finset.union_subset s2Step323Add0Arena.bounded s2Step323Add0_bounded⟩

private def s2Step323Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step323Add1_bounded : s2Step323Add1Work.toFinset⊆arenaWires := by
  have h : s2Step323Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step323Add1During : Arena := ⟨s2Step323Add1Arena.live∪s2Step323Add1Work.toFinset,Finset.union_subset s2Step323Add1Arena.bounded s2Step323Add1_bounded⟩

private def s2Step323F4FlagArena : Arena := ⟨s2Step323HeadFvAfter.live∪{834},Finset.union_subset s2Step323HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step323F4Plan : HmrHybridF4Plan := ⟨s2Step323F4FlagArena,[834],s2Step323Add0Arena,[806],s2Step323Add0During,s2Step323Add0Work,s2Step323Add1During,s2Step323Add1Work⟩

private def s2Step323HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 867],768⟩

private def s2Step323HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 827],770⟩

private def s2Step323HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 879],769⟩

private def s2Step323HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 787],771⟩

private def s2Step323FrontHead : WindowBank := ⟨s2Step323HeadFOut,s2Step323HeadGOut,s2Step323HeadFvOut,s2Step323HeadGvOut⟩

private def s2Step323EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩

private def s2Step323EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩

private def s2Step323EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],769⟩

private def s2Step323EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private def s2Step323FrontPair : WindowBank := ⟨s2Step323EntryFOut,s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut⟩

private def s2Step323FrontSigmaArena : Arena := ⟨s2Step323EntryGvAfter.live∪{830},Finset.union_subset s2Step323EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step323HeadFFresh : List Wire := [867]

private def s2Step323HeadFvFresh : List Wire := [827]

private def s2Step323HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323HeadGFresh : List Wire := [879]

private def s2Step323HeadGvFresh : List Wire := [787]

private def s2Step323FrontPlan : HmrSourceFront := ⟨s2Step323EntryGvAfter,s2Step323FrontPair,(growRow 768 s2Step323EntryFFresh ++ (growRow 769 s2Step323EntryGFresh ++ (growRow 770 s2Step323EntryFvFresh ++ (growRow 771 s2Step323EntryGvFresh ++ [])))),s2Step323FrontSigmaArena,[830],s2Step323HeadGBefore,[807],
  s2Step323HeadFvAfter,s2Step323FrontHead,(growRow 769 s2Step323HeadGFresh ++ (growRow 768 s2Step323HeadFFresh ++ (growRow 771 s2Step323HeadGvFresh ++ (growRow 770 s2Step323HeadFvFresh ++ [])))),s2Step323F4Plan,s2Step323CounterDuring,s2Step323CounterWork,s2Step323ExitGvAfter,s2Step323FrontOut,(shrinkRow 769 s2Step323ExitGExtra ++ (shrinkRow 768 s2Step323ExitFExtra ++ (shrinkRow 770 s2Step323ExitFvExtra ++ (shrinkRow 771 s2Step323ExitGvExtra ++ []))))⟩

private def s2Step323CompletePlan : HmrEarlyStepPlan := ⟨s2Step323FrontPlan,s2Step323EarlyControlArena,s2Step323EarlyControlPlan,s2Step323CompleteMoves⟩

private theorem s2Step323Complete_apart : List.Disjoint (s2Step323CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [830, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step323CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[830, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step323Complete_owned : (s2Step323CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step323EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step323CompleteMoveArena : Arena := ⟨s2Step323ExitGvAfter.live∪{108},Finset.union_subset s2Step323ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step323Complete_repack : s2Step323ExitGvAfter.checkRepack s2Step323CompleteMoves=some s2Step323EarlyControlArena := by
  have owned : 885∈s2Step323ExitGvAfter.live := by norm_num [s2Step323ExitGvAfter,arenaWires]
  have reserve : s2Step323ExitGvAfter.reserve {108}=some s2Step323CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step323ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step323CompleteMoveArena.retireSet {885}=s2Step323EarlyControlArena := by
    unfold Arena.retireSet s2Step323EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step323CompleteMoveArena,s2Step323ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step323CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step323CompleteMoveArena.retireSet {885}).checkRepack []=some s2Step323EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step323EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s2Step323EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_branch : compileHmrBranchRetirement s2Step323EarlyControlSigmaArena 807=some s2Step323EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step323EarlyControl_branchOwned
  · ext q
    simp [s2Step323EarlyControlOutputArena,s2Step323EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step323EarlyControl_classEqualityBorrow : s2Step323EarlyControlPositiveArena.checkBorrow (([830, 834] : List Wire).length-1) s2Step323EarlyControlLog.classWork=some s2Step323EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step323EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step323EarlyControlEqualityArena,s2Step323EarlyControlPositiveArena,s2Step323EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step323EarlyControl_classEqualityOwned : ([830, 834] : List Wire).toFinset⊆s2Step323EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_classEquality : compileHmrEqualityLog s2Step323EarlyControlPositiveArena [830, 834] 0 s2Step323EarlyControlLog.classWork=some (s2Step323EarlyControlEqualityArena,s2Step323EarlyControlLog.classWork,s2Step323EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step323EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step323EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step323EarlyControl_classOwned : ([777, 879, 830] : List Wire).toFinset⊆s2Step323EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_positiveBorrow : s2Step323EarlyControlZeroArena.checkBorrow (1) s2Step323EarlyControlLog.positiveWork=some s2Step323EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step323EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step323EarlyControlPositiveArena,s2Step323EarlyControlZeroArena,s2Step323EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step323EarlyControl_class : compileHmrSourceClassLog s2Step323EarlyControlZeroArena false 777 s2Step323EarlyControlZeroPlan.top 0 830 s2Step323EarlyControlLog.positiveWork s2Step323EarlyControlLog.classWork=some s2Step323EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step323EarlyControlClassPlan s2Step323EarlyControlZeroArena false 777 s2Step323EarlyControlZeroPlan.top 0 830
  constructor
  · decide +kernel
  · exact s2Step323EarlyControl_classOwned
  · exact s2Step323EarlyControl_positiveBorrow
  · exact s2Step323EarlyControl_classEquality

private theorem s2Step323EarlyControl_entryRecordOwned : ([807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step323EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_entrySigmaOwned : ([830, 254] : List Wire).toFinset⊆s2Step323EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_fitBorrow : s2Step323EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step323EarlyControlLog.recordFresh=some s2Step323EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step323EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step323EarlyControlFittedArena,s2Step323EarlyControlFlagArena,s2Step323EarlyControlLog,arenaWires]

private theorem s2Step323EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step323EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_fit : compileHmrRecordGrowLog s2Step323EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step323EarlyControlLog.recordFresh=some s2Step323EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step323EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step323EarlyControl_fitBorrow

private theorem s2Step323EarlyControl_flagsBorrow : s2Step323EarlyControlEqualityArena.checkBorrow (6) s2Step323EarlyControlLog.flagWork=some s2Step323EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step323EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step323EarlyControlFlagArena,s2Step323EarlyControlEqualityArena,s2Step323EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step323EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step323EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_flags : compileHmrFlagsLog s2Step323EarlyControlClassPlan.equalityArena s2Step323EarlyControlClassPlan.equality.top 253 252 251 s2Step323EarlyControlLog.flagWork=some s2Step323EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step323EarlyControl_flagsOwned⟩
  · exact s2Step323EarlyControl_flagsBorrow

private theorem s2Step323EarlyControl_historyBorrow : s2Step323EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step323EarlyControlLog.recordFresh=some s2Step323EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step323EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step323EarlyControlHistoryArena,s2Step323EarlyControlArena,s2Step323EarlyControlLog,arenaWires]

private theorem s2Step323EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step323EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_history : compileHmrRecordGrowLog s2Step323EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step323EarlyControlLog.recordFresh=some s2Step323EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step323EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step323EarlyControl_historyBorrow

private theorem s2Step323EarlyControl_sigmaOwned : ([254, 830] : List Wire).toFinset⊆s2Step323EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_sigmaReleaseOwned : ([830] : List Wire).toFinset⊆s2Step323EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_sigmaRelease : s2Step323EarlyControlHistoryArena.release {830} (fun _ => false)=some s2Step323EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step323EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step323EarlyControlSigmaArena,s2Step323EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step323EarlyControl_sigma : compileHmrSigmaDropLog s2Step323EarlyControlHistoryArena false 0 0 254 830 []=some s2Step323EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step323EarlyControl_sigmaOwned⟩
  · exact s2Step323EarlyControl_sigmaRelease

private theorem s2Step323EarlyControl_zeroBorrow : s2Step323EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step323EarlyControlLog.zeroWork=some s2Step323EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step323EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step323EarlyControlZeroArena,s2Step323EarlyControlArena,s2Step323EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step323EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step323EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step323EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EarlyControl_zero : compileHmrEqualityLog s2Step323EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step323EarlyControlLog.zeroWork=some (s2Step323EarlyControlZeroArena,s2Step323EarlyControlLog.zeroWork,s2Step323EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step323EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step323EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step323EarlyControl_logged : s2Step323EarlyControlPlan.Logged s2Step323EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 254 253 252 251 807 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step323EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step323EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step323EarlyControl_zero
  · exact s2Step323EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step323EarlyControl_flags
  · exact s2Step323EarlyControl_fit
  · exact s2Step323EarlyControl_history
  · exact s2Step323EarlyControl_sigma
  · exact s2Step323EarlyControl_branch

private theorem s2Step323EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step323EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 254 253 252 251 807 60 s2Step323EarlyControlLog=some s2Step323EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step323EarlyControlPlan s2Step323EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 254 253 252 251 807 60 s2Step323EarlyControl_logged

private def s2Step323EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩

private def s2Step323EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩

private def s2Step323EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],769⟩

private def s2Step323EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private def s2Step323FrontBank : WindowBank := ⟨s2Step323EntryFRow,s2Step323EntryGRow,s2Step323EntryFvRow,s2Step323EntryGvRow⟩

private def s2Step323Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 867, 768]

private def s2Step323Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 879, 769]

private def s2Step323Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 827, 770]

private def s2Step323Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 787, 771]

private theorem s2Step323Counter_apart : Disjoint s2Step323HeadFvAfter.live s2Step323CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step323HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323Counter_borrowed : s2Step323HeadFvAfter.checkBorrow 4 s2Step323CounterWork=some s2Step323CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step323HeadFvAfter s2Step323CounterDuring s2Step323CounterWork.toFinset s2Step323Counter_bounded s2Step323Counter_apart rfl

private theorem s2Step323Counter_owned : (830::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step323HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step323HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323Counter_checked : compileHmrCounterStepLog s2Step323HeadFvAfter true 830 [772, 773, 774, 775, 776, 777] s2Step323CounterWork=some s2Step323CounterDuring := by
  have owned : ∀q∈830::[772, 773, 774, 775, 776, 777],q∈s2Step323HeadFvAfter.live := fun q hq => s2Step323Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step323Counter_borrowed

private def s2Step323EntryFAfter : Arena := s2Step323EntryFBefore

private theorem s2Step323EntryBank_incomingDistinct : ([s2Step323EntryFRow,s2Step323EntryGRow,s2Step323EntryFvRow,s2Step323EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323EntryF_Incoming : rowsOwned s2Step323EntryFBefore [s2Step323EntryFRow,s2Step323EntryGRow,s2Step323EntryFvRow,s2Step323EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323EntryFRow,s2Step323EntryGRow,s2Step323EntryFvRow,s2Step323EntryGvRow] 0 s2Step323EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323EntryBank_outgoingOwned : rowsOwned s2Step323EntryGvAfter [s2Step323EntryFOut,s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step323EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323EntryF_Outgoing : rowsOwned s2Step323EntryGvAfter [s2Step323EntryFOut,s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut] :=
  hmrRows_owned_drop s2Step323EntryGvAfter [s2Step323EntryFOut,s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut] 0 s2Step323EntryBank_outgoingOwned

private theorem s2Step323EntryF_distinct : (s2Step323EntryFRow.sign::s2Step323EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323EntryF_owned : (s2Step323EntryFRow.sign::s2Step323EntryFRow.payload).toFinset⊆s2Step323EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EntryF_reserved : s2Step323EntryFBefore.reserve s2Step323EntryFFresh.toFinset=some s2Step323EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step323EntryFFresh,arenaWires]
  · norm_num [s2Step323EntryFBefore,s2Step323EntryFFresh,arenaWires]
  · simp only [s2Step323EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step323EntryF_checked : planRowResizeLog s2Step323EntryFBefore s2Step323EntryFRow 109 s2Step323EntryFFresh=
    some (s2Step323EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩,growRow 768 s2Step323EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step323EntryFBefore s2Step323EntryFAfter s2Step323EntryFRow 109 s2Step323EntryFFresh
    s2Step323EntryF_distinct s2Step323EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step323EntryF_reserved
  have rowEq : WindowRow.mk (s2Step323EntryFRow.payload++s2Step323EntryFFresh) s2Step323EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step323EntryFvAfter : Arena := s2Step323EntryFBefore

private def s2Step323EntryFvBefore : Arena := s2Step323EntryFBefore

private theorem s2Step323EntryFv_Incoming : rowsOwned s2Step323EntryFvBefore [s2Step323EntryFvRow,s2Step323EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323EntryFRow,s2Step323EntryGRow,s2Step323EntryFvRow,s2Step323EntryGvRow] 2 s2Step323EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323EntryFv_Outgoing : rowsOwned s2Step323EntryGvAfter [s2Step323EntryFvOut,s2Step323EntryGvOut] :=
  hmrRows_owned_drop s2Step323EntryGvAfter [s2Step323EntryFOut,s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut] 2 s2Step323EntryBank_outgoingOwned

private theorem s2Step323EntryFv_distinct : (s2Step323EntryFvRow.sign::s2Step323EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323EntryFv_owned : (s2Step323EntryFvRow.sign::s2Step323EntryFvRow.payload).toFinset⊆s2Step323EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EntryFv_reserved : s2Step323EntryFvBefore.reserve s2Step323EntryFvFresh.toFinset=some s2Step323EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step323EntryFvFresh,arenaWires]
  · norm_num [s2Step323EntryFvBefore,s2Step323EntryFBefore,s2Step323EntryFvFresh,arenaWires]
  · simp only [s2Step323EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step323EntryFv_checked : planRowResizeLog s2Step323EntryFvBefore s2Step323EntryFvRow 177 s2Step323EntryFvFresh=
    some (s2Step323EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩,growRow 770 s2Step323EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step323EntryFvBefore s2Step323EntryFvAfter s2Step323EntryFvRow 177 s2Step323EntryFvFresh
    s2Step323EntryFv_distinct s2Step323EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step323EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step323EntryFvRow.payload++s2Step323EntryFvFresh) s2Step323EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step323EntryGAfter : Arena := s2Step323EntryFBefore

private def s2Step323EntryGBefore : Arena := s2Step323EntryFBefore

private theorem s2Step323EntryG_Incoming : rowsOwned s2Step323EntryGBefore [s2Step323EntryGRow,s2Step323EntryFvRow,s2Step323EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323EntryFRow,s2Step323EntryGRow,s2Step323EntryFvRow,s2Step323EntryGvRow] 1 s2Step323EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323EntryG_Outgoing : rowsOwned s2Step323EntryGvAfter [s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut] :=
  hmrRows_owned_drop s2Step323EntryGvAfter [s2Step323EntryFOut,s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut] 1 s2Step323EntryBank_outgoingOwned

private theorem s2Step323EntryG_distinct : (s2Step323EntryGRow.sign::s2Step323EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323EntryG_owned : (s2Step323EntryGRow.sign::s2Step323EntryGRow.payload).toFinset⊆s2Step323EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EntryG_reserved : s2Step323EntryGBefore.reserve s2Step323EntryGFresh.toFinset=some s2Step323EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step323EntryGFresh,arenaWires]
  · norm_num [s2Step323EntryGBefore,s2Step323EntryFBefore,s2Step323EntryGFresh,arenaWires]
  · simp only [s2Step323EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step323EntryG_checked : planRowResizeLog s2Step323EntryGBefore s2Step323EntryGRow 109 s2Step323EntryGFresh=
    some (s2Step323EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],769⟩,growRow 769 s2Step323EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step323EntryGBefore s2Step323EntryGAfter s2Step323EntryGRow 109 s2Step323EntryGFresh
    s2Step323EntryG_distinct s2Step323EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step323EntryG_reserved
  have rowEq : WindowRow.mk (s2Step323EntryGRow.payload++s2Step323EntryGFresh) s2Step323EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step323EntryGvBefore : Arena := s2Step323EntryFBefore

private theorem s2Step323EntryGv_Incoming : rowsOwned s2Step323EntryGvBefore [s2Step323EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323EntryFRow,s2Step323EntryGRow,s2Step323EntryFvRow,s2Step323EntryGvRow] 3 s2Step323EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323EntryGv_Outgoing : rowsOwned s2Step323EntryGvAfter [s2Step323EntryGvOut] :=
  hmrRows_owned_drop s2Step323EntryGvAfter [s2Step323EntryFOut,s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut] 3 s2Step323EntryBank_outgoingOwned

private theorem s2Step323EntryGv_distinct : (s2Step323EntryGvRow.sign::s2Step323EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323EntryGv_owned : (s2Step323EntryGvRow.sign::s2Step323EntryGvRow.payload).toFinset⊆s2Step323EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323EntryGv_reserved : s2Step323EntryGvBefore.reserve s2Step323EntryGvFresh.toFinset=some s2Step323EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step323EntryGvFresh,arenaWires]
  · norm_num [s2Step323EntryGvBefore,s2Step323EntryFBefore,s2Step323EntryGvFresh,arenaWires]
  · simp only [s2Step323EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step323EntryGv_checked : planRowResizeLog s2Step323EntryGvBefore s2Step323EntryGvRow 177 s2Step323EntryGvFresh=
    some (s2Step323EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩,growRow 771 s2Step323EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step323EntryGvBefore s2Step323EntryGvAfter s2Step323EntryGvRow 177 s2Step323EntryGvFresh
    s2Step323EntryGv_distinct s2Step323EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step323EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step323EntryGvRow.payload++s2Step323EntryGvFresh) s2Step323EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step323EntryBank_rows : planWindowRowsLog s2Step323EntryFBefore [(s2Step323EntryFRow,109),(s2Step323EntryGRow,109),(s2Step323EntryFvRow,177),(s2Step323EntryGvRow,177)] [s2Step323EntryFFresh,s2Step323EntryGFresh,s2Step323EntryFvFresh,s2Step323EntryGvFresh]=
    some (s2Step323EntryGvAfter,[s2Step323EntryFOut,s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut],(growRow 768 s2Step323EntryFFresh ++ (growRow 769 s2Step323EntryGFresh ++ (growRow 770 s2Step323EntryFvFresh ++ (growRow 771 s2Step323EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step323EntryGvAfter [] []=some (s2Step323EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step323EntryGvBefore s2Step323EntryGvAfter s2Step323EntryGvAfter
    s2Step323EntryGvRow s2Step323EntryGvOut 177 s2Step323EntryGvFresh [] [] []
    (growRow 771 s2Step323EntryGvFresh) ([]) s2Step323EntryGv_Incoming s2Step323EntryGv_checked h4 s2Step323EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step323EntryFvBefore s2Step323EntryFvAfter s2Step323EntryGvAfter
    s2Step323EntryFvRow s2Step323EntryFvOut 177 s2Step323EntryFvFresh [(s2Step323EntryGvRow,177)] [s2Step323EntryGvFresh] [s2Step323EntryGvOut]
    (growRow 770 s2Step323EntryFvFresh) ((growRow 771 s2Step323EntryGvFresh ++ [])) s2Step323EntryFv_Incoming s2Step323EntryFv_checked h3 s2Step323EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step323EntryGBefore s2Step323EntryGAfter s2Step323EntryGvAfter
    s2Step323EntryGRow s2Step323EntryGOut 109 s2Step323EntryGFresh [(s2Step323EntryFvRow,177),(s2Step323EntryGvRow,177)] [s2Step323EntryFvFresh,s2Step323EntryGvFresh] [s2Step323EntryFvOut,s2Step323EntryGvOut]
    (growRow 769 s2Step323EntryGFresh) ((growRow 770 s2Step323EntryFvFresh ++ (growRow 771 s2Step323EntryGvFresh ++ []))) s2Step323EntryG_Incoming s2Step323EntryG_checked h2 s2Step323EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step323EntryFBefore s2Step323EntryFAfter s2Step323EntryGvAfter
    s2Step323EntryFRow s2Step323EntryFOut 109 s2Step323EntryFFresh [(s2Step323EntryGRow,109),(s2Step323EntryFvRow,177),(s2Step323EntryGvRow,177)] [s2Step323EntryGFresh,s2Step323EntryFvFresh,s2Step323EntryGvFresh] [s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut]
    (growRow 768 s2Step323EntryFFresh) ((growRow 769 s2Step323EntryGFresh ++ (growRow 770 s2Step323EntryFvFresh ++ (growRow 771 s2Step323EntryGvFresh ++ [])))) s2Step323EntryF_Incoming s2Step323EntryF_checked h1 s2Step323EntryF_Outgoing
  exact h0

private theorem s2Step323EntryBank_checked : compileHmrBankResizeLog .entry s2Step323EntryFBefore ⟨s2Step323EntryFRow,s2Step323EntryGRow,s2Step323EntryFvRow,s2Step323EntryGvRow⟩ ⟨109,109,177,177⟩ [s2Step323EntryFFresh,s2Step323EntryGFresh,s2Step323EntryFvFresh,s2Step323EntryGvFresh]=
    some (s2Step323EntryGvAfter,⟨s2Step323EntryFOut,s2Step323EntryGOut,s2Step323EntryFvOut,s2Step323EntryGvOut⟩,(growRow 768 s2Step323EntryFFresh ++ (growRow 769 s2Step323EntryGFresh ++ (growRow 770 s2Step323EntryFvFresh ++ (growRow 771 s2Step323EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step323EntryBank_rows]
  rfl

private def s2Step323ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323ExitFBefore : Arena := s2Step323ExitGAfter

private def s2Step323ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 867],768⟩

private def s2Step323ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 827],770⟩

private def s2Step323ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 879],769⟩

private def s2Step323ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 787],771⟩

private theorem s2Step323ExitBank_incomingDistinct : ([s2Step323ExitGRow,s2Step323ExitFRow,s2Step323ExitFvRow,s2Step323ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323ExitF_Incoming : rowsOwned s2Step323ExitFBefore [s2Step323ExitFRow,s2Step323ExitFvRow,s2Step323ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323ExitGRow,s2Step323ExitFRow,s2Step323ExitFvRow,s2Step323ExitGvRow] 1 s2Step323ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323ExitFBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323ExitBank_outgoingOwned : rowsOwned s2Step323ExitGvAfter [s2Step323ExitGOut,s2Step323ExitFOut,s2Step323ExitFvOut,s2Step323ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step323ExitGvAfter (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323ExitF_Outgoing : rowsOwned s2Step323ExitGvAfter [s2Step323ExitFOut,s2Step323ExitFvOut,s2Step323ExitGvOut] :=
  hmrRows_owned_drop s2Step323ExitGvAfter [s2Step323ExitGOut,s2Step323ExitFOut,s2Step323ExitFvOut,s2Step323ExitGvOut] 1 s2Step323ExitBank_outgoingOwned

private theorem s2Step323ExitF_distinct : (s2Step323ExitFRow.sign::s2Step323ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323ExitF_owned : (s2Step323ExitFRow.sign::s2Step323ExitFRow.payload).toFinset⊆s2Step323ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323ExitFBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323ExitF_retired : s2Step323ExitFBefore.retireSet s2Step323ExitFExtra.toFinset=s2Step323ExitFAfter := by
  unfold Arena.retireSet s2Step323ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step323ExitFBefore,s2Step323ExitGAfter,s2Step323ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step323ExitF_checked : planRowResizeLog s2Step323ExitFBefore s2Step323ExitFRow 109 []=
    some (s2Step323ExitFAfter,s2Step323ExitFOut,shrinkRow 768 s2Step323ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step323ExitFBefore s2Step323ExitFRow 109 s2Step323ExitF_distinct s2Step323ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step323ExitFRow.payload.take 109) s2Step323ExitFRow.sign=s2Step323ExitFOut := by decide +kernel
  have hi : s2Step323ExitFRow.payload.drop 109=s2Step323ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step323ExitF_retired] at result
  exact result

private def s2Step323ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323ExitFvBefore : Arena := s2Step323ExitFAfter

private theorem s2Step323ExitFv_Incoming : rowsOwned s2Step323ExitFvBefore [s2Step323ExitFvRow,s2Step323ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323ExitGRow,s2Step323ExitFRow,s2Step323ExitFvRow,s2Step323ExitGvRow] 2 s2Step323ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323ExitFvBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323ExitFv_Outgoing : rowsOwned s2Step323ExitGvAfter [s2Step323ExitFvOut,s2Step323ExitGvOut] :=
  hmrRows_owned_drop s2Step323ExitGvAfter [s2Step323ExitGOut,s2Step323ExitFOut,s2Step323ExitFvOut,s2Step323ExitGvOut] 2 s2Step323ExitBank_outgoingOwned

private theorem s2Step323ExitFv_distinct : (s2Step323ExitFvRow.sign::s2Step323ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323ExitFv_owned : (s2Step323ExitFvRow.sign::s2Step323ExitFvRow.payload).toFinset⊆s2Step323ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323ExitFvBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323ExitFv_retired : s2Step323ExitFvBefore.retireSet s2Step323ExitFvExtra.toFinset=s2Step323ExitFvAfter := by
  unfold Arena.retireSet s2Step323ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step323ExitFvBefore,s2Step323ExitFAfter,s2Step323ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step323ExitFv_checked : planRowResizeLog s2Step323ExitFvBefore s2Step323ExitFvRow 177 []=
    some (s2Step323ExitFvAfter,s2Step323ExitFvOut,shrinkRow 770 s2Step323ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step323ExitFvBefore s2Step323ExitFvRow 177 s2Step323ExitFv_distinct s2Step323ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step323ExitFvRow.payload.take 177) s2Step323ExitFvRow.sign=s2Step323ExitFvOut := by decide +kernel
  have hi : s2Step323ExitFvRow.payload.drop 177=s2Step323ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step323ExitFv_retired] at result
  exact result

private def s2Step323ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step323ExitG_Incoming : rowsOwned s2Step323ExitGBefore [s2Step323ExitGRow,s2Step323ExitFRow,s2Step323ExitFvRow,s2Step323ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323ExitGRow,s2Step323ExitFRow,s2Step323ExitFvRow,s2Step323ExitGvRow] 0 s2Step323ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323ExitG_Outgoing : rowsOwned s2Step323ExitGvAfter [s2Step323ExitGOut,s2Step323ExitFOut,s2Step323ExitFvOut,s2Step323ExitGvOut] :=
  hmrRows_owned_drop s2Step323ExitGvAfter [s2Step323ExitGOut,s2Step323ExitFOut,s2Step323ExitFvOut,s2Step323ExitGvOut] 0 s2Step323ExitBank_outgoingOwned

private theorem s2Step323ExitG_distinct : (s2Step323ExitGRow.sign::s2Step323ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323ExitG_owned : (s2Step323ExitGRow.sign::s2Step323ExitGRow.payload).toFinset⊆s2Step323ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323ExitG_retired : s2Step323ExitGBefore.retireSet s2Step323ExitGExtra.toFinset=s2Step323ExitGAfter := by
  unfold Arena.retireSet s2Step323ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step323ExitGBefore,s2Step323ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step323ExitG_checked : planRowResizeLog s2Step323ExitGBefore s2Step323ExitGRow 108 []=
    some (s2Step323ExitGAfter,s2Step323ExitGOut,shrinkRow 769 s2Step323ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step323ExitGBefore s2Step323ExitGRow 108 s2Step323ExitG_distinct s2Step323ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step323ExitGRow.payload.take 108) s2Step323ExitGRow.sign=s2Step323ExitGOut := by decide +kernel
  have hi : s2Step323ExitGRow.payload.drop 108=s2Step323ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step323ExitG_retired] at result
  exact result

private def s2Step323ExitGvBefore : Arena := s2Step323ExitFvAfter

private theorem s2Step323ExitGv_Incoming : rowsOwned s2Step323ExitGvBefore [s2Step323ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323ExitGRow,s2Step323ExitFRow,s2Step323ExitFvRow,s2Step323ExitGvRow] 3 s2Step323ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323ExitGvBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323ExitGv_Outgoing : rowsOwned s2Step323ExitGvAfter [s2Step323ExitGvOut] :=
  hmrRows_owned_drop s2Step323ExitGvAfter [s2Step323ExitGOut,s2Step323ExitFOut,s2Step323ExitFvOut,s2Step323ExitGvOut] 3 s2Step323ExitBank_outgoingOwned

private theorem s2Step323ExitGv_distinct : (s2Step323ExitGvRow.sign::s2Step323ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323ExitGv_owned : (s2Step323ExitGvRow.sign::s2Step323ExitGvRow.payload).toFinset⊆s2Step323ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323ExitGvBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323ExitGv_retired : s2Step323ExitGvBefore.retireSet s2Step323ExitGvExtra.toFinset=s2Step323ExitGvAfter := by
  unfold Arena.retireSet s2Step323ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step323ExitGvBefore,s2Step323ExitFvAfter,s2Step323ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step323ExitGv_checked : planRowResizeLog s2Step323ExitGvBefore s2Step323ExitGvRow 177 []=
    some (s2Step323ExitGvAfter,s2Step323ExitGvOut,shrinkRow 771 s2Step323ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step323ExitGvBefore s2Step323ExitGvRow 177 s2Step323ExitGv_distinct s2Step323ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step323ExitGvRow.payload.take 177) s2Step323ExitGvRow.sign=s2Step323ExitGvOut := by decide +kernel
  have hi : s2Step323ExitGvRow.payload.drop 177=s2Step323ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step323ExitGv_retired] at result
  exact result

private theorem s2Step323ExitBank_rows : planWindowRowsLog s2Step323ExitGBefore [(s2Step323ExitGRow,108),(s2Step323ExitFRow,109),(s2Step323ExitFvRow,177),(s2Step323ExitGvRow,177)] [[],[],[],[]]=
    some (s2Step323ExitGvAfter,[s2Step323ExitGOut,s2Step323ExitFOut,s2Step323ExitFvOut,s2Step323ExitGvOut],(shrinkRow 769 s2Step323ExitGExtra ++ (shrinkRow 768 s2Step323ExitFExtra ++ (shrinkRow 770 s2Step323ExitFvExtra ++ (shrinkRow 771 s2Step323ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step323ExitGvAfter [] []=some (s2Step323ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step323ExitGvBefore s2Step323ExitGvAfter s2Step323ExitGvAfter
    s2Step323ExitGvRow s2Step323ExitGvOut 177 [] [] [] []
    (shrinkRow 771 s2Step323ExitGvExtra) ([]) s2Step323ExitGv_Incoming s2Step323ExitGv_checked h4 s2Step323ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step323ExitFvBefore s2Step323ExitFvAfter s2Step323ExitGvAfter
    s2Step323ExitFvRow s2Step323ExitFvOut 177 [] [(s2Step323ExitGvRow,177)] [[]] [s2Step323ExitGvOut]
    (shrinkRow 770 s2Step323ExitFvExtra) ((shrinkRow 771 s2Step323ExitGvExtra ++ [])) s2Step323ExitFv_Incoming s2Step323ExitFv_checked h3 s2Step323ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step323ExitFBefore s2Step323ExitFAfter s2Step323ExitGvAfter
    s2Step323ExitFRow s2Step323ExitFOut 109 [] [(s2Step323ExitFvRow,177),(s2Step323ExitGvRow,177)] [[],[]] [s2Step323ExitFvOut,s2Step323ExitGvOut]
    (shrinkRow 768 s2Step323ExitFExtra) ((shrinkRow 770 s2Step323ExitFvExtra ++ (shrinkRow 771 s2Step323ExitGvExtra ++ []))) s2Step323ExitF_Incoming s2Step323ExitF_checked h2 s2Step323ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step323ExitGBefore s2Step323ExitGAfter s2Step323ExitGvAfter
    s2Step323ExitGRow s2Step323ExitGOut 108 [] [(s2Step323ExitFRow,109),(s2Step323ExitFvRow,177),(s2Step323ExitGvRow,177)] [[],[],[]] [s2Step323ExitFOut,s2Step323ExitFvOut,s2Step323ExitGvOut]
    (shrinkRow 769 s2Step323ExitGExtra) ((shrinkRow 768 s2Step323ExitFExtra ++ (shrinkRow 770 s2Step323ExitFvExtra ++ (shrinkRow 771 s2Step323ExitGvExtra ++ [])))) s2Step323ExitG_Incoming s2Step323ExitG_checked h1 s2Step323ExitG_Outgoing
  exact h0

private theorem s2Step323ExitBank_checked : compileHmrBankResizeLog .exit s2Step323ExitGBefore ⟨s2Step323ExitFRow,s2Step323ExitGRow,s2Step323ExitFvRow,s2Step323ExitGvRow⟩ ⟨109,108,177,177⟩ [[],[],[],[]]=
    some (s2Step323ExitGvAfter,⟨s2Step323ExitFOut,s2Step323ExitGOut,s2Step323ExitFvOut,s2Step323ExitGvOut⟩,(shrinkRow 769 s2Step323ExitGExtra ++ (shrinkRow 768 s2Step323ExitFExtra ++ (shrinkRow 770 s2Step323ExitFvExtra ++ (shrinkRow 771 s2Step323ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step323ExitBank_rows]
  rfl

private theorem s2Step323Add0_apart : Disjoint s2Step323Add0Arena.live s2Step323Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step323Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323Add0_card : s2Step323Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step323Add0_borrowed : s2Step323Add0Arena.checkBorrow (hmrHybridCount s2Step323Add0Arena s2Step323Add0B.length) s2Step323Add0Work=some s2Step323Add0During := by
  have len : s2Step323Add0Work.length=hmrHybridCount s2Step323Add0Arena s2Step323Add0B.length := by
    rw [hmrHybridCount,s2Step323Add0_card]
    decide +kernel
  have nd : s2Step323Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step323Add0Arena s2Step323Add0During s2Step323Add0Work.toFinset s2Step323Add0_bounded s2Step323Add0_apart rfl

private theorem s2Step323Add0_distinct : (834::807::806::(s2Step323Add0A++s2Step323Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323Add0_owned : (834::807::806::(s2Step323Add0A++s2Step323Add0B)).toFinset⊆s2Step323Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step323Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323Add0_checked : compileHmrHybridCinLog s2Step323Add0Arena 807 834 806 s2Step323Add0A s2Step323Add0B s2Step323Add0Work=some s2Step323Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step323Add0Arena s2Step323Add0During 807 834 806 s2Step323Add0A s2Step323Add0B s2Step323Add0Work
    (by decide +kernel) (by decide +kernel) s2Step323Add0_distinct
    (fun q hq => s2Step323Add0_owned (List.mem_toFinset.mpr hq)) s2Step323Add0_borrowed

private theorem s2Step323Add1_apart : Disjoint s2Step323Add1Arena.live s2Step323Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step323Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323Add1_card : s2Step323Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step323Add1_borrowed : s2Step323Add1Arena.checkBorrow (hmrHybridCount s2Step323Add1Arena s2Step323Add1B.length) s2Step323Add1Work=some s2Step323Add1During := by
  have len : s2Step323Add1Work.length=hmrHybridCount s2Step323Add1Arena s2Step323Add1B.length := by
    rw [hmrHybridCount,s2Step323Add1_card]
    decide +kernel
  have nd : s2Step323Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step323Add1Arena s2Step323Add1During s2Step323Add1Work.toFinset s2Step323Add1_bounded s2Step323Add1_apart rfl

private theorem s2Step323Add1_distinct : (834::807::806::(s2Step323Add1A++s2Step323Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323Add1_owned : (834::807::806::(s2Step323Add1A++s2Step323Add1B)).toFinset⊆s2Step323Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step323Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323Add1_checked : compileHmrHybridCinLog s2Step323Add1Arena 807 834 806 s2Step323Add1A s2Step323Add1B s2Step323Add1Work=some s2Step323Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step323Add1Arena s2Step323Add1During 807 834 806 s2Step323Add1A s2Step323Add1B s2Step323Add1Work
    (by decide +kernel) (by decide +kernel) s2Step323Add1_distinct
    (fun q hq => s2Step323Add1_owned (List.mem_toFinset.mpr hq)) s2Step323Add1_borrowed

private theorem s2Step323F4_apart : Disjoint (s2Step323Add0A++s2Step323Add0B).toFinset (s2Step323Add1A++s2Step323Add1B).toFinset := by
  have nd : ((s2Step323Add0A++s2Step323Add0B)++(s2Step323Add1A++s2Step323Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step323F4_carry : s2Step323F4FlagArena.checkBorrow 1 [806]=some s2Step323Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step323F4FlagArena,s2Step323HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step323F4FlagArena,s2Step323HeadFvAfter,s2Step323Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step323F4_distinct : (830::807::834::806::((s2Step323Add0A++s2Step323Add1A)++(s2Step323Add0B++s2Step323Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323F4_flag : s2Step323HeadFvAfter.checkBorrow 1 [834]=some s2Step323F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step323HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step323F4_owned : (830::807::((s2Step323Add0A++s2Step323Add1A)++(s2Step323Add0B++s2Step323Add1B))).toFinset⊆s2Step323HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step323HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323F4_checked : compileHmrHybridF4Log s2Step323HeadFvAfter 830 807 s2Step323Add0A s2Step323Add0B s2Step323Add1A s2Step323Add1B [834] [806] s2Step323Add0Work s2Step323Add1Work=some s2Step323F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step323HeadFvAfter s2Step323F4FlagArena s2Step323Add0Arena s2Step323Add0During s2Step323Add1During 830 807
    s2Step323Add0A s2Step323Add0B s2Step323Add1A s2Step323Add1B [834] [806] s2Step323Add0Work s2Step323Add1Work
    (fun q hq => s2Step323F4_owned (List.mem_toFinset.mpr hq)) s2Step323F4_flag s2Step323F4_carry
    s2Step323F4_distinct s2Step323F4_apart s2Step323Add0_checked s2Step323Add1_checked

private theorem s2Step323Front_branch : s2Step323FrontSigmaArena.checkBorrow 1 [807]=some s2Step323HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step323FrontSigmaArena,s2Step323EntryGvAfter,s2Step323EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step323FrontSigmaArena,s2Step323EntryGvAfter,s2Step323EntryFBefore,s2Step323HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step323Front_entry : HmrFrontEntryValid s2Step323EntryFBefore s2Step323FrontBank 109 177 ⟨109,108,177,177⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step323FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step323EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step323EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step323FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step323Front_sigma : s2Step323EntryGvAfter.checkBorrow 1 [830]=some s2Step323FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step323EntryGvAfter,s2Step323EntryFBefore,arenaWires]
  · rfl

private def s2Step323HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323HeadFBefore : Arena := s2Step323HeadGAfter

private def s2Step323HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩

private def s2Step323HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩

private def s2Step323HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],769⟩

private def s2Step323HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private theorem s2Step323HeadBank_incomingDistinct : ([s2Step323HeadGRow,s2Step323HeadFRow,s2Step323HeadGvRow,s2Step323HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323HeadF_Incoming : rowsOwned s2Step323HeadFBefore [s2Step323HeadFRow,s2Step323HeadGvRow,s2Step323HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323HeadGRow,s2Step323HeadFRow,s2Step323HeadGvRow,s2Step323HeadFvRow] 1 s2Step323HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323HeadBank_outgoingOwned : rowsOwned s2Step323HeadFvAfter [s2Step323HeadGOut,s2Step323HeadFOut,s2Step323HeadGvOut,s2Step323HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step323HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323HeadF_Outgoing : rowsOwned s2Step323HeadFvAfter [s2Step323HeadFOut,s2Step323HeadGvOut,s2Step323HeadFvOut] :=
  hmrRows_owned_drop s2Step323HeadFvAfter [s2Step323HeadGOut,s2Step323HeadFOut,s2Step323HeadGvOut,s2Step323HeadFvOut] 1 s2Step323HeadBank_outgoingOwned

private theorem s2Step323HeadF_distinct : (s2Step323HeadFRow.sign::s2Step323HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323HeadF_owned : (s2Step323HeadFRow.sign::s2Step323HeadFRow.payload).toFinset⊆s2Step323HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323HeadF_reserved : s2Step323HeadFBefore.reserve s2Step323HeadFFresh.toFinset=some s2Step323HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step323HeadFFresh,arenaWires]
  · norm_num [s2Step323HeadFBefore,s2Step323HeadGAfter,s2Step323HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step323HeadFAfter,s2Step323HeadFBefore,s2Step323HeadGAfter,s2Step323HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step323HeadF_checked : planRowResizeLog s2Step323HeadFBefore s2Step323HeadFRow 110 s2Step323HeadFFresh=
    some (s2Step323HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 867],768⟩,growRow 768 s2Step323HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step323HeadFBefore s2Step323HeadFAfter s2Step323HeadFRow 110 s2Step323HeadFFresh
    s2Step323HeadF_distinct s2Step323HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step323HeadF_reserved
  have rowEq : WindowRow.mk (s2Step323HeadFRow.payload++s2Step323HeadFFresh) s2Step323HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 867],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step323HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step323HeadFvBefore : Arena := s2Step323HeadGvAfter

private theorem s2Step323HeadFv_Incoming : rowsOwned s2Step323HeadFvBefore [s2Step323HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323HeadGRow,s2Step323HeadFRow,s2Step323HeadGvRow,s2Step323HeadFvRow] 3 s2Step323HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323HeadFv_Outgoing : rowsOwned s2Step323HeadFvAfter [s2Step323HeadFvOut] :=
  hmrRows_owned_drop s2Step323HeadFvAfter [s2Step323HeadGOut,s2Step323HeadFOut,s2Step323HeadGvOut,s2Step323HeadFvOut] 3 s2Step323HeadBank_outgoingOwned

private theorem s2Step323HeadFv_distinct : (s2Step323HeadFvRow.sign::s2Step323HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323HeadFv_owned : (s2Step323HeadFvRow.sign::s2Step323HeadFvRow.payload).toFinset⊆s2Step323HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323HeadFv_reserved : s2Step323HeadFvBefore.reserve s2Step323HeadFvFresh.toFinset=some s2Step323HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step323HeadFvFresh,arenaWires]
  · norm_num [s2Step323HeadFvBefore,s2Step323HeadGvAfter,s2Step323HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step323HeadFvAfter,s2Step323HeadFvBefore,s2Step323HeadGvAfter,s2Step323HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step323HeadFv_checked : planRowResizeLog s2Step323HeadFvBefore s2Step323HeadFvRow 178 s2Step323HeadFvFresh=
    some (s2Step323HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 827],770⟩,growRow 770 s2Step323HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step323HeadFvBefore s2Step323HeadFvAfter s2Step323HeadFvRow 178 s2Step323HeadFvFresh
    s2Step323HeadFv_distinct s2Step323HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step323HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step323HeadFvRow.payload++s2Step323HeadFvFresh) s2Step323HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step323HeadG_Incoming : rowsOwned s2Step323HeadGBefore [s2Step323HeadGRow,s2Step323HeadFRow,s2Step323HeadGvRow,s2Step323HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323HeadGRow,s2Step323HeadFRow,s2Step323HeadGvRow,s2Step323HeadFvRow] 0 s2Step323HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323HeadG_Outgoing : rowsOwned s2Step323HeadFvAfter [s2Step323HeadGOut,s2Step323HeadFOut,s2Step323HeadGvOut,s2Step323HeadFvOut] :=
  hmrRows_owned_drop s2Step323HeadFvAfter [s2Step323HeadGOut,s2Step323HeadFOut,s2Step323HeadGvOut,s2Step323HeadFvOut] 0 s2Step323HeadBank_outgoingOwned

private theorem s2Step323HeadG_distinct : (s2Step323HeadGRow.sign::s2Step323HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323HeadG_owned : (s2Step323HeadGRow.sign::s2Step323HeadGRow.payload).toFinset⊆s2Step323HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323HeadG_reserved : s2Step323HeadGBefore.reserve s2Step323HeadGFresh.toFinset=some s2Step323HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step323HeadGFresh,arenaWires]
  · norm_num [s2Step323HeadGBefore,s2Step323HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step323HeadGAfter,s2Step323HeadGBefore,s2Step323HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step323HeadG_checked : planRowResizeLog s2Step323HeadGBefore s2Step323HeadGRow 110 s2Step323HeadGFresh=
    some (s2Step323HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 879],769⟩,growRow 769 s2Step323HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step323HeadGBefore s2Step323HeadGAfter s2Step323HeadGRow 110 s2Step323HeadGFresh
    s2Step323HeadG_distinct s2Step323HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step323HeadG_reserved
  have rowEq : WindowRow.mk (s2Step323HeadGRow.payload++s2Step323HeadGFresh) s2Step323HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 879],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step323HeadGvBefore : Arena := s2Step323HeadFAfter

private theorem s2Step323HeadGv_Incoming : rowsOwned s2Step323HeadGvBefore [s2Step323HeadGvRow,s2Step323HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step323HeadGRow,s2Step323HeadFRow,s2Step323HeadGvRow,s2Step323HeadFvRow] 2 s2Step323HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step323HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step323HeadGv_Outgoing : rowsOwned s2Step323HeadFvAfter [s2Step323HeadGvOut,s2Step323HeadFvOut] :=
  hmrRows_owned_drop s2Step323HeadFvAfter [s2Step323HeadGOut,s2Step323HeadFOut,s2Step323HeadGvOut,s2Step323HeadFvOut] 2 s2Step323HeadBank_outgoingOwned

private theorem s2Step323HeadGv_distinct : (s2Step323HeadGvRow.sign::s2Step323HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step323HeadGv_owned : (s2Step323HeadGvRow.sign::s2Step323HeadGvRow.payload).toFinset⊆s2Step323HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step323HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step323HeadGv_reserved : s2Step323HeadGvBefore.reserve s2Step323HeadGvFresh.toFinset=some s2Step323HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step323HeadGvFresh,arenaWires]
  · norm_num [s2Step323HeadGvBefore,s2Step323HeadFAfter,s2Step323HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step323HeadGvAfter,s2Step323HeadGvBefore,s2Step323HeadFAfter,s2Step323HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step323HeadGv_checked : planRowResizeLog s2Step323HeadGvBefore s2Step323HeadGvRow 178 s2Step323HeadGvFresh=
    some (s2Step323HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 787],771⟩,growRow 771 s2Step323HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step323HeadGvBefore s2Step323HeadGvAfter s2Step323HeadGvRow 178 s2Step323HeadGvFresh
    s2Step323HeadGv_distinct s2Step323HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step323HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step323HeadGvRow.payload++s2Step323HeadGvFresh) s2Step323HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step323HeadBank_rows : planWindowRowsLog s2Step323HeadGBefore [(s2Step323HeadGRow,110),(s2Step323HeadFRow,110),(s2Step323HeadGvRow,178),(s2Step323HeadFvRow,178)] [s2Step323HeadGFresh,s2Step323HeadFFresh,s2Step323HeadGvFresh,s2Step323HeadFvFresh]=
    some (s2Step323HeadFvAfter,[s2Step323HeadGOut,s2Step323HeadFOut,s2Step323HeadGvOut,s2Step323HeadFvOut],(growRow 769 s2Step323HeadGFresh ++ (growRow 768 s2Step323HeadFFresh ++ (growRow 771 s2Step323HeadGvFresh ++ (growRow 770 s2Step323HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step323HeadFvAfter [] []=some (s2Step323HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step323HeadFvBefore s2Step323HeadFvAfter s2Step323HeadFvAfter
    s2Step323HeadFvRow s2Step323HeadFvOut 178 s2Step323HeadFvFresh [] [] []
    (growRow 770 s2Step323HeadFvFresh) ([]) s2Step323HeadFv_Incoming s2Step323HeadFv_checked h4 s2Step323HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step323HeadGvBefore s2Step323HeadGvAfter s2Step323HeadFvAfter
    s2Step323HeadGvRow s2Step323HeadGvOut 178 s2Step323HeadGvFresh [(s2Step323HeadFvRow,178)] [s2Step323HeadFvFresh] [s2Step323HeadFvOut]
    (growRow 771 s2Step323HeadGvFresh) ((growRow 770 s2Step323HeadFvFresh ++ [])) s2Step323HeadGv_Incoming s2Step323HeadGv_checked h3 s2Step323HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step323HeadFBefore s2Step323HeadFAfter s2Step323HeadFvAfter
    s2Step323HeadFRow s2Step323HeadFOut 110 s2Step323HeadFFresh [(s2Step323HeadGvRow,178),(s2Step323HeadFvRow,178)] [s2Step323HeadGvFresh,s2Step323HeadFvFresh] [s2Step323HeadGvOut,s2Step323HeadFvOut]
    (growRow 768 s2Step323HeadFFresh) ((growRow 771 s2Step323HeadGvFresh ++ (growRow 770 s2Step323HeadFvFresh ++ []))) s2Step323HeadF_Incoming s2Step323HeadF_checked h2 s2Step323HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step323HeadGBefore s2Step323HeadGAfter s2Step323HeadFvAfter
    s2Step323HeadGRow s2Step323HeadGOut 110 s2Step323HeadGFresh [(s2Step323HeadFRow,110),(s2Step323HeadGvRow,178),(s2Step323HeadFvRow,178)] [s2Step323HeadFFresh,s2Step323HeadGvFresh,s2Step323HeadFvFresh] [s2Step323HeadFOut,s2Step323HeadGvOut,s2Step323HeadFvOut]
    (growRow 769 s2Step323HeadGFresh) ((growRow 768 s2Step323HeadFFresh ++ (growRow 771 s2Step323HeadGvFresh ++ (growRow 770 s2Step323HeadFvFresh ++ [])))) s2Step323HeadG_Incoming s2Step323HeadG_checked h1 s2Step323HeadG_Outgoing
  exact h0

private theorem s2Step323HeadBank_checked : compileHmrBankResizeLog .headroom s2Step323HeadGBefore ⟨s2Step323HeadFRow,s2Step323HeadGRow,s2Step323HeadFvRow,s2Step323HeadGvRow⟩ ⟨110,110,178,178⟩ [s2Step323HeadGFresh,s2Step323HeadFFresh,s2Step323HeadGvFresh,s2Step323HeadFvFresh]=
    some (s2Step323HeadFvAfter,⟨s2Step323HeadFOut,s2Step323HeadGOut,s2Step323HeadFvOut,s2Step323HeadGvOut⟩,(growRow 769 s2Step323HeadGFresh ++ (growRow 768 s2Step323HeadFFresh ++ (growRow 771 s2Step323HeadGvFresh ++ (growRow 770 s2Step323HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step323HeadBank_rows]
  rfl

private theorem s2Step323Front_checked : compileHmrSourceFrontLog s2Step323EntryFBefore s2Step323FrontBank 109 177 ⟨109,108,177,177⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step323FrontLog=some s2Step323FrontPlan := by
  have pairEq : s2Step323FrontPair=⟨s2Step323HeadFRow,s2Step323HeadGRow,s2Step323HeadFvRow,s2Step323HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step323FrontHead=⟨s2Step323ExitFRow,s2Step323ExitGRow,s2Step323ExitFvRow,s2Step323ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step323Add0A=s2Step323FrontHead.f.wires := by decide +kernel
  have gEq : s2Step323Add0B=s2Step323FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step323Add1A=s2Step323FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step323Add1B=s2Step323FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step323EntryFBefore s2Step323FrontBank 109 177 ⟨109,108,177,177⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step323FrontLog s2Step323FrontPlan
  · exact s2Step323Front_entry
  · exact s2Step323EntryBank_checked
  · exact s2Step323Front_sigma
  · rfl
  · exact s2Step323Front_branch
  · rfl
  · simpa only [s2Step323FrontPlan,pairEq] using s2Step323HeadBank_checked
  · simpa only [s2Step323FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step323F4_checked
  · exact s2Step323Counter_checked
  · rfl
  · simpa only [s2Step323FrontPlan,headEq] using s2Step323ExitBank_checked

private theorem s2Step323Complete_explicit_checked : compileHmrEarlyStepLog s2Step323EntryFBefore s2Step323FrontBank 109 177 ⟨109,108,177,177⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step323CompleteLog=some s2Step323CompletePlan := by
  let Q := s2Step323EarlyControlPlan
  have hq := s2Step323EarlyControl_plan_checked
  have fv1 : s2Step323CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step323CompleteOut.fv.payload[2]?.getD s2Step323CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step323CompleteOut.fv.payload[3]?.getD s2Step323CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step323CompleteOut.fv.payload[4]?.getD s2Step323CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step323EntryFBefore s2Step323EarlyControlArena s2Step323FrontBank 109 177 ⟨109,108,177,177⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step323CompleteLog s2Step323FrontPlan Q
    s2Step323Front_checked s2Step323Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step323Complete_owned s2Step323Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step323EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 s2Step323CompleteOut.fv.second (s2Step323CompleteOut.fv.payload[2]?.getD s2Step323CompleteOut.fv.sign) (s2Step323CompleteOut.fv.payload[3]?.getD s2Step323CompleteOut.fv.sign) (s2Step323CompleteOut.fv.payload[4]?.getD s2Step323CompleteOut.fv.sign) 807 60 s2Step323EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep323Arena : Arena := s2Step323EntryFBefore
def s2PrivateStep323Bank : WindowBank := s2Step323FrontBank
def s2PrivateStep323Spec : HmrSourceWalkStepLog := ⟨109,177,⟨109,108,177,177⟩,60,.early s2Step323CompleteLog⟩
def s2PrivateStep323Plan : HmrSourceStepPlan := .early s2Step323CompletePlan
theorem s2PrivateStep323_source : s2PrivateStep323Spec=s2ObservedLogs320[3] := rfl
theorem s2PrivateStep323_checked : compileHmrSourceStepLog s2PrivateStep323Arena s2PrivateStep323Bank
    s2PrivateStep323Spec.fgWidth s2PrivateStep323Spec.vWidth s2PrivateStep323Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 323 s2PrivateStep323Spec.need none s2PrivateStep323Spec.log=some s2PrivateStep323Plan := by
  change compileHmrSourceStepLog s2Step323EntryFBefore s2Step323FrontBank 109 177 ⟨109,108,177,177⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 323 60 none (.early s2Step323CompleteLog)=some (.early s2Step323CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 323<498)]
  rw [s2Step323Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
