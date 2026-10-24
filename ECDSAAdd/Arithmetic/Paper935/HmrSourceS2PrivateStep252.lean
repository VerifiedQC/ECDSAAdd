import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep250
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

private def s2Step252CompleteMoves : List (Wire × Wire) := []

private def s2Step252EarlyControlLog : HmrEarlyControlLog := ⟨[800, 782, 792, 830, 842],[814],[809],[885, 891, 894, 896, 901, 902],[]⟩

private def s2Step252FrontLog : HmrFrontAllocationLog := ⟨⟨[[782], [], [], []],[[842], [792], [800], [835]],[[], [], [], []]⟩,[784],[837],[814],[809],[885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 809, 885, 891]⟩

private def s2Step252CompleteLog : HmrEarlyStepLog := ⟨s2Step252FrontLog,s2Step252CompleteMoves,s2Step252EarlyControlLog⟩

private def s2Step252ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step252ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835],770⟩

private def s2Step252ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],769⟩

private def s2Step252ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩

private def s2Step252FrontOut : WindowBank := ⟨s2Step252ExitFOut,s2Step252ExitGOut,s2Step252ExitFvOut,s2Step252ExitGvOut⟩

private def s2Step252CompleteOut : WindowBank := s2Step252FrontOut.repacked s2Step252CompleteMoves

private def s2Step252EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step252EarlyControlPositiveArena,[814],s2Step252EarlyControlEqualityArena,[809],⟨⟨784,false⟩,[⟨⟨814,false⟩,809⟩]⟩⟩

private def s2Step252EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step252EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step252EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,800⟩,⟨⟨774,false⟩,782⟩,⟨⟨775,false⟩,792⟩,⟨⟨776,false⟩,830⟩,⟨⟨777,false⟩,842⟩]⟩

private def s2Step252EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step252EarlyControlZeroArena,s2Step252EarlyControlZeroPlan,s2Step252EarlyControlClassPlan,s2Step252EarlyControlFlagArena,s2Step252EarlyControlFittedArena,s2Step252EarlyControlHistoryArena,s2Step252EarlyControlSigmaArena,s2Step252EarlyControlOutputArena,s2Step252EarlyControlLog⟩

private def s2Step252CounterWork : List Wire := [814, 809, 885, 891]

private theorem s2Step252Counter_bounded : s2Step252CounterWork.toFinset⊆arenaWires := by norm_num [s2Step252CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step252HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252CounterDuring : Arena := ⟨s2Step252HeadFvAfter.live∪s2Step252CounterWork.toFinset,Finset.union_subset s2Step252HeadFvAfter.bounded s2Step252Counter_bounded⟩

private def s2Step252EntryFFresh : List Wire := [782]

private def s2Step252EntryFvFresh : List Wire := []

private def s2Step252EntryGFresh : List Wire := []

private def s2Step252EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252EntryGvAfter : Arena := s2Step252EntryFAfter

private def s2Step252EntryGvFresh : List Wire := []

private def s2Step252ExitFExtra : List Wire := [782, 792]

private def s2Step252ExitGExtra : List Wire := [830, 842]

private def s2Step252ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252ExitGvExtra : List Wire := [800]

private def s2Step252Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252Add0Work : List Wire := [885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step252Add0_bounded : s2Step252Add0Work.toFinset⊆arenaWires := by
  have h : s2Step252Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step252Add0During : Arena := ⟨s2Step252Add0Arena.live∪s2Step252Add0Work.toFinset,Finset.union_subset s2Step252Add0Arena.bounded s2Step252Add0_bounded⟩

private def s2Step252Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252Add1Work : List Wire := [885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step252Add1_bounded : s2Step252Add1Work.toFinset⊆arenaWires := by
  have h : s2Step252Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step252Add1During : Arena := ⟨s2Step252Add1Arena.live∪s2Step252Add1Work.toFinset,Finset.union_subset s2Step252Add1Arena.bounded s2Step252Add1_bounded⟩

private def s2Step252F4FlagArena : Arena := ⟨s2Step252HeadFvAfter.live∪{814},Finset.union_subset s2Step252HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step252F4Plan : HmrHybridF4Plan := ⟨s2Step252F4FlagArena,[814],s2Step252Add0Arena,[809],s2Step252Add0During,s2Step252Add0Work,s2Step252Add1During,s2Step252Add1Work⟩

private def s2Step252HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782, 792],768⟩

private def s2Step252HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835],770⟩

private def s2Step252HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842],769⟩

private def s2Step252HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 800],771⟩

private def s2Step252FrontHead : WindowBank := ⟨s2Step252HeadFOut,s2Step252HeadGOut,s2Step252HeadFvOut,s2Step252HeadGvOut⟩

private def s2Step252EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782],768⟩

private def s2Step252EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩

private def s2Step252EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩

private def s2Step252EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩

private def s2Step252FrontPair : WindowBank := ⟨s2Step252EntryFOut,s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut⟩

private def s2Step252FrontSigmaArena : Arena := ⟨s2Step252EntryGvAfter.live∪{784},Finset.union_subset s2Step252EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step252HeadFFresh : List Wire := [792]

private def s2Step252HeadFvFresh : List Wire := [835]

private def s2Step252HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252HeadGFresh : List Wire := [842]

private def s2Step252HeadGvFresh : List Wire := [800]

private def s2Step252FrontPlan : HmrSourceFront := ⟨s2Step252EntryGvAfter,s2Step252FrontPair,(growRow 768 s2Step252EntryFFresh ++ (growRow 769 s2Step252EntryGFresh ++ (growRow 770 s2Step252EntryFvFresh ++ (growRow 771 s2Step252EntryGvFresh ++ [])))),s2Step252FrontSigmaArena,[784],s2Step252HeadGBefore,[837],
  s2Step252HeadFvAfter,s2Step252FrontHead,(growRow 769 s2Step252HeadGFresh ++ (growRow 768 s2Step252HeadFFresh ++ (growRow 771 s2Step252HeadGvFresh ++ (growRow 770 s2Step252HeadFvFresh ++ [])))),s2Step252F4Plan,s2Step252CounterDuring,s2Step252CounterWork,s2Step252ExitGvAfter,s2Step252FrontOut,(shrinkRow 769 s2Step252ExitGExtra ++ (shrinkRow 768 s2Step252ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step252ExitGvExtra ++ []))))⟩

private def s2Step252CompletePlan : HmrEarlyStepPlan := ⟨s2Step252FrontPlan,s2Step252EarlyControlArena,s2Step252EarlyControlPlan,s2Step252CompleteMoves⟩

