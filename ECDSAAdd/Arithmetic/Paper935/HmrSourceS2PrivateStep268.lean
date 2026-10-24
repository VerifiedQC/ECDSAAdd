import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep266
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

private def s2Step268CompleteMoves : List (Wire × Wire) := [(816,649)]

private def s2Step268EarlyControlLog : HmrEarlyControlLog := ⟨[816, 891, 836, 788, 786],[844],[830],[800, 894, 896, 901, 903, 904],[]⟩

private def s2Step268FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [788, 786], [], [877]],[[844], [836], [891], [794]],[[], [], [], []]⟩,[817],[779],[830],[800],[894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step268CompleteLog : HmrEarlyStepLog := ⟨s2Step268FrontLog,s2Step268CompleteMoves,s2Step268EarlyControlLog⟩

private def s2Step268ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648],768⟩

private def s2Step268ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩

private def s2Step268ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step268ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877],771⟩

private def s2Step268FrontOut : WindowBank := ⟨s2Step268ExitFOut,s2Step268ExitGOut,s2Step268ExitFvOut,s2Step268ExitGvOut⟩

private def s2Step268CompleteOut : WindowBank := s2Step268FrontOut.repacked s2Step268CompleteMoves

private def s2Step268EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step268EarlyControlPositiveArena,[844],s2Step268EarlyControlEqualityArena,[830],⟨⟨817,false⟩,[⟨⟨844,false⟩,830⟩]⟩⟩

private def s2Step268EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905)),Finset.filter_subset _ _⟩

private def s2Step268EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905)),Finset.filter_subset _ _⟩

private def s2Step268EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,816⟩,⟨⟨774,false⟩,891⟩,⟨⟨775,false⟩,836⟩,⟨⟨776,false⟩,788⟩,⟨⟨777,false⟩,786⟩]⟩

private def s2Step268EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step268EarlyControlZeroArena,s2Step268EarlyControlZeroPlan,s2Step268EarlyControlClassPlan,s2Step268EarlyControlFlagArena,s2Step268EarlyControlFittedArena,s2Step268EarlyControlHistoryArena,s2Step268EarlyControlSigmaArena,s2Step268EarlyControlOutputArena,s2Step268EarlyControlLog⟩

private def s2Step268CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step268Counter_bounded : s2Step268CounterWork.toFinset⊆arenaWires := by norm_num [s2Step268CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step268HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268CounterDuring : Arena := ⟨s2Step268HeadFvAfter.live∪s2Step268CounterWork.toFinset,Finset.union_subset s2Step268HeadFvAfter.bounded s2Step268Counter_bounded⟩

private def s2Step268EntryFFresh : List Wire := []

private def s2Step268EntryFvFresh : List Wire := []

private def s2Step268EntryGFresh : List Wire := [788, 786]

private def s2Step268EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268EntryGvFresh : List Wire := [877]

private def s2Step268ExitFExtra : List Wire := [649, 836]

private def s2Step268ExitGExtra : List Wire := [788, 786, 844]

private def s2Step268ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<649) ∨ (650≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268ExitGvExtra : List Wire := [891]

private def s2Step268Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268Add0Work : List Wire := [894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step268Add0_bounded : s2Step268Add0Work.toFinset⊆arenaWires := by
  have h : s2Step268Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step268Add0During : Arena := ⟨s2Step268Add0Arena.live∪s2Step268Add0Work.toFinset,Finset.union_subset s2Step268Add0Arena.bounded s2Step268Add0_bounded⟩

private def s2Step268Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268Add1Work : List Wire := [894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step268Add1_bounded : s2Step268Add1Work.toFinset⊆arenaWires := by
  have h : s2Step268Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step268Add1During : Arena := ⟨s2Step268Add1Arena.live∪s2Step268Add1Work.toFinset,Finset.union_subset s2Step268Add1Arena.bounded s2Step268Add1_bounded⟩

private def s2Step268F4FlagArena : Arena := ⟨s2Step268HeadFvAfter.live∪{830},Finset.union_subset s2Step268HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step268F4Plan : HmrHybridF4Plan := ⟨s2Step268F4FlagArena,[830],s2Step268Add0Arena,[800],s2Step268Add0During,s2Step268Add0Work,s2Step268Add1During,s2Step268Add1Work⟩

private def s2Step268HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 836],768⟩

private def s2Step268HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩

private def s2Step268HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 788, 786, 844],769⟩

private def s2Step268HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 891],771⟩

private def s2Step268FrontHead : WindowBank := ⟨s2Step268HeadFOut,s2Step268HeadGOut,s2Step268HeadFvOut,s2Step268HeadGvOut⟩

private def s2Step268EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step268EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782],770⟩

private def s2Step268EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 788, 786],769⟩

private def s2Step268EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877],771⟩

private def s2Step268FrontPair : WindowBank := ⟨s2Step268EntryFOut,s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut⟩

private def s2Step268FrontSigmaArena : Arena := ⟨s2Step268EntryGvAfter.live∪{817},Finset.union_subset s2Step268EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step268HeadFFresh : List Wire := [836]

private def s2Step268HeadFvFresh : List Wire := [794]

private def s2Step268HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268HeadGFresh : List Wire := [844]

private def s2Step268HeadGvFresh : List Wire := [891]

private def s2Step268FrontPlan : HmrSourceFront := ⟨s2Step268EntryGvAfter,s2Step268FrontPair,(growRow 768 s2Step268EntryFFresh ++ (growRow 769 s2Step268EntryGFresh ++ (growRow 770 s2Step268EntryFvFresh ++ (growRow 771 s2Step268EntryGvFresh ++ [])))),s2Step268FrontSigmaArena,[817],s2Step268HeadGBefore,[779],
  s2Step268HeadFvAfter,s2Step268FrontHead,(growRow 769 s2Step268HeadGFresh ++ (growRow 768 s2Step268HeadFFresh ++ (growRow 771 s2Step268HeadGvFresh ++ (growRow 770 s2Step268HeadFvFresh ++ [])))),s2Step268F4Plan,s2Step268CounterDuring,s2Step268CounterWork,s2Step268ExitGvAfter,s2Step268FrontOut,(shrinkRow 769 s2Step268ExitGExtra ++ (shrinkRow 768 s2Step268ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step268ExitGvExtra ++ []))))⟩

private def s2Step268CompletePlan : HmrEarlyStepPlan := ⟨s2Step268FrontPlan,s2Step268EarlyControlArena,s2Step268EarlyControlPlan,s2Step268CompleteMoves⟩