private theorem s2Step252Complete_apart : List.Disjoint (s2Step252CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [784, 837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step252CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[784, 837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step252Complete_owned : (s2Step252CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step252EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252Complete_repack : s2Step252ExitGvAfter.checkRepack s2Step252CompleteMoves=some s2Step252EarlyControlArena := by rfl

private theorem s2Step252EarlyControl_branchOwned : ([837] : List Wire).toFinset⊆s2Step252EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_branch : compileHmrBranchRetirement s2Step252EarlyControlSigmaArena 837=some s2Step252EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step252EarlyControl_branchOwned
  · ext q
    simp [s2Step252EarlyControlOutputArena,s2Step252EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step252EarlyControl_classEqualityBorrow : s2Step252EarlyControlPositiveArena.checkBorrow (([784, 814] : List Wire).length-1) s2Step252EarlyControlLog.classWork=some s2Step252EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step252EarlyControlPositiveArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step252EarlyControlEqualityArena,s2Step252EarlyControlPositiveArena,s2Step252EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step252EarlyControl_classEqualityOwned : ([784, 814] : List Wire).toFinset⊆s2Step252EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlPositiveArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_classEquality : compileHmrEqualityLog s2Step252EarlyControlPositiveArena [784, 814] 0 s2Step252EarlyControlLog.classWork=some (s2Step252EarlyControlEqualityArena,s2Step252EarlyControlLog.classWork,s2Step252EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step252EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step252EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step252EarlyControl_classOwned : ([777, 842, 784] : List Wire).toFinset⊆s2Step252EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_positiveBorrow : s2Step252EarlyControlZeroArena.checkBorrow (1) s2Step252EarlyControlLog.positiveWork=some s2Step252EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step252EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step252EarlyControlPositiveArena,s2Step252EarlyControlZeroArena,s2Step252EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step252EarlyControl_class : compileHmrSourceClassLog s2Step252EarlyControlZeroArena false 777 s2Step252EarlyControlZeroPlan.top 0 784 s2Step252EarlyControlLog.positiveWork s2Step252EarlyControlLog.classWork=some s2Step252EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step252EarlyControlClassPlan s2Step252EarlyControlZeroArena false 777 s2Step252EarlyControlZeroPlan.top 0 784
  constructor
  · decide +kernel
  · exact s2Step252EarlyControl_classOwned
  · exact s2Step252EarlyControl_positiveBorrow
  · exact s2Step252EarlyControl_classEquality

private theorem s2Step252EarlyControl_entryRecordOwned : ([837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step252EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_entrySigmaOwned : ([784, 254] : List Wire).toFinset⊆s2Step252EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_fitBorrow : s2Step252EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step252EarlyControlLog.recordFresh=some s2Step252EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step252EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step252EarlyControlFittedArena,s2Step252EarlyControlFlagArena,s2Step252EarlyControlLog,arenaWires]

private theorem s2Step252EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step252EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_fit : compileHmrRecordGrowLog s2Step252EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step252EarlyControlLog.recordFresh=some s2Step252EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step252EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step252EarlyControl_fitBorrow

private theorem s2Step252EarlyControl_flagsBorrow : s2Step252EarlyControlEqualityArena.checkBorrow (6) s2Step252EarlyControlLog.flagWork=some s2Step252EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step252EarlyControlEqualityArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step252EarlyControlFlagArena,s2Step252EarlyControlEqualityArena,s2Step252EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step252EarlyControl_flagsOwned : ([809, 253, 252, 251] : List Wire).toFinset⊆s2Step252EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlEqualityArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_flags : compileHmrFlagsLog s2Step252EarlyControlClassPlan.equalityArena s2Step252EarlyControlClassPlan.equality.top 253 252 251 s2Step252EarlyControlLog.flagWork=some s2Step252EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step252EarlyControl_flagsOwned⟩
  · exact s2Step252EarlyControl_flagsBorrow

private theorem s2Step252EarlyControl_historyBorrow : s2Step252EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step252EarlyControlLog.recordFresh=some s2Step252EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step252EarlyControlHistoryArena,s2Step252EarlyControlArena,s2Step252EarlyControlLog,arenaWires]

private theorem s2Step252EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step252EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_history : compileHmrRecordGrowLog s2Step252EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step252EarlyControlLog.recordFresh=some s2Step252EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step252EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step252EarlyControl_historyBorrow

private theorem s2Step252EarlyControl_sigmaOwned : ([254, 784] : List Wire).toFinset⊆s2Step252EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_sigmaReleaseOwned : ([784] : List Wire).toFinset⊆s2Step252EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_sigmaRelease : s2Step252EarlyControlHistoryArena.release {784} (fun _ => false)=some s2Step252EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step252EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step252EarlyControlSigmaArena,s2Step252EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step252EarlyControl_sigma : compileHmrSigmaDropLog s2Step252EarlyControlHistoryArena false 0 0 254 784 []=some s2Step252EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step252EarlyControl_sigmaOwned⟩
  · exact s2Step252EarlyControl_sigmaRelease

private theorem s2Step252EarlyControl_zeroBorrow : s2Step252EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step252EarlyControlLog.zeroWork=some s2Step252EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step252EarlyControlZeroArena,s2Step252EarlyControlArena,s2Step252EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step252EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step252EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EarlyControl_zero : compileHmrEqualityLog s2Step252EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step252EarlyControlLog.zeroWork=some (s2Step252EarlyControlZeroArena,s2Step252EarlyControlLog.zeroWork,s2Step252EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step252EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step252EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step252EarlyControl_logged : s2Step252EarlyControlPlan.Logged s2Step252EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 837 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step252EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step252EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step252EarlyControl_zero
  · exact s2Step252EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step252EarlyControl_flags
  · exact s2Step252EarlyControl_fit
  · exact s2Step252EarlyControl_history
  · exact s2Step252EarlyControl_sigma
  · exact s2Step252EarlyControl_branch

private theorem s2Step252EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step252EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 837 51 s2Step252EarlyControlLog=some s2Step252EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step252EarlyControlPlan s2Step252EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 837 51 s2Step252EarlyControl_logged

private def s2Step252EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step252EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩

private def s2Step252EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩

private def s2Step252EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩

private def s2Step252FrontBank : WindowBank := ⟨s2Step252EntryFRow,s2Step252EntryGRow,s2Step252EntryFvRow,s2Step252EntryGvRow⟩

private def s2Step252Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782, 792, 768]

private def s2Step252Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842, 769]

private def s2Step252Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 770]

private def s2Step252Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 800, 771]

private theorem s2Step252Counter_apart : Disjoint s2Step252HeadFvAfter.live s2Step252CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step252HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252Counter_borrowed : s2Step252HeadFvAfter.checkBorrow 4 s2Step252CounterWork=some s2Step252CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step252HeadFvAfter s2Step252CounterDuring s2Step252CounterWork.toFinset s2Step252Counter_bounded s2Step252Counter_apart rfl

private theorem s2Step252Counter_owned : (784::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step252HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step252HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252Counter_checked : compileHmrCounterStepLog s2Step252HeadFvAfter true 784 [772, 773, 774, 775, 776, 777] s2Step252CounterWork=some s2Step252CounterDuring := by
  have owned : ∀q∈784::[772, 773, 774, 775, 776, 777],q∈s2Step252HeadFvAfter.live := fun q hq => s2Step252Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step252Counter_borrowed

private theorem s2Step252EntryBank_incomingDistinct : ([s2Step252EntryFRow,s2Step252EntryGRow,s2Step252EntryFvRow,s2Step252EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252EntryF_Incoming : rowsOwned s2Step252EntryFBefore [s2Step252EntryFRow,s2Step252EntryGRow,s2Step252EntryFvRow,s2Step252EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252EntryFRow,s2Step252EntryGRow,s2Step252EntryFvRow,s2Step252EntryGvRow] 0 s2Step252EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252EntryBank_outgoingOwned : rowsOwned s2Step252EntryGvAfter [s2Step252EntryFOut,s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step252EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252EntryF_Outgoing : rowsOwned s2Step252EntryGvAfter [s2Step252EntryFOut,s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut] :=
  hmrRows_owned_drop s2Step252EntryGvAfter [s2Step252EntryFOut,s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut] 0 s2Step252EntryBank_outgoingOwned

private theorem s2Step252EntryF_distinct : (s2Step252EntryFRow.sign::s2Step252EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252EntryF_owned : (s2Step252EntryFRow.sign::s2Step252EntryFRow.payload).toFinset⊆s2Step252EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EntryF_reserved : s2Step252EntryFBefore.reserve s2Step252EntryFFresh.toFinset=some s2Step252EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step252EntryFFresh,arenaWires]
  · norm_num [s2Step252EntryFBefore,s2Step252EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step252EntryFAfter,s2Step252EntryFBefore,s2Step252EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step252EntryF_checked : planRowResizeLog s2Step252EntryFBefore s2Step252EntryFRow 145 s2Step252EntryFFresh=
    some (s2Step252EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782],768⟩,growRow 768 s2Step252EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step252EntryFBefore s2Step252EntryFAfter s2Step252EntryFRow 145 s2Step252EntryFFresh
    s2Step252EntryF_distinct s2Step252EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step252EntryF_reserved
  have rowEq : WindowRow.mk (s2Step252EntryFRow.payload++s2Step252EntryFFresh) s2Step252EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step252EntryFvAfter : Arena := s2Step252EntryFAfter

private def s2Step252EntryFvBefore : Arena := s2Step252EntryFAfter

private theorem s2Step252EntryFv_Incoming : rowsOwned s2Step252EntryFvBefore [s2Step252EntryFvRow,s2Step252EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252EntryFRow,s2Step252EntryGRow,s2Step252EntryFvRow,s2Step252EntryGvRow] 2 s2Step252EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252EntryFv_Outgoing : rowsOwned s2Step252EntryGvAfter [s2Step252EntryFvOut,s2Step252EntryGvOut] :=
  hmrRows_owned_drop s2Step252EntryGvAfter [s2Step252EntryFOut,s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut] 2 s2Step252EntryBank_outgoingOwned

private theorem s2Step252EntryFv_distinct : (s2Step252EntryFvRow.sign::s2Step252EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252EntryFv_owned : (s2Step252EntryFvRow.sign::s2Step252EntryFvRow.payload).toFinset⊆s2Step252EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EntryFv_reserved : s2Step252EntryFvBefore.reserve s2Step252EntryFvFresh.toFinset=some s2Step252EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step252EntryFvFresh,arenaWires]
  · norm_num [s2Step252EntryFvBefore,s2Step252EntryFAfter,s2Step252EntryFvFresh,arenaWires]
  · simp only [s2Step252EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step252EntryFv_checked : planRowResizeLog s2Step252EntryFvBefore s2Step252EntryFvRow 141 s2Step252EntryFvFresh=
    some (s2Step252EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩,growRow 770 s2Step252EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step252EntryFvBefore s2Step252EntryFvAfter s2Step252EntryFvRow 141 s2Step252EntryFvFresh
    s2Step252EntryFv_distinct s2Step252EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step252EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step252EntryFvRow.payload++s2Step252EntryFvFresh) s2Step252EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step252EntryGAfter : Arena := s2Step252EntryFAfter

private def s2Step252EntryGBefore : Arena := s2Step252EntryFAfter

private theorem s2Step252EntryG_Incoming : rowsOwned s2Step252EntryGBefore [s2Step252EntryGRow,s2Step252EntryFvRow,s2Step252EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252EntryFRow,s2Step252EntryGRow,s2Step252EntryFvRow,s2Step252EntryGvRow] 1 s2Step252EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252EntryG_Outgoing : rowsOwned s2Step252EntryGvAfter [s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut] :=
  hmrRows_owned_drop s2Step252EntryGvAfter [s2Step252EntryFOut,s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut] 1 s2Step252EntryBank_outgoingOwned

private theorem s2Step252EntryG_distinct : (s2Step252EntryGRow.sign::s2Step252EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252EntryG_owned : (s2Step252EntryGRow.sign::s2Step252EntryGRow.payload).toFinset⊆s2Step252EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EntryG_reserved : s2Step252EntryGBefore.reserve s2Step252EntryGFresh.toFinset=some s2Step252EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step252EntryGFresh,arenaWires]
  · norm_num [s2Step252EntryGBefore,s2Step252EntryFAfter,s2Step252EntryGFresh,arenaWires]
  · simp only [s2Step252EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step252EntryG_checked : planRowResizeLog s2Step252EntryGBefore s2Step252EntryGRow 145 s2Step252EntryGFresh=
    some (s2Step252EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩,growRow 769 s2Step252EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step252EntryGBefore s2Step252EntryGAfter s2Step252EntryGRow 145 s2Step252EntryGFresh
    s2Step252EntryG_distinct s2Step252EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step252EntryG_reserved
  have rowEq : WindowRow.mk (s2Step252EntryGRow.payload++s2Step252EntryGFresh) s2Step252EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step252EntryGvBefore : Arena := s2Step252EntryFAfter

private theorem s2Step252EntryGv_Incoming : rowsOwned s2Step252EntryGvBefore [s2Step252EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252EntryFRow,s2Step252EntryGRow,s2Step252EntryFvRow,s2Step252EntryGvRow] 3 s2Step252EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252EntryGv_Outgoing : rowsOwned s2Step252EntryGvAfter [s2Step252EntryGvOut] :=
  hmrRows_owned_drop s2Step252EntryGvAfter [s2Step252EntryFOut,s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut] 3 s2Step252EntryBank_outgoingOwned

private theorem s2Step252EntryGv_distinct : (s2Step252EntryGvRow.sign::s2Step252EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252EntryGv_owned : (s2Step252EntryGvRow.sign::s2Step252EntryGvRow.payload).toFinset⊆s2Step252EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252EntryGv_reserved : s2Step252EntryGvBefore.reserve s2Step252EntryGvFresh.toFinset=some s2Step252EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step252EntryGvFresh,arenaWires]
  · norm_num [s2Step252EntryGvBefore,s2Step252EntryFAfter,s2Step252EntryGvFresh,arenaWires]
  · simp only [s2Step252EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step252EntryGv_checked : planRowResizeLog s2Step252EntryGvBefore s2Step252EntryGvRow 141 s2Step252EntryGvFresh=
    some (s2Step252EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩,growRow 771 s2Step252EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step252EntryGvBefore s2Step252EntryGvAfter s2Step252EntryGvRow 141 s2Step252EntryGvFresh
    s2Step252EntryGv_distinct s2Step252EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step252EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step252EntryGvRow.payload++s2Step252EntryGvFresh) s2Step252EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step252EntryBank_rows : planWindowRowsLog s2Step252EntryFBefore [(s2Step252EntryFRow,145),(s2Step252EntryGRow,145),(s2Step252EntryFvRow,141),(s2Step252EntryGvRow,141)] [s2Step252EntryFFresh,s2Step252EntryGFresh,s2Step252EntryFvFresh,s2Step252EntryGvFresh]=
    some (s2Step252EntryGvAfter,[s2Step252EntryFOut,s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut],(growRow 768 s2Step252EntryFFresh ++ (growRow 769 s2Step252EntryGFresh ++ (growRow 770 s2Step252EntryFvFresh ++ (growRow 771 s2Step252EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step252EntryGvAfter [] []=some (s2Step252EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step252EntryGvBefore s2Step252EntryGvAfter s2Step252EntryGvAfter
    s2Step252EntryGvRow s2Step252EntryGvOut 141 s2Step252EntryGvFresh [] [] []
    (growRow 771 s2Step252EntryGvFresh) ([]) s2Step252EntryGv_Incoming s2Step252EntryGv_checked h4 s2Step252EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step252EntryFvBefore s2Step252EntryFvAfter s2Step252EntryGvAfter
    s2Step252EntryFvRow s2Step252EntryFvOut 141 s2Step252EntryFvFresh [(s2Step252EntryGvRow,141)] [s2Step252EntryGvFresh] [s2Step252EntryGvOut]
    (growRow 770 s2Step252EntryFvFresh) ((growRow 771 s2Step252EntryGvFresh ++ [])) s2Step252EntryFv_Incoming s2Step252EntryFv_checked h3 s2Step252EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step252EntryGBefore s2Step252EntryGAfter s2Step252EntryGvAfter
    s2Step252EntryGRow s2Step252EntryGOut 145 s2Step252EntryGFresh [(s2Step252EntryFvRow,141),(s2Step252EntryGvRow,141)] [s2Step252EntryFvFresh,s2Step252EntryGvFresh] [s2Step252EntryFvOut,s2Step252EntryGvOut]
    (growRow 769 s2Step252EntryGFresh) ((growRow 770 s2Step252EntryFvFresh ++ (growRow 771 s2Step252EntryGvFresh ++ []))) s2Step252EntryG_Incoming s2Step252EntryG_checked h2 s2Step252EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step252EntryFBefore s2Step252EntryFAfter s2Step252EntryGvAfter
    s2Step252EntryFRow s2Step252EntryFOut 145 s2Step252EntryFFresh [(s2Step252EntryGRow,145),(s2Step252EntryFvRow,141),(s2Step252EntryGvRow,141)] [s2Step252EntryGFresh,s2Step252EntryFvFresh,s2Step252EntryGvFresh] [s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut]
    (growRow 768 s2Step252EntryFFresh) ((growRow 769 s2Step252EntryGFresh ++ (growRow 770 s2Step252EntryFvFresh ++ (growRow 771 s2Step252EntryGvFresh ++ [])))) s2Step252EntryF_Incoming s2Step252EntryF_checked h1 s2Step252EntryF_Outgoing
  exact h0

private theorem s2Step252EntryBank_checked : compileHmrBankResizeLog .entry s2Step252EntryFBefore ⟨s2Step252EntryFRow,s2Step252EntryGRow,s2Step252EntryFvRow,s2Step252EntryGvRow⟩ ⟨145,145,141,141⟩ [s2Step252EntryFFresh,s2Step252EntryGFresh,s2Step252EntryFvFresh,s2Step252EntryGvFresh]=
    some (s2Step252EntryGvAfter,⟨s2Step252EntryFOut,s2Step252EntryGOut,s2Step252EntryFvOut,s2Step252EntryGvOut⟩,(growRow 768 s2Step252EntryFFresh ++ (growRow 769 s2Step252EntryGFresh ++ (growRow 770 s2Step252EntryFvFresh ++ (growRow 771 s2Step252EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step252EntryBank_rows]
  rfl

private def s2Step252ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252ExitFBefore : Arena := s2Step252ExitGAfter

private def s2Step252ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782, 792],768⟩

private def s2Step252ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835],770⟩

private def s2Step252ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842],769⟩

private def s2Step252ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 800],771⟩

private theorem s2Step252ExitBank_incomingDistinct : ([s2Step252ExitGRow,s2Step252ExitFRow,s2Step252ExitFvRow,s2Step252ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252ExitF_Incoming : rowsOwned s2Step252ExitFBefore [s2Step252ExitFRow,s2Step252ExitFvRow,s2Step252ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252ExitGRow,s2Step252ExitFRow,s2Step252ExitFvRow,s2Step252ExitGvRow] 1 s2Step252ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252ExitFBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252ExitBank_outgoingOwned : rowsOwned s2Step252ExitGvAfter [s2Step252ExitGOut,s2Step252ExitFOut,s2Step252ExitFvOut,s2Step252ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step252ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252ExitF_Outgoing : rowsOwned s2Step252ExitGvAfter [s2Step252ExitFOut,s2Step252ExitFvOut,s2Step252ExitGvOut] :=
  hmrRows_owned_drop s2Step252ExitGvAfter [s2Step252ExitGOut,s2Step252ExitFOut,s2Step252ExitFvOut,s2Step252ExitGvOut] 1 s2Step252ExitBank_outgoingOwned

private theorem s2Step252ExitF_distinct : (s2Step252ExitFRow.sign::s2Step252ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252ExitF_owned : (s2Step252ExitFRow.sign::s2Step252ExitFRow.payload).toFinset⊆s2Step252ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252ExitFBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252ExitF_retired : s2Step252ExitFBefore.retireSet s2Step252ExitFExtra.toFinset=s2Step252ExitFAfter := by
  unfold Arena.retireSet s2Step252ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step252ExitFBefore,s2Step252ExitGAfter,s2Step252ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step252ExitF_checked : planRowResizeLog s2Step252ExitFBefore s2Step252ExitFRow 144 []=
    some (s2Step252ExitFAfter,s2Step252ExitFOut,shrinkRow 768 s2Step252ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step252ExitFBefore s2Step252ExitFRow 144 s2Step252ExitF_distinct s2Step252ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step252ExitFRow.payload.take 144) s2Step252ExitFRow.sign=s2Step252ExitFOut := by decide +kernel
  have hi : s2Step252ExitFRow.payload.drop 144=s2Step252ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step252ExitF_retired] at result
  exact result

private def s2Step252ExitFvAfter : Arena := s2Step252ExitFAfter

private def s2Step252ExitFvBefore : Arena := s2Step252ExitFAfter

private theorem s2Step252ExitFv_Incoming : rowsOwned s2Step252ExitFvBefore [s2Step252ExitFvRow,s2Step252ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252ExitGRow,s2Step252ExitFRow,s2Step252ExitFvRow,s2Step252ExitGvRow] 2 s2Step252ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252ExitFv_Outgoing : rowsOwned s2Step252ExitGvAfter [s2Step252ExitFvOut,s2Step252ExitGvOut] :=
  hmrRows_owned_drop s2Step252ExitGvAfter [s2Step252ExitGOut,s2Step252ExitFOut,s2Step252ExitFvOut,s2Step252ExitGvOut] 2 s2Step252ExitBank_outgoingOwned

private theorem s2Step252ExitFv_distinct : (s2Step252ExitFvRow.sign::s2Step252ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252ExitFv_owned : (s2Step252ExitFvRow.sign::s2Step252ExitFvRow.payload).toFinset⊆s2Step252ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252ExitFv_reserved : s2Step252ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step252ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step252ExitFv_checked : planRowResizeLog s2Step252ExitFvBefore s2Step252ExitFvRow 142 []=
    some (s2Step252ExitFvAfter,s2Step252ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step252ExitFvBefore s2Step252ExitFvAfter s2Step252ExitFvRow 142 []
    s2Step252ExitFv_distinct s2Step252ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step252ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step252ExitFvRow.payload++[]) s2Step252ExitFvRow.sign=s2Step252ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step252ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step252ExitG_Incoming : rowsOwned s2Step252ExitGBefore [s2Step252ExitGRow,s2Step252ExitFRow,s2Step252ExitFvRow,s2Step252ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252ExitGRow,s2Step252ExitFRow,s2Step252ExitFvRow,s2Step252ExitGvRow] 0 s2Step252ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252ExitGBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252ExitG_Outgoing : rowsOwned s2Step252ExitGvAfter [s2Step252ExitGOut,s2Step252ExitFOut,s2Step252ExitFvOut,s2Step252ExitGvOut] :=
  hmrRows_owned_drop s2Step252ExitGvAfter [s2Step252ExitGOut,s2Step252ExitFOut,s2Step252ExitFvOut,s2Step252ExitGvOut] 0 s2Step252ExitBank_outgoingOwned

private theorem s2Step252ExitG_distinct : (s2Step252ExitGRow.sign::s2Step252ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252ExitG_owned : (s2Step252ExitGRow.sign::s2Step252ExitGRow.payload).toFinset⊆s2Step252ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252ExitGBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252ExitG_retired : s2Step252ExitGBefore.retireSet s2Step252ExitGExtra.toFinset=s2Step252ExitGAfter := by
  unfold Arena.retireSet s2Step252ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step252ExitGBefore,s2Step252ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step252ExitG_checked : planRowResizeLog s2Step252ExitGBefore s2Step252ExitGRow 144 []=
    some (s2Step252ExitGAfter,s2Step252ExitGOut,shrinkRow 769 s2Step252ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step252ExitGBefore s2Step252ExitGRow 144 s2Step252ExitG_distinct s2Step252ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step252ExitGRow.payload.take 144) s2Step252ExitGRow.sign=s2Step252ExitGOut := by decide +kernel
  have hi : s2Step252ExitGRow.payload.drop 144=s2Step252ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step252ExitG_retired] at result
  exact result

private def s2Step252ExitGvBefore : Arena := s2Step252ExitFAfter

private theorem s2Step252ExitGv_Incoming : rowsOwned s2Step252ExitGvBefore [s2Step252ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252ExitGRow,s2Step252ExitFRow,s2Step252ExitFvRow,s2Step252ExitGvRow] 3 s2Step252ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252ExitGv_Outgoing : rowsOwned s2Step252ExitGvAfter [s2Step252ExitGvOut] :=
  hmrRows_owned_drop s2Step252ExitGvAfter [s2Step252ExitGOut,s2Step252ExitFOut,s2Step252ExitFvOut,s2Step252ExitGvOut] 3 s2Step252ExitBank_outgoingOwned

private theorem s2Step252ExitGv_distinct : (s2Step252ExitGvRow.sign::s2Step252ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252ExitGv_owned : (s2Step252ExitGvRow.sign::s2Step252ExitGvRow.payload).toFinset⊆s2Step252ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252ExitGv_retired : s2Step252ExitGvBefore.retireSet s2Step252ExitGvExtra.toFinset=s2Step252ExitGvAfter := by
  unfold Arena.retireSet s2Step252ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step252ExitGvBefore,s2Step252ExitFAfter,s2Step252ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step252ExitGv_checked : planRowResizeLog s2Step252ExitGvBefore s2Step252ExitGvRow 141 []=
    some (s2Step252ExitGvAfter,s2Step252ExitGvOut,shrinkRow 771 s2Step252ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step252ExitGvBefore s2Step252ExitGvRow 141 s2Step252ExitGv_distinct s2Step252ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step252ExitGvRow.payload.take 141) s2Step252ExitGvRow.sign=s2Step252ExitGvOut := by decide +kernel
  have hi : s2Step252ExitGvRow.payload.drop 141=s2Step252ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step252ExitGv_retired] at result
  exact result

private theorem s2Step252ExitBank_rows : planWindowRowsLog s2Step252ExitGBefore [(s2Step252ExitGRow,144),(s2Step252ExitFRow,144),(s2Step252ExitFvRow,142),(s2Step252ExitGvRow,141)] [[],[],[],[]]=
    some (s2Step252ExitGvAfter,[s2Step252ExitGOut,s2Step252ExitFOut,s2Step252ExitFvOut,s2Step252ExitGvOut],(shrinkRow 769 s2Step252ExitGExtra ++ (shrinkRow 768 s2Step252ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step252ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step252ExitGvAfter [] []=some (s2Step252ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step252ExitGvBefore s2Step252ExitGvAfter s2Step252ExitGvAfter
    s2Step252ExitGvRow s2Step252ExitGvOut 141 [] [] [] []
    (shrinkRow 771 s2Step252ExitGvExtra) ([]) s2Step252ExitGv_Incoming s2Step252ExitGv_checked h4 s2Step252ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step252ExitFvBefore s2Step252ExitFvAfter s2Step252ExitGvAfter
    s2Step252ExitFvRow s2Step252ExitFvOut 142 [] [(s2Step252ExitGvRow,141)] [[]] [s2Step252ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step252ExitGvExtra ++ [])) s2Step252ExitFv_Incoming s2Step252ExitFv_checked h3 s2Step252ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step252ExitFBefore s2Step252ExitFAfter s2Step252ExitGvAfter
    s2Step252ExitFRow s2Step252ExitFOut 144 [] [(s2Step252ExitFvRow,142),(s2Step252ExitGvRow,141)] [[],[]] [s2Step252ExitFvOut,s2Step252ExitGvOut]
    (shrinkRow 768 s2Step252ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step252ExitGvExtra ++ []))) s2Step252ExitF_Incoming s2Step252ExitF_checked h2 s2Step252ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step252ExitGBefore s2Step252ExitGAfter s2Step252ExitGvAfter
    s2Step252ExitGRow s2Step252ExitGOut 144 [] [(s2Step252ExitFRow,144),(s2Step252ExitFvRow,142),(s2Step252ExitGvRow,141)] [[],[],[]] [s2Step252ExitFOut,s2Step252ExitFvOut,s2Step252ExitGvOut]
    (shrinkRow 769 s2Step252ExitGExtra) ((shrinkRow 768 s2Step252ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step252ExitGvExtra ++ [])))) s2Step252ExitG_Incoming s2Step252ExitG_checked h1 s2Step252ExitG_Outgoing
  exact h0

private theorem s2Step252ExitBank_checked : compileHmrBankResizeLog .exit s2Step252ExitGBefore ⟨s2Step252ExitFRow,s2Step252ExitGRow,s2Step252ExitFvRow,s2Step252ExitGvRow⟩ ⟨144,144,142,141⟩ [[],[],[],[]]=
    some (s2Step252ExitGvAfter,⟨s2Step252ExitFOut,s2Step252ExitGOut,s2Step252ExitFvOut,s2Step252ExitGvOut⟩,(shrinkRow 769 s2Step252ExitGExtra ++ (shrinkRow 768 s2Step252ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step252ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step252ExitBank_rows]
  rfl

private theorem s2Step252Add0_apart : Disjoint s2Step252Add0Arena.live s2Step252Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step252Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252Add0_card : s2Step252Add0Arena.live.card=897 := by
  decide +kernel

private theorem s2Step252Add0_borrowed : s2Step252Add0Arena.checkBorrow (hmrHybridCount s2Step252Add0Arena s2Step252Add0B.length) s2Step252Add0Work=some s2Step252Add0During := by
  have len : s2Step252Add0Work.length=hmrHybridCount s2Step252Add0Arena s2Step252Add0B.length := by
    rw [hmrHybridCount,s2Step252Add0_card]
    decide +kernel
  have nd : s2Step252Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step252Add0Arena s2Step252Add0During s2Step252Add0Work.toFinset s2Step252Add0_bounded s2Step252Add0_apart rfl

private theorem s2Step252Add0_distinct : (814::837::809::(s2Step252Add0A++s2Step252Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252Add0_owned : (814::837::809::(s2Step252Add0A++s2Step252Add0B)).toFinset⊆s2Step252Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step252Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252Add0_checked : compileHmrHybridCinLog s2Step252Add0Arena 837 814 809 s2Step252Add0A s2Step252Add0B s2Step252Add0Work=some s2Step252Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step252Add0Arena s2Step252Add0During 837 814 809 s2Step252Add0A s2Step252Add0B s2Step252Add0Work
    (by decide +kernel) (by decide +kernel) s2Step252Add0_distinct
    (fun q hq => s2Step252Add0_owned (List.mem_toFinset.mpr hq)) s2Step252Add0_borrowed

private theorem s2Step252Add1_apart : Disjoint s2Step252Add1Arena.live s2Step252Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step252Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252Add1_card : s2Step252Add1Arena.live.card=897 := by
  decide +kernel

private theorem s2Step252Add1_borrowed : s2Step252Add1Arena.checkBorrow (hmrHybridCount s2Step252Add1Arena s2Step252Add1B.length) s2Step252Add1Work=some s2Step252Add1During := by
  have len : s2Step252Add1Work.length=hmrHybridCount s2Step252Add1Arena s2Step252Add1B.length := by
    rw [hmrHybridCount,s2Step252Add1_card]
    decide +kernel
  have nd : s2Step252Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step252Add1Arena s2Step252Add1During s2Step252Add1Work.toFinset s2Step252Add1_bounded s2Step252Add1_apart rfl

private theorem s2Step252Add1_distinct : (814::837::809::(s2Step252Add1A++s2Step252Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252Add1_owned : (814::837::809::(s2Step252Add1A++s2Step252Add1B)).toFinset⊆s2Step252Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step252Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252Add1_checked : compileHmrHybridCinLog s2Step252Add1Arena 837 814 809 s2Step252Add1A s2Step252Add1B s2Step252Add1Work=some s2Step252Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step252Add1Arena s2Step252Add1During 837 814 809 s2Step252Add1A s2Step252Add1B s2Step252Add1Work
    (by decide +kernel) (by decide +kernel) s2Step252Add1_distinct
    (fun q hq => s2Step252Add1_owned (List.mem_toFinset.mpr hq)) s2Step252Add1_borrowed

private theorem s2Step252F4_apart : Disjoint (s2Step252Add0A++s2Step252Add0B).toFinset (s2Step252Add1A++s2Step252Add1B).toFinset := by
  have nd : ((s2Step252Add0A++s2Step252Add0B)++(s2Step252Add1A++s2Step252Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step252F4_carry : s2Step252F4FlagArena.checkBorrow 1 [809]=some s2Step252Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step252F4FlagArena,s2Step252HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step252F4FlagArena,s2Step252HeadFvAfter,s2Step252Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step252F4_distinct : (784::837::814::809::((s2Step252Add0A++s2Step252Add1A)++(s2Step252Add0B++s2Step252Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252F4_flag : s2Step252HeadFvAfter.checkBorrow 1 [814]=some s2Step252F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step252HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step252F4_owned : (784::837::((s2Step252Add0A++s2Step252Add1A)++(s2Step252Add0B++s2Step252Add1B))).toFinset⊆s2Step252HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step252HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252F4_checked : compileHmrHybridF4Log s2Step252HeadFvAfter 784 837 s2Step252Add0A s2Step252Add0B s2Step252Add1A s2Step252Add1B [814] [809] s2Step252Add0Work s2Step252Add1Work=some s2Step252F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step252HeadFvAfter s2Step252F4FlagArena s2Step252Add0Arena s2Step252Add0During s2Step252Add1During 784 837
    s2Step252Add0A s2Step252Add0B s2Step252Add1A s2Step252Add1B [814] [809] s2Step252Add0Work s2Step252Add1Work
    (fun q hq => s2Step252F4_owned (List.mem_toFinset.mpr hq)) s2Step252F4_flag s2Step252F4_carry
    s2Step252F4_distinct s2Step252F4_apart s2Step252Add0_checked s2Step252Add1_checked

private theorem s2Step252Front_branch : s2Step252FrontSigmaArena.checkBorrow 1 [837]=some s2Step252HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step252FrontSigmaArena,s2Step252EntryGvAfter,s2Step252EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step252FrontSigmaArena,s2Step252EntryGvAfter,s2Step252EntryFAfter,s2Step252HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step252Front_entry : HmrFrontEntryValid s2Step252EntryFBefore s2Step252FrontBank 145 141 ⟨144,144,142,141⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step252FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step252EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step252EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step252FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step252Front_sigma : s2Step252EntryGvAfter.checkBorrow 1 [784]=some s2Step252FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step252EntryGvAfter,s2Step252EntryFAfter,arenaWires]
  · rfl

private def s2Step252HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252HeadFBefore : Arena := s2Step252HeadGAfter

private def s2Step252HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782],768⟩

private def s2Step252HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩

private def s2Step252HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩

private def s2Step252HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩

private theorem s2Step252HeadBank_incomingDistinct : ([s2Step252HeadGRow,s2Step252HeadFRow,s2Step252HeadGvRow,s2Step252HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252HeadF_Incoming : rowsOwned s2Step252HeadFBefore [s2Step252HeadFRow,s2Step252HeadGvRow,s2Step252HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252HeadGRow,s2Step252HeadFRow,s2Step252HeadGvRow,s2Step252HeadFvRow] 1 s2Step252HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252HeadBank_outgoingOwned : rowsOwned s2Step252HeadFvAfter [s2Step252HeadGOut,s2Step252HeadFOut,s2Step252HeadGvOut,s2Step252HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step252HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252HeadF_Outgoing : rowsOwned s2Step252HeadFvAfter [s2Step252HeadFOut,s2Step252HeadGvOut,s2Step252HeadFvOut] :=
  hmrRows_owned_drop s2Step252HeadFvAfter [s2Step252HeadGOut,s2Step252HeadFOut,s2Step252HeadGvOut,s2Step252HeadFvOut] 1 s2Step252HeadBank_outgoingOwned

private theorem s2Step252HeadF_distinct : (s2Step252HeadFRow.sign::s2Step252HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252HeadF_owned : (s2Step252HeadFRow.sign::s2Step252HeadFRow.payload).toFinset⊆s2Step252HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252HeadF_reserved : s2Step252HeadFBefore.reserve s2Step252HeadFFresh.toFinset=some s2Step252HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step252HeadFFresh,arenaWires]
  · norm_num [s2Step252HeadFBefore,s2Step252HeadGAfter,s2Step252HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step252HeadFAfter,s2Step252HeadFBefore,s2Step252HeadGAfter,s2Step252HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step252HeadF_checked : planRowResizeLog s2Step252HeadFBefore s2Step252HeadFRow 146 s2Step252HeadFFresh=
    some (s2Step252HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782, 792],768⟩,growRow 768 s2Step252HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step252HeadFBefore s2Step252HeadFAfter s2Step252HeadFRow 146 s2Step252HeadFFresh
    s2Step252HeadF_distinct s2Step252HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step252HeadF_reserved
  have rowEq : WindowRow.mk (s2Step252HeadFRow.payload++s2Step252HeadFFresh) s2Step252HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782, 792],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step252HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step252HeadFvBefore : Arena := s2Step252HeadGvAfter

private theorem s2Step252HeadFv_Incoming : rowsOwned s2Step252HeadFvBefore [s2Step252HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252HeadGRow,s2Step252HeadFRow,s2Step252HeadGvRow,s2Step252HeadFvRow] 3 s2Step252HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252HeadFvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252HeadFv_Outgoing : rowsOwned s2Step252HeadFvAfter [s2Step252HeadFvOut] :=
  hmrRows_owned_drop s2Step252HeadFvAfter [s2Step252HeadGOut,s2Step252HeadFOut,s2Step252HeadGvOut,s2Step252HeadFvOut] 3 s2Step252HeadBank_outgoingOwned

private theorem s2Step252HeadFv_distinct : (s2Step252HeadFvRow.sign::s2Step252HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252HeadFv_owned : (s2Step252HeadFvRow.sign::s2Step252HeadFvRow.payload).toFinset⊆s2Step252HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252HeadFvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252HeadFv_reserved : s2Step252HeadFvBefore.reserve s2Step252HeadFvFresh.toFinset=some s2Step252HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step252HeadFvFresh,arenaWires]
  · norm_num [s2Step252HeadFvBefore,s2Step252HeadGvAfter,s2Step252HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step252HeadFvAfter,s2Step252HeadFvBefore,s2Step252HeadGvAfter,s2Step252HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step252HeadFv_checked : planRowResizeLog s2Step252HeadFvBefore s2Step252HeadFvRow 142 s2Step252HeadFvFresh=
    some (s2Step252HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835],770⟩,growRow 770 s2Step252HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step252HeadFvBefore s2Step252HeadFvAfter s2Step252HeadFvRow 142 s2Step252HeadFvFresh
    s2Step252HeadFv_distinct s2Step252HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step252HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step252HeadFvRow.payload++s2Step252HeadFvFresh) s2Step252HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step252HeadG_Incoming : rowsOwned s2Step252HeadGBefore [s2Step252HeadGRow,s2Step252HeadFRow,s2Step252HeadGvRow,s2Step252HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252HeadGRow,s2Step252HeadFRow,s2Step252HeadGvRow,s2Step252HeadFvRow] 0 s2Step252HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252HeadG_Outgoing : rowsOwned s2Step252HeadFvAfter [s2Step252HeadGOut,s2Step252HeadFOut,s2Step252HeadGvOut,s2Step252HeadFvOut] :=
  hmrRows_owned_drop s2Step252HeadFvAfter [s2Step252HeadGOut,s2Step252HeadFOut,s2Step252HeadGvOut,s2Step252HeadFvOut] 0 s2Step252HeadBank_outgoingOwned

private theorem s2Step252HeadG_distinct : (s2Step252HeadGRow.sign::s2Step252HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252HeadG_owned : (s2Step252HeadGRow.sign::s2Step252HeadGRow.payload).toFinset⊆s2Step252HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252HeadG_reserved : s2Step252HeadGBefore.reserve s2Step252HeadGFresh.toFinset=some s2Step252HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step252HeadGFresh,arenaWires]
  · norm_num [s2Step252HeadGBefore,s2Step252HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step252HeadGAfter,s2Step252HeadGBefore,s2Step252HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step252HeadG_checked : planRowResizeLog s2Step252HeadGBefore s2Step252HeadGRow 146 s2Step252HeadGFresh=
    some (s2Step252HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842],769⟩,growRow 769 s2Step252HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step252HeadGBefore s2Step252HeadGAfter s2Step252HeadGRow 146 s2Step252HeadGFresh
    s2Step252HeadG_distinct s2Step252HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step252HeadG_reserved
  have rowEq : WindowRow.mk (s2Step252HeadGRow.payload++s2Step252HeadGFresh) s2Step252HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step252HeadGvBefore : Arena := s2Step252HeadFAfter

private theorem s2Step252HeadGv_Incoming : rowsOwned s2Step252HeadGvBefore [s2Step252HeadGvRow,s2Step252HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step252HeadGRow,s2Step252HeadFRow,s2Step252HeadGvRow,s2Step252HeadFvRow] 2 s2Step252HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step252HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step252HeadGv_Outgoing : rowsOwned s2Step252HeadFvAfter [s2Step252HeadGvOut,s2Step252HeadFvOut] :=
  hmrRows_owned_drop s2Step252HeadFvAfter [s2Step252HeadGOut,s2Step252HeadFOut,s2Step252HeadGvOut,s2Step252HeadFvOut] 2 s2Step252HeadBank_outgoingOwned

private theorem s2Step252HeadGv_distinct : (s2Step252HeadGvRow.sign::s2Step252HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step252HeadGv_owned : (s2Step252HeadGvRow.sign::s2Step252HeadGvRow.payload).toFinset⊆s2Step252HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step252HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step252HeadGv_reserved : s2Step252HeadGvBefore.reserve s2Step252HeadGvFresh.toFinset=some s2Step252HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step252HeadGvFresh,arenaWires]
  · norm_num [s2Step252HeadGvBefore,s2Step252HeadFAfter,s2Step252HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step252HeadGvAfter,s2Step252HeadGvBefore,s2Step252HeadFAfter,s2Step252HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step252HeadGv_checked : planRowResizeLog s2Step252HeadGvBefore s2Step252HeadGvRow 142 s2Step252HeadGvFresh=
    some (s2Step252HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 800],771⟩,growRow 771 s2Step252HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step252HeadGvBefore s2Step252HeadGvAfter s2Step252HeadGvRow 142 s2Step252HeadGvFresh
    s2Step252HeadGv_distinct s2Step252HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step252HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step252HeadGvRow.payload++s2Step252HeadGvFresh) s2Step252HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step252HeadBank_rows : planWindowRowsLog s2Step252HeadGBefore [(s2Step252HeadGRow,146),(s2Step252HeadFRow,146),(s2Step252HeadGvRow,142),(s2Step252HeadFvRow,142)] [s2Step252HeadGFresh,s2Step252HeadFFresh,s2Step252HeadGvFresh,s2Step252HeadFvFresh]=
    some (s2Step252HeadFvAfter,[s2Step252HeadGOut,s2Step252HeadFOut,s2Step252HeadGvOut,s2Step252HeadFvOut],(growRow 769 s2Step252HeadGFresh ++ (growRow 768 s2Step252HeadFFresh ++ (growRow 771 s2Step252HeadGvFresh ++ (growRow 770 s2Step252HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step252HeadFvAfter [] []=some (s2Step252HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step252HeadFvBefore s2Step252HeadFvAfter s2Step252HeadFvAfter
    s2Step252HeadFvRow s2Step252HeadFvOut 142 s2Step252HeadFvFresh [] [] []
    (growRow 770 s2Step252HeadFvFresh) ([]) s2Step252HeadFv_Incoming s2Step252HeadFv_checked h4 s2Step252HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step252HeadGvBefore s2Step252HeadGvAfter s2Step252HeadFvAfter
    s2Step252HeadGvRow s2Step252HeadGvOut 142 s2Step252HeadGvFresh [(s2Step252HeadFvRow,142)] [s2Step252HeadFvFresh] [s2Step252HeadFvOut]
    (growRow 771 s2Step252HeadGvFresh) ((growRow 770 s2Step252HeadFvFresh ++ [])) s2Step252HeadGv_Incoming s2Step252HeadGv_checked h3 s2Step252HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step252HeadFBefore s2Step252HeadFAfter s2Step252HeadFvAfter
    s2Step252HeadFRow s2Step252HeadFOut 146 s2Step252HeadFFresh [(s2Step252HeadGvRow,142),(s2Step252HeadFvRow,142)] [s2Step252HeadGvFresh,s2Step252HeadFvFresh] [s2Step252HeadGvOut,s2Step252HeadFvOut]
    (growRow 768 s2Step252HeadFFresh) ((growRow 771 s2Step252HeadGvFresh ++ (growRow 770 s2Step252HeadFvFresh ++ []))) s2Step252HeadF_Incoming s2Step252HeadF_checked h2 s2Step252HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step252HeadGBefore s2Step252HeadGAfter s2Step252HeadFvAfter
    s2Step252HeadGRow s2Step252HeadGOut 146 s2Step252HeadGFresh [(s2Step252HeadFRow,146),(s2Step252HeadGvRow,142),(s2Step252HeadFvRow,142)] [s2Step252HeadFFresh,s2Step252HeadGvFresh,s2Step252HeadFvFresh] [s2Step252HeadFOut,s2Step252HeadGvOut,s2Step252HeadFvOut]
    (growRow 769 s2Step252HeadGFresh) ((growRow 768 s2Step252HeadFFresh ++ (growRow 771 s2Step252HeadGvFresh ++ (growRow 770 s2Step252HeadFvFresh ++ [])))) s2Step252HeadG_Incoming s2Step252HeadG_checked h1 s2Step252HeadG_Outgoing
  exact h0

private theorem s2Step252HeadBank_checked : compileHmrBankResizeLog .headroom s2Step252HeadGBefore ⟨s2Step252HeadFRow,s2Step252HeadGRow,s2Step252HeadFvRow,s2Step252HeadGvRow⟩ ⟨146,146,142,142⟩ [s2Step252HeadGFresh,s2Step252HeadFFresh,s2Step252HeadGvFresh,s2Step252HeadFvFresh]=
    some (s2Step252HeadFvAfter,⟨s2Step252HeadFOut,s2Step252HeadGOut,s2Step252HeadFvOut,s2Step252HeadGvOut⟩,(growRow 769 s2Step252HeadGFresh ++ (growRow 768 s2Step252HeadFFresh ++ (growRow 771 s2Step252HeadGvFresh ++ (growRow 770 s2Step252HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step252HeadBank_rows]
  rfl

private theorem s2Step252Front_checked : compileHmrSourceFrontLog s2Step252EntryFBefore s2Step252FrontBank 145 141 ⟨144,144,142,141⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step252FrontLog=some s2Step252FrontPlan := by
  have pairEq : s2Step252FrontPair=⟨s2Step252HeadFRow,s2Step252HeadGRow,s2Step252HeadFvRow,s2Step252HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step252FrontHead=⟨s2Step252ExitFRow,s2Step252ExitGRow,s2Step252ExitFvRow,s2Step252ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step252Add0A=s2Step252FrontHead.f.wires := by decide +kernel
  have gEq : s2Step252Add0B=s2Step252FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step252Add1A=s2Step252FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step252Add1B=s2Step252FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step252EntryFBefore s2Step252FrontBank 145 141 ⟨144,144,142,141⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step252FrontLog s2Step252FrontPlan
  · exact s2Step252Front_entry
  · exact s2Step252EntryBank_checked
  · exact s2Step252Front_sigma
  · rfl
  · exact s2Step252Front_branch
  · rfl
  · simpa only [s2Step252FrontPlan,pairEq] using s2Step252HeadBank_checked
  · simpa only [s2Step252FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step252F4_checked
  · exact s2Step252Counter_checked
  · rfl
  · simpa only [s2Step252FrontPlan,headEq] using s2Step252ExitBank_checked

private theorem s2Step252Complete_explicit_checked : compileHmrEarlyStepLog s2Step252EntryFBefore s2Step252FrontBank 145 141 ⟨144,144,142,141⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step252CompleteLog=some s2Step252CompletePlan := by
  let Q := s2Step252EarlyControlPlan
  have hq := s2Step252EarlyControl_plan_checked
  have fv1 : s2Step252CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step252CompleteOut.fv.payload[2]?.getD s2Step252CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step252CompleteOut.fv.payload[3]?.getD s2Step252CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step252CompleteOut.fv.payload[4]?.getD s2Step252CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step252EntryFBefore s2Step252EarlyControlArena s2Step252FrontBank 145 141 ⟨144,144,142,141⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step252CompleteLog s2Step252FrontPlan Q
    s2Step252Front_checked s2Step252Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step252Complete_owned s2Step252Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step252EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 s2Step252CompleteOut.fv.second (s2Step252CompleteOut.fv.payload[2]?.getD s2Step252CompleteOut.fv.sign) (s2Step252CompleteOut.fv.payload[3]?.getD s2Step252CompleteOut.fv.sign) (s2Step252CompleteOut.fv.payload[4]?.getD s2Step252CompleteOut.fv.sign) 837 51 s2Step252EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep252Arena : Arena := s2Step252EntryFBefore
def s2PrivateStep252Bank : WindowBank := s2Step252FrontBank
def s2PrivateStep252Spec : HmrSourceWalkStepLog := ⟨145,141,⟨144,144,142,141⟩,51,.early s2Step252CompleteLog⟩
def s2PrivateStep252Plan : HmrSourceStepPlan := .early s2Step252CompletePlan
theorem s2PrivateStep252_source : s2PrivateStep252Spec=s2ObservedLogs240[12] := rfl
theorem s2PrivateStep252_checked : compileHmrSourceStepLog s2PrivateStep252Arena s2PrivateStep252Bank
    s2PrivateStep252Spec.fgWidth s2PrivateStep252Spec.vWidth s2PrivateStep252Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 252 s2PrivateStep252Spec.need none s2PrivateStep252Spec.log=some s2PrivateStep252Plan := by
  change compileHmrSourceStepLog s2Step252EntryFBefore s2Step252FrontBank 145 141 ⟨144,144,142,141⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 252 51 none (.early s2Step252CompleteLog)=some (.early s2Step252CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 252<498)]
  rw [s2Step252Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