private theorem s2Step268Complete_apart : List.Disjoint (s2Step268CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [817, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] := by
  have nd : ((s2Step268CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[817, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step268Complete_owned : (s2Step268CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step268EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private def s2Step268CompleteMoveArena : Arena := ⟨s2Step268ExitGvAfter.live∪{649},Finset.union_subset s2Step268ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step268Complete_repack : s2Step268ExitGvAfter.checkRepack s2Step268CompleteMoves=some s2Step268EarlyControlArena := by
  have owned : 816∈s2Step268ExitGvAfter.live := by norm_num [s2Step268ExitGvAfter,arenaWires]
  have reserve : s2Step268ExitGvAfter.reserve {649}=some s2Step268CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step268ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step268CompleteMoveArena.retireSet {816}=s2Step268EarlyControlArena := by
    unfold Arena.retireSet s2Step268EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step268CompleteMoveArena,s2Step268ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step268CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step268CompleteMoveArena.retireSet {816}).checkRepack []=some s2Step268EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step268EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s2Step268EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlSigmaArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_branch : compileHmrBranchRetirement s2Step268EarlyControlSigmaArena 779=some s2Step268EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step268EarlyControl_branchOwned
  · ext q
    simp [s2Step268EarlyControlOutputArena,s2Step268EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step268EarlyControl_classEqualityBorrow : s2Step268EarlyControlPositiveArena.checkBorrow (([817, 844] : List Wire).length-1) s2Step268EarlyControlLog.classWork=some s2Step268EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step268EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step268EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step268EarlyControlEqualityArena,s2Step268EarlyControlPositiveArena,s2Step268EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step268EarlyControl_classEqualityOwned : ([817, 844] : List Wire).toFinset⊆s2Step268EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_classEquality : compileHmrEqualityLog s2Step268EarlyControlPositiveArena [817, 844] 0 s2Step268EarlyControlLog.classWork=some (s2Step268EarlyControlEqualityArena,s2Step268EarlyControlLog.classWork,s2Step268EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step268EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step268EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step268EarlyControl_classOwned : ([777, 786, 817] : List Wire).toFinset⊆s2Step268EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_positiveBorrow : s2Step268EarlyControlZeroArena.checkBorrow (1) s2Step268EarlyControlLog.positiveWork=some s2Step268EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step268EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step268EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step268EarlyControlPositiveArena,s2Step268EarlyControlZeroArena,s2Step268EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step268EarlyControl_class : compileHmrSourceClassLog s2Step268EarlyControlZeroArena false 777 s2Step268EarlyControlZeroPlan.top 0 817 s2Step268EarlyControlLog.positiveWork s2Step268EarlyControlLog.classWork=some s2Step268EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step268EarlyControlClassPlan s2Step268EarlyControlZeroArena false 777 s2Step268EarlyControlZeroPlan.top 0 817
  constructor
  · decide +kernel
  · exact s2Step268EarlyControl_classOwned
  · exact s2Step268EarlyControl_positiveBorrow
  · exact s2Step268EarlyControl_classEquality

private theorem s2Step268EarlyControl_entryRecordOwned : ([779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step268EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_entrySigmaOwned : ([817, 254] : List Wire).toFinset⊆s2Step268EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_fitBorrow : s2Step268EarlyControlFlagArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step268EarlyControlLog.recordFresh=some s2Step268EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step268EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step268EarlyControlFlagArena (fun q => (0≤q ∧ q<905)) rfl
      decide +kernel
    · ext q
      simp [s2Step268EarlyControlFittedArena,s2Step268EarlyControlFlagArena,s2Step268EarlyControlLog,arenaWires]

private theorem s2Step268EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step268EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlFlagArena (fun q => (0≤q ∧ q<905)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_fit : compileHmrRecordGrowLog s2Step268EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step268EarlyControlLog.recordFresh=some s2Step268EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step268EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step268EarlyControl_fitBorrow

private theorem s2Step268EarlyControl_flagsBorrow : s2Step268EarlyControlEqualityArena.checkBorrow (6) s2Step268EarlyControlLog.flagWork=some s2Step268EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step268EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step268EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step268EarlyControlFlagArena,s2Step268EarlyControlEqualityArena,s2Step268EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step268EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step268EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_flags : compileHmrFlagsLog s2Step268EarlyControlClassPlan.equalityArena s2Step268EarlyControlClassPlan.equality.top 253 252 251 s2Step268EarlyControlLog.flagWork=some s2Step268EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step268EarlyControl_flagsOwned⟩
  · exact s2Step268EarlyControl_flagsBorrow

private theorem s2Step268EarlyControl_historyBorrow : s2Step268EarlyControlArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step268EarlyControlLog.recordFresh=some s2Step268EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step268EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step268EarlyControlArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step268EarlyControlHistoryArena,s2Step268EarlyControlArena,s2Step268EarlyControlLog,arenaWires]

private theorem s2Step268EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step268EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_history : compileHmrRecordGrowLog s2Step268EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step268EarlyControlLog.recordFresh=some s2Step268EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step268EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step268EarlyControl_historyBorrow

private theorem s2Step268EarlyControl_sigmaOwned : ([254, 817] : List Wire).toFinset⊆s2Step268EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlHistoryArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_sigmaReleaseOwned : ([817] : List Wire).toFinset⊆s2Step268EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlHistoryArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_sigmaRelease : s2Step268EarlyControlHistoryArena.release {817} (fun _ => false)=some s2Step268EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step268EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step268EarlyControlSigmaArena,s2Step268EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step268EarlyControl_sigma : compileHmrSigmaDropLog s2Step268EarlyControlHistoryArena false 0 0 254 817 []=some s2Step268EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step268EarlyControl_sigmaOwned⟩
  · exact s2Step268EarlyControl_sigmaRelease

private theorem s2Step268EarlyControl_zeroBorrow : s2Step268EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step268EarlyControlLog.zeroWork=some s2Step268EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step268EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step268EarlyControlArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step268EarlyControlZeroArena,s2Step268EarlyControlArena,s2Step268EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step268EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step268EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step268EarlyControlArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EarlyControl_zero : compileHmrEqualityLog s2Step268EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step268EarlyControlLog.zeroWork=some (s2Step268EarlyControlZeroArena,s2Step268EarlyControlLog.zeroWork,s2Step268EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step268EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step268EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step268EarlyControl_logged : s2Step268EarlyControlPlan.Logged s2Step268EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 817 254 253 252 251 779 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step268EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step268EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step268EarlyControl_zero
  · exact s2Step268EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step268EarlyControl_flags
  · exact s2Step268EarlyControl_fit
  · exact s2Step268EarlyControl_history
  · exact s2Step268EarlyControl_sigma
  · exact s2Step268EarlyControl_branch

private theorem s2Step268EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step268EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 817 254 253 252 251 779 52 s2Step268EarlyControlLog=some s2Step268EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step268EarlyControlPlan s2Step268EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 817 254 253 252 251 779 52 s2Step268EarlyControl_logged

private def s2Step268EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step268EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782],770⟩

private def s2Step268EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step268EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩

private def s2Step268FrontBank : WindowBank := ⟨s2Step268EntryFRow,s2Step268EntryGRow,s2Step268EntryFvRow,s2Step268EntryGvRow⟩

private def s2Step268Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 836, 768]

private def s2Step268Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 788, 786, 844, 769]

private def s2Step268Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 770]

private def s2Step268Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 891, 771]

private theorem s2Step268Counter_apart : Disjoint s2Step268HeadFvAfter.live s2Step268CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step268HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268Counter_borrowed : s2Step268HeadFvAfter.checkBorrow 4 s2Step268CounterWork=some s2Step268CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step268HeadFvAfter s2Step268CounterDuring s2Step268CounterWork.toFinset s2Step268Counter_bounded s2Step268Counter_apart rfl

private theorem s2Step268Counter_owned : (817::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step268HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step268HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268Counter_checked : compileHmrCounterStepLog s2Step268HeadFvAfter true 817 [772, 773, 774, 775, 776, 777] s2Step268CounterWork=some s2Step268CounterDuring := by
  have owned : ∀q∈817::[772, 773, 774, 775, 776, 777],q∈s2Step268HeadFvAfter.live := fun q hq => s2Step268Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step268Counter_borrowed

private def s2Step268EntryFAfter : Arena := s2Step268EntryFBefore

private theorem s2Step268EntryBank_incomingDistinct : ([s2Step268EntryFRow,s2Step268EntryGRow,s2Step268EntryFvRow,s2Step268EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268EntryF_Incoming : rowsOwned s2Step268EntryFBefore [s2Step268EntryFRow,s2Step268EntryGRow,s2Step268EntryFvRow,s2Step268EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268EntryFRow,s2Step268EntryGRow,s2Step268EntryFvRow,s2Step268EntryGvRow] 0 s2Step268EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268EntryBank_outgoingOwned : rowsOwned s2Step268EntryGvAfter [s2Step268EntryFOut,s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step268EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268EntryF_Outgoing : rowsOwned s2Step268EntryGvAfter [s2Step268EntryFOut,s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut] :=
  hmrRows_owned_drop s2Step268EntryGvAfter [s2Step268EntryFOut,s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut] 0 s2Step268EntryBank_outgoingOwned

private theorem s2Step268EntryF_distinct : (s2Step268EntryFRow.sign::s2Step268EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268EntryF_owned : (s2Step268EntryFRow.sign::s2Step268EntryFRow.payload).toFinset⊆s2Step268EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EntryF_reserved : s2Step268EntryFBefore.reserve s2Step268EntryFFresh.toFinset=some s2Step268EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step268EntryFFresh,arenaWires]
  · norm_num [s2Step268EntryFBefore,s2Step268EntryFFresh,arenaWires]
  · simp only [s2Step268EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step268EntryF_checked : planRowResizeLog s2Step268EntryFBefore s2Step268EntryFRow 138 s2Step268EntryFFresh=
    some (s2Step268EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩,growRow 768 s2Step268EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step268EntryFBefore s2Step268EntryFAfter s2Step268EntryFRow 138 s2Step268EntryFFresh
    s2Step268EntryF_distinct s2Step268EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step268EntryF_reserved
  have rowEq : WindowRow.mk (s2Step268EntryFRow.payload++s2Step268EntryFFresh) s2Step268EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step268EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268EntryFvAfter : Arena := s2Step268EntryGAfter

private def s2Step268EntryFvBefore : Arena := s2Step268EntryGAfter

private theorem s2Step268EntryFv_Incoming : rowsOwned s2Step268EntryFvBefore [s2Step268EntryFvRow,s2Step268EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268EntryFRow,s2Step268EntryGRow,s2Step268EntryFvRow,s2Step268EntryGvRow] 2 s2Step268EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268EntryFv_Outgoing : rowsOwned s2Step268EntryGvAfter [s2Step268EntryFvOut,s2Step268EntryGvOut] :=
  hmrRows_owned_drop s2Step268EntryGvAfter [s2Step268EntryFOut,s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut] 2 s2Step268EntryBank_outgoingOwned

private theorem s2Step268EntryFv_distinct : (s2Step268EntryFvRow.sign::s2Step268EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268EntryFv_owned : (s2Step268EntryFvRow.sign::s2Step268EntryFvRow.payload).toFinset⊆s2Step268EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EntryFv_reserved : s2Step268EntryFvBefore.reserve s2Step268EntryFvFresh.toFinset=some s2Step268EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step268EntryFvFresh,arenaWires]
  · norm_num [s2Step268EntryFvBefore,s2Step268EntryGAfter,s2Step268EntryFvFresh,arenaWires]
  · simp only [s2Step268EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step268EntryFv_checked : planRowResizeLog s2Step268EntryFvBefore s2Step268EntryFvRow 149 s2Step268EntryFvFresh=
    some (s2Step268EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782],770⟩,growRow 770 s2Step268EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step268EntryFvBefore s2Step268EntryFvAfter s2Step268EntryFvRow 149 s2Step268EntryFvFresh
    s2Step268EntryFv_distinct s2Step268EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step268EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step268EntryFvRow.payload++s2Step268EntryFvFresh) s2Step268EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step268EntryGBefore : Arena := s2Step268EntryFBefore

private theorem s2Step268EntryG_Incoming : rowsOwned s2Step268EntryGBefore [s2Step268EntryGRow,s2Step268EntryFvRow,s2Step268EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268EntryFRow,s2Step268EntryGRow,s2Step268EntryFvRow,s2Step268EntryGvRow] 1 s2Step268EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268EntryG_Outgoing : rowsOwned s2Step268EntryGvAfter [s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut] :=
  hmrRows_owned_drop s2Step268EntryGvAfter [s2Step268EntryFOut,s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut] 1 s2Step268EntryBank_outgoingOwned

private theorem s2Step268EntryG_distinct : (s2Step268EntryGRow.sign::s2Step268EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268EntryG_owned : (s2Step268EntryGRow.sign::s2Step268EntryGRow.payload).toFinset⊆s2Step268EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EntryG_reserved : s2Step268EntryGBefore.reserve s2Step268EntryGFresh.toFinset=some s2Step268EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step268EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step268EntryGBefore,s2Step268EntryFBefore,s2Step268EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step268EntryGAfter,s2Step268EntryGBefore,s2Step268EntryFBefore,s2Step268EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step268EntryG_checked : planRowResizeLog s2Step268EntryGBefore s2Step268EntryGRow 138 s2Step268EntryGFresh=
    some (s2Step268EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 788, 786],769⟩,growRow 769 s2Step268EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step268EntryGBefore s2Step268EntryGAfter s2Step268EntryGRow 138 s2Step268EntryGFresh
    s2Step268EntryG_distinct s2Step268EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step268EntryG_reserved
  have rowEq : WindowRow.mk (s2Step268EntryGRow.payload++s2Step268EntryGFresh) s2Step268EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 788, 786],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step268EntryGvBefore : Arena := s2Step268EntryGAfter

private theorem s2Step268EntryGv_Incoming : rowsOwned s2Step268EntryGvBefore [s2Step268EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268EntryFRow,s2Step268EntryGRow,s2Step268EntryFvRow,s2Step268EntryGvRow] 3 s2Step268EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268EntryGv_Outgoing : rowsOwned s2Step268EntryGvAfter [s2Step268EntryGvOut] :=
  hmrRows_owned_drop s2Step268EntryGvAfter [s2Step268EntryFOut,s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut] 3 s2Step268EntryBank_outgoingOwned

private theorem s2Step268EntryGv_distinct : (s2Step268EntryGvRow.sign::s2Step268EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268EntryGv_owned : (s2Step268EntryGvRow.sign::s2Step268EntryGvRow.payload).toFinset⊆s2Step268EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268EntryGv_reserved : s2Step268EntryGvBefore.reserve s2Step268EntryGvFresh.toFinset=some s2Step268EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step268EntryGvFresh,arenaWires]
  · norm_num [s2Step268EntryGvBefore,s2Step268EntryGAfter,s2Step268EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step268EntryGvAfter,s2Step268EntryGvBefore,s2Step268EntryGAfter,s2Step268EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step268EntryGv_checked : planRowResizeLog s2Step268EntryGvBefore s2Step268EntryGvRow 149 s2Step268EntryGvFresh=
    some (s2Step268EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877],771⟩,growRow 771 s2Step268EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step268EntryGvBefore s2Step268EntryGvAfter s2Step268EntryGvRow 149 s2Step268EntryGvFresh
    s2Step268EntryGv_distinct s2Step268EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step268EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step268EntryGvRow.payload++s2Step268EntryGvFresh) s2Step268EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step268EntryBank_rows : planWindowRowsLog s2Step268EntryFBefore [(s2Step268EntryFRow,138),(s2Step268EntryGRow,138),(s2Step268EntryFvRow,149),(s2Step268EntryGvRow,149)] [s2Step268EntryFFresh,s2Step268EntryGFresh,s2Step268EntryFvFresh,s2Step268EntryGvFresh]=
    some (s2Step268EntryGvAfter,[s2Step268EntryFOut,s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut],(growRow 768 s2Step268EntryFFresh ++ (growRow 769 s2Step268EntryGFresh ++ (growRow 770 s2Step268EntryFvFresh ++ (growRow 771 s2Step268EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step268EntryGvAfter [] []=some (s2Step268EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step268EntryGvBefore s2Step268EntryGvAfter s2Step268EntryGvAfter
    s2Step268EntryGvRow s2Step268EntryGvOut 149 s2Step268EntryGvFresh [] [] []
    (growRow 771 s2Step268EntryGvFresh) ([]) s2Step268EntryGv_Incoming s2Step268EntryGv_checked h4 s2Step268EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step268EntryFvBefore s2Step268EntryFvAfter s2Step268EntryGvAfter
    s2Step268EntryFvRow s2Step268EntryFvOut 149 s2Step268EntryFvFresh [(s2Step268EntryGvRow,149)] [s2Step268EntryGvFresh] [s2Step268EntryGvOut]
    (growRow 770 s2Step268EntryFvFresh) ((growRow 771 s2Step268EntryGvFresh ++ [])) s2Step268EntryFv_Incoming s2Step268EntryFv_checked h3 s2Step268EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step268EntryGBefore s2Step268EntryGAfter s2Step268EntryGvAfter
    s2Step268EntryGRow s2Step268EntryGOut 138 s2Step268EntryGFresh [(s2Step268EntryFvRow,149),(s2Step268EntryGvRow,149)] [s2Step268EntryFvFresh,s2Step268EntryGvFresh] [s2Step268EntryFvOut,s2Step268EntryGvOut]
    (growRow 769 s2Step268EntryGFresh) ((growRow 770 s2Step268EntryFvFresh ++ (growRow 771 s2Step268EntryGvFresh ++ []))) s2Step268EntryG_Incoming s2Step268EntryG_checked h2 s2Step268EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step268EntryFBefore s2Step268EntryFAfter s2Step268EntryGvAfter
    s2Step268EntryFRow s2Step268EntryFOut 138 s2Step268EntryFFresh [(s2Step268EntryGRow,138),(s2Step268EntryFvRow,149),(s2Step268EntryGvRow,149)] [s2Step268EntryGFresh,s2Step268EntryFvFresh,s2Step268EntryGvFresh] [s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut]
    (growRow 768 s2Step268EntryFFresh) ((growRow 769 s2Step268EntryGFresh ++ (growRow 770 s2Step268EntryFvFresh ++ (growRow 771 s2Step268EntryGvFresh ++ [])))) s2Step268EntryF_Incoming s2Step268EntryF_checked h1 s2Step268EntryF_Outgoing
  exact h0

private theorem s2Step268EntryBank_checked : compileHmrBankResizeLog .entry s2Step268EntryFBefore ⟨s2Step268EntryFRow,s2Step268EntryGRow,s2Step268EntryFvRow,s2Step268EntryGvRow⟩ ⟨138,138,149,149⟩ [s2Step268EntryFFresh,s2Step268EntryGFresh,s2Step268EntryFvFresh,s2Step268EntryGvFresh]=
    some (s2Step268EntryGvAfter,⟨s2Step268EntryFOut,s2Step268EntryGOut,s2Step268EntryFvOut,s2Step268EntryGvOut⟩,(growRow 768 s2Step268EntryFFresh ++ (growRow 769 s2Step268EntryGFresh ++ (growRow 770 s2Step268EntryFvFresh ++ (growRow 771 s2Step268EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step268EntryBank_rows]
  rfl

private def s2Step268ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<649) ∨ (650≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268ExitFBefore : Arena := s2Step268ExitGAfter

private def s2Step268ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 836],768⟩

private def s2Step268ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩

private def s2Step268ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 788, 786, 844],769⟩

private def s2Step268ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 891],771⟩

private theorem s2Step268ExitBank_incomingDistinct : ([s2Step268ExitGRow,s2Step268ExitFRow,s2Step268ExitFvRow,s2Step268ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268ExitF_Incoming : rowsOwned s2Step268ExitFBefore [s2Step268ExitFRow,s2Step268ExitFvRow,s2Step268ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268ExitGRow,s2Step268ExitFRow,s2Step268ExitFvRow,s2Step268ExitGvRow] 1 s2Step268ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268ExitFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268ExitBank_outgoingOwned : rowsOwned s2Step268ExitGvAfter [s2Step268ExitGOut,s2Step268ExitFOut,s2Step268ExitFvOut,s2Step268ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step268ExitGvAfter (fun q => (0≤q ∧ q<649) ∨ (650≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268ExitF_Outgoing : rowsOwned s2Step268ExitGvAfter [s2Step268ExitFOut,s2Step268ExitFvOut,s2Step268ExitGvOut] :=
  hmrRows_owned_drop s2Step268ExitGvAfter [s2Step268ExitGOut,s2Step268ExitFOut,s2Step268ExitFvOut,s2Step268ExitGvOut] 1 s2Step268ExitBank_outgoingOwned

private theorem s2Step268ExitF_distinct : (s2Step268ExitFRow.sign::s2Step268ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268ExitF_owned : (s2Step268ExitFRow.sign::s2Step268ExitFRow.payload).toFinset⊆s2Step268ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268ExitFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268ExitF_retired : s2Step268ExitFBefore.retireSet s2Step268ExitFExtra.toFinset=s2Step268ExitFAfter := by
  unfold Arena.retireSet s2Step268ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step268ExitFBefore,s2Step268ExitGAfter,s2Step268ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step268ExitF_checked : planRowResizeLog s2Step268ExitFBefore s2Step268ExitFRow 137 []=
    some (s2Step268ExitFAfter,s2Step268ExitFOut,shrinkRow 768 s2Step268ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step268ExitFBefore s2Step268ExitFRow 137 s2Step268ExitF_distinct s2Step268ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step268ExitFRow.payload.take 137) s2Step268ExitFRow.sign=s2Step268ExitFOut := by decide +kernel
  have hi : s2Step268ExitFRow.payload.drop 137=s2Step268ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step268ExitF_retired] at result
  exact result

private def s2Step268ExitFvAfter : Arena := s2Step268ExitFAfter

private def s2Step268ExitFvBefore : Arena := s2Step268ExitFAfter

private theorem s2Step268ExitFv_Incoming : rowsOwned s2Step268ExitFvBefore [s2Step268ExitFvRow,s2Step268ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268ExitGRow,s2Step268ExitFRow,s2Step268ExitFvRow,s2Step268ExitGvRow] 2 s2Step268ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268ExitFvBefore (fun q => (0≤q ∧ q<649) ∨ (650≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268ExitFv_Outgoing : rowsOwned s2Step268ExitGvAfter [s2Step268ExitFvOut,s2Step268ExitGvOut] :=
  hmrRows_owned_drop s2Step268ExitGvAfter [s2Step268ExitGOut,s2Step268ExitFOut,s2Step268ExitFvOut,s2Step268ExitGvOut] 2 s2Step268ExitBank_outgoingOwned

private theorem s2Step268ExitFv_distinct : (s2Step268ExitFvRow.sign::s2Step268ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268ExitFv_owned : (s2Step268ExitFvRow.sign::s2Step268ExitFvRow.payload).toFinset⊆s2Step268ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268ExitFvBefore (fun q => (0≤q ∧ q<649) ∨ (650≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268ExitFv_reserved : s2Step268ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step268ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step268ExitFv_checked : planRowResizeLog s2Step268ExitFvBefore s2Step268ExitFvRow 150 []=
    some (s2Step268ExitFvAfter,s2Step268ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step268ExitFvBefore s2Step268ExitFvAfter s2Step268ExitFvRow 150 []
    s2Step268ExitFv_distinct s2Step268ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step268ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step268ExitFvRow.payload++[]) s2Step268ExitFvRow.sign=s2Step268ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step268ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private theorem s2Step268ExitG_Incoming : rowsOwned s2Step268ExitGBefore [s2Step268ExitGRow,s2Step268ExitFRow,s2Step268ExitFvRow,s2Step268ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268ExitGRow,s2Step268ExitFRow,s2Step268ExitFvRow,s2Step268ExitGvRow] 0 s2Step268ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268ExitG_Outgoing : rowsOwned s2Step268ExitGvAfter [s2Step268ExitGOut,s2Step268ExitFOut,s2Step268ExitFvOut,s2Step268ExitGvOut] :=
  hmrRows_owned_drop s2Step268ExitGvAfter [s2Step268ExitGOut,s2Step268ExitFOut,s2Step268ExitFvOut,s2Step268ExitGvOut] 0 s2Step268ExitBank_outgoingOwned

private theorem s2Step268ExitG_distinct : (s2Step268ExitGRow.sign::s2Step268ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268ExitG_owned : (s2Step268ExitGRow.sign::s2Step268ExitGRow.payload).toFinset⊆s2Step268ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268ExitG_retired : s2Step268ExitGBefore.retireSet s2Step268ExitGExtra.toFinset=s2Step268ExitGAfter := by
  unfold Arena.retireSet s2Step268ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step268ExitGBefore,s2Step268ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step268ExitG_checked : planRowResizeLog s2Step268ExitGBefore s2Step268ExitGRow 136 []=
    some (s2Step268ExitGAfter,s2Step268ExitGOut,shrinkRow 769 s2Step268ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step268ExitGBefore s2Step268ExitGRow 136 s2Step268ExitG_distinct s2Step268ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step268ExitGRow.payload.take 136) s2Step268ExitGRow.sign=s2Step268ExitGOut := by decide +kernel
  have hi : s2Step268ExitGRow.payload.drop 136=s2Step268ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step268ExitG_retired] at result
  exact result

private def s2Step268ExitGvBefore : Arena := s2Step268ExitFAfter

private theorem s2Step268ExitGv_Incoming : rowsOwned s2Step268ExitGvBefore [s2Step268ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268ExitGRow,s2Step268ExitFRow,s2Step268ExitFvRow,s2Step268ExitGvRow] 3 s2Step268ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268ExitGvBefore (fun q => (0≤q ∧ q<649) ∨ (650≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268ExitGv_Outgoing : rowsOwned s2Step268ExitGvAfter [s2Step268ExitGvOut] :=
  hmrRows_owned_drop s2Step268ExitGvAfter [s2Step268ExitGOut,s2Step268ExitFOut,s2Step268ExitFvOut,s2Step268ExitGvOut] 3 s2Step268ExitBank_outgoingOwned

private theorem s2Step268ExitGv_distinct : (s2Step268ExitGvRow.sign::s2Step268ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268ExitGv_owned : (s2Step268ExitGvRow.sign::s2Step268ExitGvRow.payload).toFinset⊆s2Step268ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268ExitGvBefore (fun q => (0≤q ∧ q<649) ∨ (650≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268ExitGv_retired : s2Step268ExitGvBefore.retireSet s2Step268ExitGvExtra.toFinset=s2Step268ExitGvAfter := by
  unfold Arena.retireSet s2Step268ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step268ExitGvBefore,s2Step268ExitFAfter,s2Step268ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step268ExitGv_checked : planRowResizeLog s2Step268ExitGvBefore s2Step268ExitGvRow 149 []=
    some (s2Step268ExitGvAfter,s2Step268ExitGvOut,shrinkRow 771 s2Step268ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step268ExitGvBefore s2Step268ExitGvRow 149 s2Step268ExitGv_distinct s2Step268ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step268ExitGvRow.payload.take 149) s2Step268ExitGvRow.sign=s2Step268ExitGvOut := by decide +kernel
  have hi : s2Step268ExitGvRow.payload.drop 149=s2Step268ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step268ExitGv_retired] at result
  exact result

private theorem s2Step268ExitBank_rows : planWindowRowsLog s2Step268ExitGBefore [(s2Step268ExitGRow,136),(s2Step268ExitFRow,137),(s2Step268ExitFvRow,150),(s2Step268ExitGvRow,149)] [[],[],[],[]]=
    some (s2Step268ExitGvAfter,[s2Step268ExitGOut,s2Step268ExitFOut,s2Step268ExitFvOut,s2Step268ExitGvOut],(shrinkRow 769 s2Step268ExitGExtra ++ (shrinkRow 768 s2Step268ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step268ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step268ExitGvAfter [] []=some (s2Step268ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step268ExitGvBefore s2Step268ExitGvAfter s2Step268ExitGvAfter
    s2Step268ExitGvRow s2Step268ExitGvOut 149 [] [] [] []
    (shrinkRow 771 s2Step268ExitGvExtra) ([]) s2Step268ExitGv_Incoming s2Step268ExitGv_checked h4 s2Step268ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step268ExitFvBefore s2Step268ExitFvAfter s2Step268ExitGvAfter
    s2Step268ExitFvRow s2Step268ExitFvOut 150 [] [(s2Step268ExitGvRow,149)] [[]] [s2Step268ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step268ExitGvExtra ++ [])) s2Step268ExitFv_Incoming s2Step268ExitFv_checked h3 s2Step268ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step268ExitFBefore s2Step268ExitFAfter s2Step268ExitGvAfter
    s2Step268ExitFRow s2Step268ExitFOut 137 [] [(s2Step268ExitFvRow,150),(s2Step268ExitGvRow,149)] [[],[]] [s2Step268ExitFvOut,s2Step268ExitGvOut]
    (shrinkRow 768 s2Step268ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step268ExitGvExtra ++ []))) s2Step268ExitF_Incoming s2Step268ExitF_checked h2 s2Step268ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step268ExitGBefore s2Step268ExitGAfter s2Step268ExitGvAfter
    s2Step268ExitGRow s2Step268ExitGOut 136 [] [(s2Step268ExitFRow,137),(s2Step268ExitFvRow,150),(s2Step268ExitGvRow,149)] [[],[],[]] [s2Step268ExitFOut,s2Step268ExitFvOut,s2Step268ExitGvOut]
    (shrinkRow 769 s2Step268ExitGExtra) ((shrinkRow 768 s2Step268ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step268ExitGvExtra ++ [])))) s2Step268ExitG_Incoming s2Step268ExitG_checked h1 s2Step268ExitG_Outgoing
  exact h0

private theorem s2Step268ExitBank_checked : compileHmrBankResizeLog .exit s2Step268ExitGBefore ⟨s2Step268ExitFRow,s2Step268ExitGRow,s2Step268ExitFvRow,s2Step268ExitGvRow⟩ ⟨137,136,150,149⟩ [[],[],[],[]]=
    some (s2Step268ExitGvAfter,⟨s2Step268ExitFOut,s2Step268ExitGOut,s2Step268ExitFvOut,s2Step268ExitGvOut⟩,(shrinkRow 769 s2Step268ExitGExtra ++ (shrinkRow 768 s2Step268ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step268ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step268ExitBank_rows]
  rfl

private theorem s2Step268Add0_apart : Disjoint s2Step268Add0Arena.live s2Step268Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step268Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268Add0_card : s2Step268Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step268Add0_borrowed : s2Step268Add0Arena.checkBorrow (hmrHybridCount s2Step268Add0Arena s2Step268Add0B.length) s2Step268Add0Work=some s2Step268Add0During := by
  have len : s2Step268Add0Work.length=hmrHybridCount s2Step268Add0Arena s2Step268Add0B.length := by
    rw [hmrHybridCount,s2Step268Add0_card]
    decide +kernel
  have nd : s2Step268Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step268Add0Arena s2Step268Add0During s2Step268Add0Work.toFinset s2Step268Add0_bounded s2Step268Add0_apart rfl

private theorem s2Step268Add0_distinct : (830::779::800::(s2Step268Add0A++s2Step268Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268Add0_owned : (830::779::800::(s2Step268Add0A++s2Step268Add0B)).toFinset⊆s2Step268Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step268Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268Add0_checked : compileHmrHybridCinLog s2Step268Add0Arena 779 830 800 s2Step268Add0A s2Step268Add0B s2Step268Add0Work=some s2Step268Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step268Add0Arena s2Step268Add0During 779 830 800 s2Step268Add0A s2Step268Add0B s2Step268Add0Work
    (by decide +kernel) (by decide +kernel) s2Step268Add0_distinct
    (fun q hq => s2Step268Add0_owned (List.mem_toFinset.mpr hq)) s2Step268Add0_borrowed

private theorem s2Step268Add1_apart : Disjoint s2Step268Add1Arena.live s2Step268Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step268Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268Add1_card : s2Step268Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step268Add1_borrowed : s2Step268Add1Arena.checkBorrow (hmrHybridCount s2Step268Add1Arena s2Step268Add1B.length) s2Step268Add1Work=some s2Step268Add1During := by
  have len : s2Step268Add1Work.length=hmrHybridCount s2Step268Add1Arena s2Step268Add1B.length := by
    rw [hmrHybridCount,s2Step268Add1_card]
    decide +kernel
  have nd : s2Step268Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step268Add1Arena s2Step268Add1During s2Step268Add1Work.toFinset s2Step268Add1_bounded s2Step268Add1_apart rfl

private theorem s2Step268Add1_distinct : (830::779::800::(s2Step268Add1A++s2Step268Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268Add1_owned : (830::779::800::(s2Step268Add1A++s2Step268Add1B)).toFinset⊆s2Step268Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step268Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268Add1_checked : compileHmrHybridCinLog s2Step268Add1Arena 779 830 800 s2Step268Add1A s2Step268Add1B s2Step268Add1Work=some s2Step268Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step268Add1Arena s2Step268Add1During 779 830 800 s2Step268Add1A s2Step268Add1B s2Step268Add1Work
    (by decide +kernel) (by decide +kernel) s2Step268Add1_distinct
    (fun q hq => s2Step268Add1_owned (List.mem_toFinset.mpr hq)) s2Step268Add1_borrowed

private theorem s2Step268F4_apart : Disjoint (s2Step268Add0A++s2Step268Add0B).toFinset (s2Step268Add1A++s2Step268Add1B).toFinset := by
  have nd : ((s2Step268Add0A++s2Step268Add0B)++(s2Step268Add1A++s2Step268Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step268F4_carry : s2Step268F4FlagArena.checkBorrow 1 [800]=some s2Step268Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step268F4FlagArena,s2Step268HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step268F4FlagArena,s2Step268HeadFvAfter,s2Step268Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step268F4_distinct : (817::779::830::800::((s2Step268Add0A++s2Step268Add1A)++(s2Step268Add0B++s2Step268Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268F4_flag : s2Step268HeadFvAfter.checkBorrow 1 [830]=some s2Step268F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step268HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step268F4_owned : (817::779::((s2Step268Add0A++s2Step268Add1A)++(s2Step268Add0B++s2Step268Add1B))).toFinset⊆s2Step268HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step268HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268F4_checked : compileHmrHybridF4Log s2Step268HeadFvAfter 817 779 s2Step268Add0A s2Step268Add0B s2Step268Add1A s2Step268Add1B [830] [800] s2Step268Add0Work s2Step268Add1Work=some s2Step268F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step268HeadFvAfter s2Step268F4FlagArena s2Step268Add0Arena s2Step268Add0During s2Step268Add1During 817 779
    s2Step268Add0A s2Step268Add0B s2Step268Add1A s2Step268Add1B [830] [800] s2Step268Add0Work s2Step268Add1Work
    (fun q hq => s2Step268F4_owned (List.mem_toFinset.mpr hq)) s2Step268F4_flag s2Step268F4_carry
    s2Step268F4_distinct s2Step268F4_apart s2Step268Add0_checked s2Step268Add1_checked

private theorem s2Step268Front_branch : s2Step268FrontSigmaArena.checkBorrow 1 [779]=some s2Step268HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step268FrontSigmaArena,s2Step268EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step268FrontSigmaArena,s2Step268EntryGvAfter,s2Step268HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step268Front_entry : HmrFrontEntryValid s2Step268EntryFBefore s2Step268FrontBank 138 149 ⟨137,136,150,149⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step268FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step268EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step268EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step268FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step268Front_sigma : s2Step268EntryGvAfter.checkBorrow 1 [817]=some s2Step268FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step268EntryGvAfter,arenaWires]
  · rfl

private def s2Step268HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268HeadFBefore : Arena := s2Step268HeadGAfter

private def s2Step268HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step268HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782],770⟩

private def s2Step268HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 788, 786],769⟩

private def s2Step268HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877],771⟩

private theorem s2Step268HeadBank_incomingDistinct : ([s2Step268HeadGRow,s2Step268HeadFRow,s2Step268HeadGvRow,s2Step268HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268HeadF_Incoming : rowsOwned s2Step268HeadFBefore [s2Step268HeadFRow,s2Step268HeadGvRow,s2Step268HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268HeadGRow,s2Step268HeadFRow,s2Step268HeadGvRow,s2Step268HeadFvRow] 1 s2Step268HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268HeadBank_outgoingOwned : rowsOwned s2Step268HeadFvAfter [s2Step268HeadGOut,s2Step268HeadFOut,s2Step268HeadGvOut,s2Step268HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step268HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268HeadF_Outgoing : rowsOwned s2Step268HeadFvAfter [s2Step268HeadFOut,s2Step268HeadGvOut,s2Step268HeadFvOut] :=
  hmrRows_owned_drop s2Step268HeadFvAfter [s2Step268HeadGOut,s2Step268HeadFOut,s2Step268HeadGvOut,s2Step268HeadFvOut] 1 s2Step268HeadBank_outgoingOwned

private theorem s2Step268HeadF_distinct : (s2Step268HeadFRow.sign::s2Step268HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268HeadF_owned : (s2Step268HeadFRow.sign::s2Step268HeadFRow.payload).toFinset⊆s2Step268HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268HeadF_reserved : s2Step268HeadFBefore.reserve s2Step268HeadFFresh.toFinset=some s2Step268HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step268HeadFFresh,arenaWires]
  · norm_num [s2Step268HeadFBefore,s2Step268HeadGAfter,s2Step268HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step268HeadFAfter,s2Step268HeadFBefore,s2Step268HeadGAfter,s2Step268HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step268HeadF_checked : planRowResizeLog s2Step268HeadFBefore s2Step268HeadFRow 139 s2Step268HeadFFresh=
    some (s2Step268HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 836],768⟩,growRow 768 s2Step268HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step268HeadFBefore s2Step268HeadFAfter s2Step268HeadFRow 139 s2Step268HeadFFresh
    s2Step268HeadF_distinct s2Step268HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step268HeadF_reserved
  have rowEq : WindowRow.mk (s2Step268HeadFRow.payload++s2Step268HeadFFresh) s2Step268HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 836],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step268HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step268HeadFvBefore : Arena := s2Step268HeadGvAfter

private theorem s2Step268HeadFv_Incoming : rowsOwned s2Step268HeadFvBefore [s2Step268HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268HeadGRow,s2Step268HeadFRow,s2Step268HeadGvRow,s2Step268HeadFvRow] 3 s2Step268HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268HeadFv_Outgoing : rowsOwned s2Step268HeadFvAfter [s2Step268HeadFvOut] :=
  hmrRows_owned_drop s2Step268HeadFvAfter [s2Step268HeadGOut,s2Step268HeadFOut,s2Step268HeadGvOut,s2Step268HeadFvOut] 3 s2Step268HeadBank_outgoingOwned

private theorem s2Step268HeadFv_distinct : (s2Step268HeadFvRow.sign::s2Step268HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268HeadFv_owned : (s2Step268HeadFvRow.sign::s2Step268HeadFvRow.payload).toFinset⊆s2Step268HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268HeadFv_reserved : s2Step268HeadFvBefore.reserve s2Step268HeadFvFresh.toFinset=some s2Step268HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step268HeadFvFresh,arenaWires]
  · norm_num [s2Step268HeadFvBefore,s2Step268HeadGvAfter,s2Step268HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step268HeadFvAfter,s2Step268HeadFvBefore,s2Step268HeadGvAfter,s2Step268HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step268HeadFv_checked : planRowResizeLog s2Step268HeadFvBefore s2Step268HeadFvRow 150 s2Step268HeadFvFresh=
    some (s2Step268HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩,growRow 770 s2Step268HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step268HeadFvBefore s2Step268HeadFvAfter s2Step268HeadFvRow 150 s2Step268HeadFvFresh
    s2Step268HeadFv_distinct s2Step268HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step268HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step268HeadFvRow.payload++s2Step268HeadFvFresh) s2Step268HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step268HeadG_Incoming : rowsOwned s2Step268HeadGBefore [s2Step268HeadGRow,s2Step268HeadFRow,s2Step268HeadGvRow,s2Step268HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268HeadGRow,s2Step268HeadFRow,s2Step268HeadGvRow,s2Step268HeadFvRow] 0 s2Step268HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268HeadG_Outgoing : rowsOwned s2Step268HeadFvAfter [s2Step268HeadGOut,s2Step268HeadFOut,s2Step268HeadGvOut,s2Step268HeadFvOut] :=
  hmrRows_owned_drop s2Step268HeadFvAfter [s2Step268HeadGOut,s2Step268HeadFOut,s2Step268HeadGvOut,s2Step268HeadFvOut] 0 s2Step268HeadBank_outgoingOwned

private theorem s2Step268HeadG_distinct : (s2Step268HeadGRow.sign::s2Step268HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268HeadG_owned : (s2Step268HeadGRow.sign::s2Step268HeadGRow.payload).toFinset⊆s2Step268HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268HeadG_reserved : s2Step268HeadGBefore.reserve s2Step268HeadGFresh.toFinset=some s2Step268HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step268HeadGFresh,arenaWires]
  · norm_num [s2Step268HeadGBefore,s2Step268HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step268HeadGAfter,s2Step268HeadGBefore,s2Step268HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step268HeadG_checked : planRowResizeLog s2Step268HeadGBefore s2Step268HeadGRow 139 s2Step268HeadGFresh=
    some (s2Step268HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 788, 786, 844],769⟩,growRow 769 s2Step268HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step268HeadGBefore s2Step268HeadGAfter s2Step268HeadGRow 139 s2Step268HeadGFresh
    s2Step268HeadG_distinct s2Step268HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step268HeadG_reserved
  have rowEq : WindowRow.mk (s2Step268HeadGRow.payload++s2Step268HeadGFresh) s2Step268HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 788, 786, 844],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step268HeadGvBefore : Arena := s2Step268HeadFAfter

private theorem s2Step268HeadGv_Incoming : rowsOwned s2Step268HeadGvBefore [s2Step268HeadGvRow,s2Step268HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step268HeadGRow,s2Step268HeadFRow,s2Step268HeadGvRow,s2Step268HeadFvRow] 2 s2Step268HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step268HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step268HeadGv_Outgoing : rowsOwned s2Step268HeadFvAfter [s2Step268HeadGvOut,s2Step268HeadFvOut] :=
  hmrRows_owned_drop s2Step268HeadFvAfter [s2Step268HeadGOut,s2Step268HeadFOut,s2Step268HeadGvOut,s2Step268HeadFvOut] 2 s2Step268HeadBank_outgoingOwned

private theorem s2Step268HeadGv_distinct : (s2Step268HeadGvRow.sign::s2Step268HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step268HeadGv_owned : (s2Step268HeadGvRow.sign::s2Step268HeadGvRow.payload).toFinset⊆s2Step268HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step268HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step268HeadGv_reserved : s2Step268HeadGvBefore.reserve s2Step268HeadGvFresh.toFinset=some s2Step268HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step268HeadGvFresh,arenaWires]
  · norm_num [s2Step268HeadGvBefore,s2Step268HeadFAfter,s2Step268HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step268HeadGvAfter,s2Step268HeadGvBefore,s2Step268HeadFAfter,s2Step268HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step268HeadGv_checked : planRowResizeLog s2Step268HeadGvBefore s2Step268HeadGvRow 150 s2Step268HeadGvFresh=
    some (s2Step268HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 891],771⟩,growRow 771 s2Step268HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step268HeadGvBefore s2Step268HeadGvAfter s2Step268HeadGvRow 150 s2Step268HeadGvFresh
    s2Step268HeadGv_distinct s2Step268HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step268HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step268HeadGvRow.payload++s2Step268HeadGvFresh) s2Step268HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 891],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step268HeadBank_rows : planWindowRowsLog s2Step268HeadGBefore [(s2Step268HeadGRow,139),(s2Step268HeadFRow,139),(s2Step268HeadGvRow,150),(s2Step268HeadFvRow,150)] [s2Step268HeadGFresh,s2Step268HeadFFresh,s2Step268HeadGvFresh,s2Step268HeadFvFresh]=
    some (s2Step268HeadFvAfter,[s2Step268HeadGOut,s2Step268HeadFOut,s2Step268HeadGvOut,s2Step268HeadFvOut],(growRow 769 s2Step268HeadGFresh ++ (growRow 768 s2Step268HeadFFresh ++ (growRow 771 s2Step268HeadGvFresh ++ (growRow 770 s2Step268HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step268HeadFvAfter [] []=some (s2Step268HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step268HeadFvBefore s2Step268HeadFvAfter s2Step268HeadFvAfter
    s2Step268HeadFvRow s2Step268HeadFvOut 150 s2Step268HeadFvFresh [] [] []
    (growRow 770 s2Step268HeadFvFresh) ([]) s2Step268HeadFv_Incoming s2Step268HeadFv_checked h4 s2Step268HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step268HeadGvBefore s2Step268HeadGvAfter s2Step268HeadFvAfter
    s2Step268HeadGvRow s2Step268HeadGvOut 150 s2Step268HeadGvFresh [(s2Step268HeadFvRow,150)] [s2Step268HeadFvFresh] [s2Step268HeadFvOut]
    (growRow 771 s2Step268HeadGvFresh) ((growRow 770 s2Step268HeadFvFresh ++ [])) s2Step268HeadGv_Incoming s2Step268HeadGv_checked h3 s2Step268HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step268HeadFBefore s2Step268HeadFAfter s2Step268HeadFvAfter
    s2Step268HeadFRow s2Step268HeadFOut 139 s2Step268HeadFFresh [(s2Step268HeadGvRow,150),(s2Step268HeadFvRow,150)] [s2Step268HeadGvFresh,s2Step268HeadFvFresh] [s2Step268HeadGvOut,s2Step268HeadFvOut]
    (growRow 768 s2Step268HeadFFresh) ((growRow 771 s2Step268HeadGvFresh ++ (growRow 770 s2Step268HeadFvFresh ++ []))) s2Step268HeadF_Incoming s2Step268HeadF_checked h2 s2Step268HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step268HeadGBefore s2Step268HeadGAfter s2Step268HeadFvAfter
    s2Step268HeadGRow s2Step268HeadGOut 139 s2Step268HeadGFresh [(s2Step268HeadFRow,139),(s2Step268HeadGvRow,150),(s2Step268HeadFvRow,150)] [s2Step268HeadFFresh,s2Step268HeadGvFresh,s2Step268HeadFvFresh] [s2Step268HeadFOut,s2Step268HeadGvOut,s2Step268HeadFvOut]
    (growRow 769 s2Step268HeadGFresh) ((growRow 768 s2Step268HeadFFresh ++ (growRow 771 s2Step268HeadGvFresh ++ (growRow 770 s2Step268HeadFvFresh ++ [])))) s2Step268HeadG_Incoming s2Step268HeadG_checked h1 s2Step268HeadG_Outgoing
  exact h0

private theorem s2Step268HeadBank_checked : compileHmrBankResizeLog .headroom s2Step268HeadGBefore ⟨s2Step268HeadFRow,s2Step268HeadGRow,s2Step268HeadFvRow,s2Step268HeadGvRow⟩ ⟨139,139,150,150⟩ [s2Step268HeadGFresh,s2Step268HeadFFresh,s2Step268HeadGvFresh,s2Step268HeadFvFresh]=
    some (s2Step268HeadFvAfter,⟨s2Step268HeadFOut,s2Step268HeadGOut,s2Step268HeadFvOut,s2Step268HeadGvOut⟩,(growRow 769 s2Step268HeadGFresh ++ (growRow 768 s2Step268HeadFFresh ++ (growRow 771 s2Step268HeadGvFresh ++ (growRow 770 s2Step268HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step268HeadBank_rows]
  rfl

private theorem s2Step268Front_checked : compileHmrSourceFrontLog s2Step268EntryFBefore s2Step268FrontBank 138 149 ⟨137,136,150,149⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step268FrontLog=some s2Step268FrontPlan := by
  have pairEq : s2Step268FrontPair=⟨s2Step268HeadFRow,s2Step268HeadGRow,s2Step268HeadFvRow,s2Step268HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step268FrontHead=⟨s2Step268ExitFRow,s2Step268ExitGRow,s2Step268ExitFvRow,s2Step268ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step268Add0A=s2Step268FrontHead.f.wires := by decide +kernel
  have gEq : s2Step268Add0B=s2Step268FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step268Add1A=s2Step268FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step268Add1B=s2Step268FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step268EntryFBefore s2Step268FrontBank 138 149 ⟨137,136,150,149⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step268FrontLog s2Step268FrontPlan
  · exact s2Step268Front_entry
  · exact s2Step268EntryBank_checked
  · exact s2Step268Front_sigma
  · rfl
  · exact s2Step268Front_branch
  · rfl
  · simpa only [s2Step268FrontPlan,pairEq] using s2Step268HeadBank_checked
  · simpa only [s2Step268FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step268F4_checked
  · exact s2Step268Counter_checked
  · rfl
  · simpa only [s2Step268FrontPlan,headEq] using s2Step268ExitBank_checked

private theorem s2Step268Complete_explicit_checked : compileHmrEarlyStepLog s2Step268EntryFBefore s2Step268FrontBank 138 149 ⟨137,136,150,149⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step268CompleteLog=some s2Step268CompletePlan := by
  let Q := s2Step268EarlyControlPlan
  have hq := s2Step268EarlyControl_plan_checked
  have fv1 : s2Step268CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step268CompleteOut.fv.payload[2]?.getD s2Step268CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step268CompleteOut.fv.payload[3]?.getD s2Step268CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step268CompleteOut.fv.payload[4]?.getD s2Step268CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step268EntryFBefore s2Step268EarlyControlArena s2Step268FrontBank 138 149 ⟨137,136,150,149⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step268CompleteLog s2Step268FrontPlan Q
    s2Step268Front_checked s2Step268Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step268Complete_owned s2Step268Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step268EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 817 s2Step268CompleteOut.fv.second (s2Step268CompleteOut.fv.payload[2]?.getD s2Step268CompleteOut.fv.sign) (s2Step268CompleteOut.fv.payload[3]?.getD s2Step268CompleteOut.fv.sign) (s2Step268CompleteOut.fv.payload[4]?.getD s2Step268CompleteOut.fv.sign) 779 52 s2Step268EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep268Arena : Arena := s2Step268EntryFBefore
def s2PrivateStep268Bank : WindowBank := s2Step268FrontBank
def s2PrivateStep268Spec : HmrSourceWalkStepLog := ⟨138,149,⟨137,136,150,149⟩,52,.early s2Step268CompleteLog⟩
def s2PrivateStep268Plan : HmrSourceStepPlan := .early s2Step268CompletePlan
theorem s2PrivateStep268_source : s2PrivateStep268Spec=s2ObservedLogs256[12] := rfl
theorem s2PrivateStep268_checked : compileHmrSourceStepLog s2PrivateStep268Arena s2PrivateStep268Bank
    s2PrivateStep268Spec.fgWidth s2PrivateStep268Spec.vWidth s2PrivateStep268Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]
    6 498 268 s2PrivateStep268Spec.need none s2PrivateStep268Spec.log=some s2PrivateStep268Plan := by
  change compileHmrSourceStepLog s2Step268EntryFBefore s2Step268FrontBank 138 149 ⟨137,136,150,149⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 6 498 268 52 none (.early s2Step268CompleteLog)=some (.early s2Step268CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 268<498)]
  rw [s2Step268Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
