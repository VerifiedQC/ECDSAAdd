import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep299
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

private def s2Step301CompleteMoves : List (Wire × Wire) := [(826,119),(846,632)]

private def s2Step301EarlyControlLog : HmrEarlyControlLog := ⟨[846, 826, 806, 811, 797],[805],[787],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step301FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [805], [], [847]],[[787], [797], [806], [811]],[[], [], [], []]⟩,[793],[820],[830],[800],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step301CompleteLog : HmrEarlyStepLog := ⟨s2Step301FrontLog,s2Step301CompleteMoves,s2Step301EarlyControlLog⟩

private def s2Step301ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩

private def s2Step301ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩

private def s2Step301ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118],769⟩

private def s2Step301ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩

private def s2Step301FrontOut : WindowBank := ⟨s2Step301ExitFOut,s2Step301ExitGOut,s2Step301ExitFvOut,s2Step301ExitGvOut⟩

private def s2Step301CompleteOut : WindowBank := s2Step301FrontOut.repacked s2Step301CompleteMoves

private def s2Step301EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step301EarlyControlPositiveArena,[805],s2Step301EarlyControlEqualityArena,[787],⟨⟨793,false⟩,[⟨⟨805,false⟩,787⟩]⟩⟩

private def s2Step301EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,846⟩,⟨⟨774,false⟩,826⟩,⟨⟨775,false⟩,806⟩,⟨⟨776,false⟩,811⟩,⟨⟨777,false⟩,797⟩]⟩

private def s2Step301EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step301EarlyControlZeroArena,s2Step301EarlyControlZeroPlan,s2Step301EarlyControlClassPlan,s2Step301EarlyControlFlagArena,s2Step301EarlyControlFittedArena,s2Step301EarlyControlHistoryArena,s2Step301EarlyControlSigmaArena,s2Step301EarlyControlOutputArena,s2Step301EarlyControlLog⟩

private def s2Step301CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step301Counter_bounded : s2Step301CounterWork.toFinset⊆arenaWires := by norm_num [s2Step301CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step301HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301CounterDuring : Arena := ⟨s2Step301HeadFvAfter.live∪s2Step301CounterWork.toFinset,Finset.union_subset s2Step301HeadFvAfter.bounded s2Step301Counter_bounded⟩

private def s2Step301EntryFFresh : List Wire := []

private def s2Step301EntryFvFresh : List Wire := []

private def s2Step301EntryGFresh : List Wire := [805]

private def s2Step301EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EntryGvFresh : List Wire := [847]

private def s2Step301ExitFExtra : List Wire := [632, 797]

private def s2Step301ExitFvExtra : List Wire := [811]

private def s2Step301ExitGExtra : List Wire := [119, 805, 787]

private def s2Step301ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<632) ∨ (633≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301ExitGvExtra : List Wire := [806]

private def s2Step301Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301Add0Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step301Add0_bounded : s2Step301Add0Work.toFinset⊆arenaWires := by
  have h : s2Step301Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step301Add0During : Arena := ⟨s2Step301Add0Arena.live∪s2Step301Add0Work.toFinset,Finset.union_subset s2Step301Add0Arena.bounded s2Step301Add0_bounded⟩

private def s2Step301Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301Add1Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step301Add1_bounded : s2Step301Add1Work.toFinset⊆arenaWires := by
  have h : s2Step301Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step301Add1During : Arena := ⟨s2Step301Add1Arena.live∪s2Step301Add1Work.toFinset,Finset.union_subset s2Step301Add1Arena.bounded s2Step301Add1_bounded⟩

private def s2Step301F4FlagArena : Arena := ⟨s2Step301HeadFvAfter.live∪{830},Finset.union_subset s2Step301HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step301F4Plan : HmrHybridF4Plan := ⟨s2Step301F4FlagArena,[830],s2Step301Add0Arena,[800],s2Step301Add0During,s2Step301Add0Work,s2Step301Add1During,s2Step301Add1Work⟩

private def s2Step301HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 797],768⟩

private def s2Step301HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 811],770⟩

private def s2Step301HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 805, 787],769⟩

private def s2Step301HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 806],771⟩

private def s2Step301FrontHead : WindowBank := ⟨s2Step301HeadFOut,s2Step301HeadGOut,s2Step301HeadFvOut,s2Step301HeadGvOut⟩

private def s2Step301EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩

private def s2Step301EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩

private def s2Step301EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 805],769⟩

private def s2Step301EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩

private def s2Step301FrontPair : WindowBank := ⟨s2Step301EntryFOut,s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut⟩

private def s2Step301FrontSigmaArena : Arena := ⟨s2Step301EntryGvAfter.live∪{793},Finset.union_subset s2Step301EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step301HeadFFresh : List Wire := [797]

private def s2Step301HeadFvFresh : List Wire := [811]

private def s2Step301HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301HeadGFresh : List Wire := [787]

private def s2Step301HeadGvFresh : List Wire := [806]

private def s2Step301FrontPlan : HmrSourceFront := ⟨s2Step301EntryGvAfter,s2Step301FrontPair,(growRow 768 s2Step301EntryFFresh ++ (growRow 769 s2Step301EntryGFresh ++ (growRow 770 s2Step301EntryFvFresh ++ (growRow 771 s2Step301EntryGvFresh ++ [])))),s2Step301FrontSigmaArena,[793],s2Step301HeadGBefore,[820],
  s2Step301HeadFvAfter,s2Step301FrontHead,(growRow 769 s2Step301HeadGFresh ++ (growRow 768 s2Step301HeadFFresh ++ (growRow 771 s2Step301HeadGvFresh ++ (growRow 770 s2Step301HeadFvFresh ++ [])))),s2Step301F4Plan,s2Step301CounterDuring,s2Step301CounterWork,s2Step301ExitGvAfter,s2Step301FrontOut,(shrinkRow 769 s2Step301ExitGExtra ++ (shrinkRow 768 s2Step301ExitFExtra ++ (shrinkRow 770 s2Step301ExitFvExtra ++ (shrinkRow 771 s2Step301ExitGvExtra ++ []))))⟩

private def s2Step301CompletePlan : HmrEarlyStepPlan := ⟨s2Step301FrontPlan,s2Step301EarlyControlArena,s2Step301EarlyControlPlan,s2Step301CompleteMoves⟩

private theorem s2Step301Complete_apart : List.Disjoint (s2Step301CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [793, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step301CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[793, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step301Complete_owned : (s2Step301CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step301EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step301CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,632),(633,787),(788,797),(798,800),(801,805),(807,811),(812,826),(827,830),(831,894),(895,896),(897,901),(902,903),(904,907)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step301CompleteRelocationMove0Borrowed : Arena := ⟨s2Step301ExitGvAfter.live∪{119},Finset.union_subset s2Step301ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step301CompleteRelocationMove1Borrowed : Arena := ⟨s2Step301CompleteRelocationMove0After.live∪{632},Finset.union_subset s2Step301CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step301CompleteRelocation_move0_owned : 826∈s2Step301ExitGvAfter.live := by norm_num [s2Step301ExitGvAfter,arenaWires]

private theorem s2Step301CompleteRelocation_move0_reserve : s2Step301ExitGvAfter.reserve {119}=some s2Step301CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step301ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step301CompleteRelocation_move0_retire : s2Step301CompleteRelocationMove0Borrowed.retireSet {826}=s2Step301CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step301CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step301CompleteRelocationMove0Borrowed,s2Step301ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step301CompleteRelocation_move1_owned : 846∈s2Step301CompleteRelocationMove0After.live := by norm_num [s2Step301CompleteRelocationMove0After,arenaWires]

private theorem s2Step301CompleteRelocation_move1_reserve : s2Step301CompleteRelocationMove0After.reserve {632}=some s2Step301CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step301CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step301CompleteRelocation_move1_retire : s2Step301CompleteRelocationMove1Borrowed.retireSet {846}=s2Step301EarlyControlArena := by
  unfold Arena.retireSet s2Step301EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step301CompleteRelocationMove1Borrowed,s2Step301CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step301CompleteRelocation_checked : s2Step301ExitGvAfter.checkRepack [(826,119),(846,632)]=some s2Step301EarlyControlArena := by
  have tail2 : s2Step301EarlyControlArena.checkRepack []=some s2Step301EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step301CompleteRelocationMove0After s2Step301CompleteRelocationMove1Borrowed s2Step301EarlyControlArena s2Step301EarlyControlArena 846 632 []
    s2Step301CompleteRelocation_move1_owned s2Step301CompleteRelocation_move1_reserve s2Step301CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step301ExitGvAfter s2Step301CompleteRelocationMove0Borrowed s2Step301CompleteRelocationMove0After s2Step301EarlyControlArena 826 119 [(846,632)]
    s2Step301CompleteRelocation_move0_owned s2Step301CompleteRelocation_move0_reserve s2Step301CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step301Complete_repack : s2Step301ExitGvAfter.checkRepack s2Step301CompleteMoves=some s2Step301EarlyControlArena := by
  simpa only [s2Step301CompleteMoves] using s2Step301CompleteRelocation_checked

private theorem s2Step301EarlyControl_branchOwned : ([820] : List Wire).toFinset⊆s2Step301EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_branch : compileHmrBranchRetirement s2Step301EarlyControlSigmaArena 820=some s2Step301EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step301EarlyControl_branchOwned
  · ext q
    simp [s2Step301EarlyControlOutputArena,s2Step301EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step301EarlyControl_classEqualityBorrow : s2Step301EarlyControlPositiveArena.checkBorrow (([793, 805] : List Wire).length-1) s2Step301EarlyControlLog.classWork=some s2Step301EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step301EarlyControlPositiveArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step301EarlyControlEqualityArena,s2Step301EarlyControlPositiveArena,s2Step301EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step301EarlyControl_classEqualityOwned : ([793, 805] : List Wire).toFinset⊆s2Step301EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlPositiveArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_classEquality : compileHmrEqualityLog s2Step301EarlyControlPositiveArena [793, 805] 0 s2Step301EarlyControlLog.classWork=some (s2Step301EarlyControlEqualityArena,s2Step301EarlyControlLog.classWork,s2Step301EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step301EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step301EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step301EarlyControl_classOwned : ([777, 797, 793] : List Wire).toFinset⊆s2Step301EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_positiveBorrow : s2Step301EarlyControlZeroArena.checkBorrow (1) s2Step301EarlyControlLog.positiveWork=some s2Step301EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step301EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step301EarlyControlPositiveArena,s2Step301EarlyControlZeroArena,s2Step301EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step301EarlyControl_class : compileHmrSourceClassLog s2Step301EarlyControlZeroArena false 777 s2Step301EarlyControlZeroPlan.top 0 793 s2Step301EarlyControlLog.positiveWork s2Step301EarlyControlLog.classWork=some s2Step301EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step301EarlyControlClassPlan s2Step301EarlyControlZeroArena false 777 s2Step301EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s2Step301EarlyControl_classOwned
  · exact s2Step301EarlyControl_positiveBorrow
  · exact s2Step301EarlyControl_classEquality

private theorem s2Step301EarlyControl_entryRecordOwned : ([820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step301EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s2Step301EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_fitBorrow : s2Step301EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step301EarlyControlLog.recordFresh=some s2Step301EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step301EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step301EarlyControlFittedArena,s2Step301EarlyControlFlagArena,s2Step301EarlyControlLog,arenaWires]

private theorem s2Step301EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step301EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_fit : compileHmrRecordGrowLog s2Step301EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step301EarlyControlLog.recordFresh=some s2Step301EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step301EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step301EarlyControl_fitBorrow

private theorem s2Step301EarlyControl_flagsBorrow : s2Step301EarlyControlEqualityArena.checkBorrow (6) s2Step301EarlyControlLog.flagWork=some s2Step301EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step301EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step301EarlyControlFlagArena,s2Step301EarlyControlEqualityArena,s2Step301EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step301EarlyControl_flagsOwned : ([787, 253, 252, 251] : List Wire).toFinset⊆s2Step301EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_flags : compileHmrFlagsLog s2Step301EarlyControlClassPlan.equalityArena s2Step301EarlyControlClassPlan.equality.top 253 252 251 s2Step301EarlyControlLog.flagWork=some s2Step301EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step301EarlyControl_flagsOwned⟩
  · exact s2Step301EarlyControl_flagsBorrow

private theorem s2Step301EarlyControl_historyBorrow : s2Step301EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step301EarlyControlLog.recordFresh=some s2Step301EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step301EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step301EarlyControlHistoryArena,s2Step301EarlyControlArena,s2Step301EarlyControlLog,arenaWires]

private theorem s2Step301EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step301EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_history : compileHmrRecordGrowLog s2Step301EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step301EarlyControlLog.recordFresh=some s2Step301EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step301EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step301EarlyControl_historyBorrow

private theorem s2Step301EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s2Step301EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s2Step301EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_sigmaRelease : s2Step301EarlyControlHistoryArena.release {793} (fun _ => false)=some s2Step301EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step301EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step301EarlyControlSigmaArena,s2Step301EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step301EarlyControl_sigma : compileHmrSigmaDropLog s2Step301EarlyControlHistoryArena false 0 0 254 793 []=some s2Step301EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step301EarlyControl_sigmaOwned⟩
  · exact s2Step301EarlyControl_sigmaRelease

private theorem s2Step301EarlyControl_zeroBorrow : s2Step301EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step301EarlyControlLog.zeroWork=some s2Step301EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step301EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step301EarlyControlZeroArena,s2Step301EarlyControlArena,s2Step301EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step301EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step301EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step301EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EarlyControl_zero : compileHmrEqualityLog s2Step301EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step301EarlyControlLog.zeroWork=some (s2Step301EarlyControlZeroArena,s2Step301EarlyControlLog.zeroWork,s2Step301EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step301EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step301EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step301EarlyControl_logged : s2Step301EarlyControlPlan.Logged s2Step301EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 793 254 253 252 251 820 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step301EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step301EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step301EarlyControl_zero
  · exact s2Step301EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step301EarlyControl_flags
  · exact s2Step301EarlyControl_fit
  · exact s2Step301EarlyControl_history
  · exact s2Step301EarlyControl_sigma
  · exact s2Step301EarlyControl_branch

private theorem s2Step301EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step301EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 793 254 253 252 251 820 55 s2Step301EarlyControlLog=some s2Step301EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step301EarlyControlPlan s2Step301EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 793 254 253 252 251 820 55 s2Step301EarlyControl_logged

private def s2Step301EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩

private def s2Step301EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩

private def s2Step301EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119],769⟩

private def s2Step301EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩

private def s2Step301FrontBank : WindowBank := ⟨s2Step301EntryFRow,s2Step301EntryGRow,s2Step301EntryFvRow,s2Step301EntryGvRow⟩

private def s2Step301Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 797, 768]

private def s2Step301Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 805, 787, 769]

private def s2Step301Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 811, 770]

private def s2Step301Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 806, 771]

private theorem s2Step301Counter_apart : Disjoint s2Step301HeadFvAfter.live s2Step301CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step301HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301Counter_borrowed : s2Step301HeadFvAfter.checkBorrow 4 s2Step301CounterWork=some s2Step301CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step301HeadFvAfter s2Step301CounterDuring s2Step301CounterWork.toFinset s2Step301Counter_bounded s2Step301Counter_apart rfl

private theorem s2Step301Counter_owned : (793::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step301HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step301HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301Counter_checked : compileHmrCounterStepLog s2Step301HeadFvAfter true 793 [772, 773, 774, 775, 776, 777] s2Step301CounterWork=some s2Step301CounterDuring := by
  have owned : ∀q∈793::[772, 773, 774, 775, 776, 777],q∈s2Step301HeadFvAfter.live := fun q hq => s2Step301Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step301Counter_borrowed

private def s2Step301EntryFAfter : Arena := s2Step301EntryFBefore

private theorem s2Step301EntryBank_incomingDistinct : ([s2Step301EntryFRow,s2Step301EntryGRow,s2Step301EntryFvRow,s2Step301EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301EntryF_Incoming : rowsOwned s2Step301EntryFBefore [s2Step301EntryFRow,s2Step301EntryGRow,s2Step301EntryFvRow,s2Step301EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301EntryFRow,s2Step301EntryGRow,s2Step301EntryFvRow,s2Step301EntryGvRow] 0 s2Step301EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301EntryBank_outgoingOwned : rowsOwned s2Step301EntryGvAfter [s2Step301EntryFOut,s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step301EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301EntryF_Outgoing : rowsOwned s2Step301EntryGvAfter [s2Step301EntryFOut,s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut] :=
  hmrRows_owned_drop s2Step301EntryGvAfter [s2Step301EntryFOut,s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut] 0 s2Step301EntryBank_outgoingOwned

private theorem s2Step301EntryF_distinct : (s2Step301EntryFRow.sign::s2Step301EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301EntryF_owned : (s2Step301EntryFRow.sign::s2Step301EntryFRow.payload).toFinset⊆s2Step301EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EntryF_reserved : s2Step301EntryFBefore.reserve s2Step301EntryFFresh.toFinset=some s2Step301EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step301EntryFFresh,arenaWires]
  · norm_num [s2Step301EntryFBefore,s2Step301EntryFFresh,arenaWires]
  · simp only [s2Step301EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step301EntryF_checked : planRowResizeLog s2Step301EntryFBefore s2Step301EntryFRow 121 s2Step301EntryFFresh=
    some (s2Step301EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩,growRow 768 s2Step301EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step301EntryFBefore s2Step301EntryFAfter s2Step301EntryFRow 121 s2Step301EntryFFresh
    s2Step301EntryF_distinct s2Step301EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step301EntryF_reserved
  have rowEq : WindowRow.mk (s2Step301EntryFRow.payload++s2Step301EntryFFresh) s2Step301EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step301EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301EntryFvAfter : Arena := s2Step301EntryGAfter

private def s2Step301EntryFvBefore : Arena := s2Step301EntryGAfter

private theorem s2Step301EntryFv_Incoming : rowsOwned s2Step301EntryFvBefore [s2Step301EntryFvRow,s2Step301EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301EntryFRow,s2Step301EntryGRow,s2Step301EntryFvRow,s2Step301EntryGvRow] 2 s2Step301EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301EntryFv_Outgoing : rowsOwned s2Step301EntryGvAfter [s2Step301EntryFvOut,s2Step301EntryGvOut] :=
  hmrRows_owned_drop s2Step301EntryGvAfter [s2Step301EntryFOut,s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut] 2 s2Step301EntryBank_outgoingOwned

private theorem s2Step301EntryFv_distinct : (s2Step301EntryFvRow.sign::s2Step301EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301EntryFv_owned : (s2Step301EntryFvRow.sign::s2Step301EntryFvRow.payload).toFinset⊆s2Step301EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EntryFv_reserved : s2Step301EntryFvBefore.reserve s2Step301EntryFvFresh.toFinset=some s2Step301EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step301EntryFvFresh,arenaWires]
  · norm_num [s2Step301EntryFvBefore,s2Step301EntryGAfter,s2Step301EntryFvFresh,arenaWires]
  · simp only [s2Step301EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step301EntryFv_checked : planRowResizeLog s2Step301EntryFvBefore s2Step301EntryFvRow 166 s2Step301EntryFvFresh=
    some (s2Step301EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩,growRow 770 s2Step301EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step301EntryFvBefore s2Step301EntryFvAfter s2Step301EntryFvRow 166 s2Step301EntryFvFresh
    s2Step301EntryFv_distinct s2Step301EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step301EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step301EntryFvRow.payload++s2Step301EntryFvFresh) s2Step301EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step301EntryGBefore : Arena := s2Step301EntryFBefore

private theorem s2Step301EntryG_Incoming : rowsOwned s2Step301EntryGBefore [s2Step301EntryGRow,s2Step301EntryFvRow,s2Step301EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301EntryFRow,s2Step301EntryGRow,s2Step301EntryFvRow,s2Step301EntryGvRow] 1 s2Step301EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301EntryG_Outgoing : rowsOwned s2Step301EntryGvAfter [s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut] :=
  hmrRows_owned_drop s2Step301EntryGvAfter [s2Step301EntryFOut,s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut] 1 s2Step301EntryBank_outgoingOwned

private theorem s2Step301EntryG_distinct : (s2Step301EntryGRow.sign::s2Step301EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301EntryG_owned : (s2Step301EntryGRow.sign::s2Step301EntryGRow.payload).toFinset⊆s2Step301EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EntryG_reserved : s2Step301EntryGBefore.reserve s2Step301EntryGFresh.toFinset=some s2Step301EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step301EntryGFresh,arenaWires]
  · norm_num [s2Step301EntryGBefore,s2Step301EntryFBefore,s2Step301EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step301EntryGAfter,s2Step301EntryGBefore,s2Step301EntryFBefore,s2Step301EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step301EntryG_checked : planRowResizeLog s2Step301EntryGBefore s2Step301EntryGRow 121 s2Step301EntryGFresh=
    some (s2Step301EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 805],769⟩,growRow 769 s2Step301EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step301EntryGBefore s2Step301EntryGAfter s2Step301EntryGRow 121 s2Step301EntryGFresh
    s2Step301EntryG_distinct s2Step301EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step301EntryG_reserved
  have rowEq : WindowRow.mk (s2Step301EntryGRow.payload++s2Step301EntryGFresh) s2Step301EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 805],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step301EntryGvBefore : Arena := s2Step301EntryGAfter

private theorem s2Step301EntryGv_Incoming : rowsOwned s2Step301EntryGvBefore [s2Step301EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301EntryFRow,s2Step301EntryGRow,s2Step301EntryFvRow,s2Step301EntryGvRow] 3 s2Step301EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301EntryGv_Outgoing : rowsOwned s2Step301EntryGvAfter [s2Step301EntryGvOut] :=
  hmrRows_owned_drop s2Step301EntryGvAfter [s2Step301EntryFOut,s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut] 3 s2Step301EntryBank_outgoingOwned

private theorem s2Step301EntryGv_distinct : (s2Step301EntryGvRow.sign::s2Step301EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301EntryGv_owned : (s2Step301EntryGvRow.sign::s2Step301EntryGvRow.payload).toFinset⊆s2Step301EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301EntryGv_reserved : s2Step301EntryGvBefore.reserve s2Step301EntryGvFresh.toFinset=some s2Step301EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step301EntryGvFresh,arenaWires]
  · norm_num [s2Step301EntryGvBefore,s2Step301EntryGAfter,s2Step301EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step301EntryGvAfter,s2Step301EntryGvBefore,s2Step301EntryGAfter,s2Step301EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step301EntryGv_checked : planRowResizeLog s2Step301EntryGvBefore s2Step301EntryGvRow 166 s2Step301EntryGvFresh=
    some (s2Step301EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩,growRow 771 s2Step301EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step301EntryGvBefore s2Step301EntryGvAfter s2Step301EntryGvRow 166 s2Step301EntryGvFresh
    s2Step301EntryGv_distinct s2Step301EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step301EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step301EntryGvRow.payload++s2Step301EntryGvFresh) s2Step301EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step301EntryBank_rows : planWindowRowsLog s2Step301EntryFBefore [(s2Step301EntryFRow,121),(s2Step301EntryGRow,121),(s2Step301EntryFvRow,166),(s2Step301EntryGvRow,166)] [s2Step301EntryFFresh,s2Step301EntryGFresh,s2Step301EntryFvFresh,s2Step301EntryGvFresh]=
    some (s2Step301EntryGvAfter,[s2Step301EntryFOut,s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut],(growRow 768 s2Step301EntryFFresh ++ (growRow 769 s2Step301EntryGFresh ++ (growRow 770 s2Step301EntryFvFresh ++ (growRow 771 s2Step301EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step301EntryGvAfter [] []=some (s2Step301EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step301EntryGvBefore s2Step301EntryGvAfter s2Step301EntryGvAfter
    s2Step301EntryGvRow s2Step301EntryGvOut 166 s2Step301EntryGvFresh [] [] []
    (growRow 771 s2Step301EntryGvFresh) ([]) s2Step301EntryGv_Incoming s2Step301EntryGv_checked h4 s2Step301EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step301EntryFvBefore s2Step301EntryFvAfter s2Step301EntryGvAfter
    s2Step301EntryFvRow s2Step301EntryFvOut 166 s2Step301EntryFvFresh [(s2Step301EntryGvRow,166)] [s2Step301EntryGvFresh] [s2Step301EntryGvOut]
    (growRow 770 s2Step301EntryFvFresh) ((growRow 771 s2Step301EntryGvFresh ++ [])) s2Step301EntryFv_Incoming s2Step301EntryFv_checked h3 s2Step301EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step301EntryGBefore s2Step301EntryGAfter s2Step301EntryGvAfter
    s2Step301EntryGRow s2Step301EntryGOut 121 s2Step301EntryGFresh [(s2Step301EntryFvRow,166),(s2Step301EntryGvRow,166)] [s2Step301EntryFvFresh,s2Step301EntryGvFresh] [s2Step301EntryFvOut,s2Step301EntryGvOut]
    (growRow 769 s2Step301EntryGFresh) ((growRow 770 s2Step301EntryFvFresh ++ (growRow 771 s2Step301EntryGvFresh ++ []))) s2Step301EntryG_Incoming s2Step301EntryG_checked h2 s2Step301EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step301EntryFBefore s2Step301EntryFAfter s2Step301EntryGvAfter
    s2Step301EntryFRow s2Step301EntryFOut 121 s2Step301EntryFFresh [(s2Step301EntryGRow,121),(s2Step301EntryFvRow,166),(s2Step301EntryGvRow,166)] [s2Step301EntryGFresh,s2Step301EntryFvFresh,s2Step301EntryGvFresh] [s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut]
    (growRow 768 s2Step301EntryFFresh) ((growRow 769 s2Step301EntryGFresh ++ (growRow 770 s2Step301EntryFvFresh ++ (growRow 771 s2Step301EntryGvFresh ++ [])))) s2Step301EntryF_Incoming s2Step301EntryF_checked h1 s2Step301EntryF_Outgoing
  exact h0

private theorem s2Step301EntryBank_checked : compileHmrBankResizeLog .entry s2Step301EntryFBefore ⟨s2Step301EntryFRow,s2Step301EntryGRow,s2Step301EntryFvRow,s2Step301EntryGvRow⟩ ⟨121,121,166,166⟩ [s2Step301EntryFFresh,s2Step301EntryGFresh,s2Step301EntryFvFresh,s2Step301EntryGvFresh]=
    some (s2Step301EntryGvAfter,⟨s2Step301EntryFOut,s2Step301EntryGOut,s2Step301EntryFvOut,s2Step301EntryGvOut⟩,(growRow 768 s2Step301EntryFFresh ++ (growRow 769 s2Step301EntryGFresh ++ (growRow 770 s2Step301EntryFvFresh ++ (growRow 771 s2Step301EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step301EntryBank_rows]
  rfl

private def s2Step301ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<632) ∨ (633≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301ExitFBefore : Arena := s2Step301ExitGAfter

private def s2Step301ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 797],768⟩

private def s2Step301ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 811],770⟩

private def s2Step301ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 805, 787],769⟩

private def s2Step301ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 806],771⟩

private theorem s2Step301ExitBank_incomingDistinct : ([s2Step301ExitGRow,s2Step301ExitFRow,s2Step301ExitFvRow,s2Step301ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301ExitF_Incoming : rowsOwned s2Step301ExitFBefore [s2Step301ExitFRow,s2Step301ExitFvRow,s2Step301ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301ExitGRow,s2Step301ExitFRow,s2Step301ExitFvRow,s2Step301ExitGvRow] 1 s2Step301ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301ExitFBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301ExitBank_outgoingOwned : rowsOwned s2Step301ExitGvAfter [s2Step301ExitGOut,s2Step301ExitFOut,s2Step301ExitFvOut,s2Step301ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step301ExitGvAfter (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<632) ∨ (633≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301ExitF_Outgoing : rowsOwned s2Step301ExitGvAfter [s2Step301ExitFOut,s2Step301ExitFvOut,s2Step301ExitGvOut] :=
  hmrRows_owned_drop s2Step301ExitGvAfter [s2Step301ExitGOut,s2Step301ExitFOut,s2Step301ExitFvOut,s2Step301ExitGvOut] 1 s2Step301ExitBank_outgoingOwned

private theorem s2Step301ExitF_distinct : (s2Step301ExitFRow.sign::s2Step301ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301ExitF_owned : (s2Step301ExitFRow.sign::s2Step301ExitFRow.payload).toFinset⊆s2Step301ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301ExitFBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301ExitF_retired : s2Step301ExitFBefore.retireSet s2Step301ExitFExtra.toFinset=s2Step301ExitFAfter := by
  unfold Arena.retireSet s2Step301ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step301ExitFBefore,s2Step301ExitGAfter,s2Step301ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step301ExitF_checked : planRowResizeLog s2Step301ExitFBefore s2Step301ExitFRow 120 []=
    some (s2Step301ExitFAfter,s2Step301ExitFOut,shrinkRow 768 s2Step301ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step301ExitFBefore s2Step301ExitFRow 120 s2Step301ExitF_distinct s2Step301ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step301ExitFRow.payload.take 120) s2Step301ExitFRow.sign=s2Step301ExitFOut := by decide +kernel
  have hi : s2Step301ExitFRow.payload.drop 120=s2Step301ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step301ExitF_retired] at result
  exact result

private def s2Step301ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<632) ∨ (633≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301ExitFvBefore : Arena := s2Step301ExitFAfter

private theorem s2Step301ExitFv_Incoming : rowsOwned s2Step301ExitFvBefore [s2Step301ExitFvRow,s2Step301ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301ExitGRow,s2Step301ExitFRow,s2Step301ExitFvRow,s2Step301ExitGvRow] 2 s2Step301ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301ExitFvBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<632) ∨ (633≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301ExitFv_Outgoing : rowsOwned s2Step301ExitGvAfter [s2Step301ExitFvOut,s2Step301ExitGvOut] :=
  hmrRows_owned_drop s2Step301ExitGvAfter [s2Step301ExitGOut,s2Step301ExitFOut,s2Step301ExitFvOut,s2Step301ExitGvOut] 2 s2Step301ExitBank_outgoingOwned

private theorem s2Step301ExitFv_distinct : (s2Step301ExitFvRow.sign::s2Step301ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301ExitFv_owned : (s2Step301ExitFvRow.sign::s2Step301ExitFvRow.payload).toFinset⊆s2Step301ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301ExitFvBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<632) ∨ (633≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301ExitFv_retired : s2Step301ExitFvBefore.retireSet s2Step301ExitFvExtra.toFinset=s2Step301ExitFvAfter := by
  unfold Arena.retireSet s2Step301ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step301ExitFvBefore,s2Step301ExitFAfter,s2Step301ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step301ExitFv_checked : planRowResizeLog s2Step301ExitFvBefore s2Step301ExitFvRow 166 []=
    some (s2Step301ExitFvAfter,s2Step301ExitFvOut,shrinkRow 770 s2Step301ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step301ExitFvBefore s2Step301ExitFvRow 166 s2Step301ExitFv_distinct s2Step301ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step301ExitFvRow.payload.take 166) s2Step301ExitFvRow.sign=s2Step301ExitFvOut := by decide +kernel
  have hi : s2Step301ExitFvRow.payload.drop 166=s2Step301ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step301ExitFv_retired] at result
  exact result

private def s2Step301ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step301ExitG_Incoming : rowsOwned s2Step301ExitGBefore [s2Step301ExitGRow,s2Step301ExitFRow,s2Step301ExitFvRow,s2Step301ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301ExitGRow,s2Step301ExitFRow,s2Step301ExitFvRow,s2Step301ExitGvRow] 0 s2Step301ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301ExitG_Outgoing : rowsOwned s2Step301ExitGvAfter [s2Step301ExitGOut,s2Step301ExitFOut,s2Step301ExitFvOut,s2Step301ExitGvOut] :=
  hmrRows_owned_drop s2Step301ExitGvAfter [s2Step301ExitGOut,s2Step301ExitFOut,s2Step301ExitFvOut,s2Step301ExitGvOut] 0 s2Step301ExitBank_outgoingOwned

private theorem s2Step301ExitG_distinct : (s2Step301ExitGRow.sign::s2Step301ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301ExitG_owned : (s2Step301ExitGRow.sign::s2Step301ExitGRow.payload).toFinset⊆s2Step301ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301ExitG_retired : s2Step301ExitGBefore.retireSet s2Step301ExitGExtra.toFinset=s2Step301ExitGAfter := by
  unfold Arena.retireSet s2Step301ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step301ExitGBefore,s2Step301ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step301ExitG_checked : planRowResizeLog s2Step301ExitGBefore s2Step301ExitGRow 119 []=
    some (s2Step301ExitGAfter,s2Step301ExitGOut,shrinkRow 769 s2Step301ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step301ExitGBefore s2Step301ExitGRow 119 s2Step301ExitG_distinct s2Step301ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step301ExitGRow.payload.take 119) s2Step301ExitGRow.sign=s2Step301ExitGOut := by decide +kernel
  have hi : s2Step301ExitGRow.payload.drop 119=s2Step301ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step301ExitG_retired] at result
  exact result

private def s2Step301ExitGvBefore : Arena := s2Step301ExitFvAfter

private theorem s2Step301ExitGv_Incoming : rowsOwned s2Step301ExitGvBefore [s2Step301ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301ExitGRow,s2Step301ExitFRow,s2Step301ExitFvRow,s2Step301ExitGvRow] 3 s2Step301ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301ExitGvBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<632) ∨ (633≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301ExitGv_Outgoing : rowsOwned s2Step301ExitGvAfter [s2Step301ExitGvOut] :=
  hmrRows_owned_drop s2Step301ExitGvAfter [s2Step301ExitGOut,s2Step301ExitFOut,s2Step301ExitFvOut,s2Step301ExitGvOut] 3 s2Step301ExitBank_outgoingOwned

private theorem s2Step301ExitGv_distinct : (s2Step301ExitGvRow.sign::s2Step301ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301ExitGv_owned : (s2Step301ExitGvRow.sign::s2Step301ExitGvRow.payload).toFinset⊆s2Step301ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301ExitGvBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<632) ∨ (633≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301ExitGv_retired : s2Step301ExitGvBefore.retireSet s2Step301ExitGvExtra.toFinset=s2Step301ExitGvAfter := by
  unfold Arena.retireSet s2Step301ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step301ExitGvBefore,s2Step301ExitFvAfter,s2Step301ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step301ExitGv_checked : planRowResizeLog s2Step301ExitGvBefore s2Step301ExitGvRow 166 []=
    some (s2Step301ExitGvAfter,s2Step301ExitGvOut,shrinkRow 771 s2Step301ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step301ExitGvBefore s2Step301ExitGvRow 166 s2Step301ExitGv_distinct s2Step301ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step301ExitGvRow.payload.take 166) s2Step301ExitGvRow.sign=s2Step301ExitGvOut := by decide +kernel
  have hi : s2Step301ExitGvRow.payload.drop 166=s2Step301ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step301ExitGv_retired] at result
  exact result

private theorem s2Step301ExitBank_rows : planWindowRowsLog s2Step301ExitGBefore [(s2Step301ExitGRow,119),(s2Step301ExitFRow,120),(s2Step301ExitFvRow,166),(s2Step301ExitGvRow,166)] [[],[],[],[]]=
    some (s2Step301ExitGvAfter,[s2Step301ExitGOut,s2Step301ExitFOut,s2Step301ExitFvOut,s2Step301ExitGvOut],(shrinkRow 769 s2Step301ExitGExtra ++ (shrinkRow 768 s2Step301ExitFExtra ++ (shrinkRow 770 s2Step301ExitFvExtra ++ (shrinkRow 771 s2Step301ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step301ExitGvAfter [] []=some (s2Step301ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step301ExitGvBefore s2Step301ExitGvAfter s2Step301ExitGvAfter
    s2Step301ExitGvRow s2Step301ExitGvOut 166 [] [] [] []
    (shrinkRow 771 s2Step301ExitGvExtra) ([]) s2Step301ExitGv_Incoming s2Step301ExitGv_checked h4 s2Step301ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step301ExitFvBefore s2Step301ExitFvAfter s2Step301ExitGvAfter
    s2Step301ExitFvRow s2Step301ExitFvOut 166 [] [(s2Step301ExitGvRow,166)] [[]] [s2Step301ExitGvOut]
    (shrinkRow 770 s2Step301ExitFvExtra) ((shrinkRow 771 s2Step301ExitGvExtra ++ [])) s2Step301ExitFv_Incoming s2Step301ExitFv_checked h3 s2Step301ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step301ExitFBefore s2Step301ExitFAfter s2Step301ExitGvAfter
    s2Step301ExitFRow s2Step301ExitFOut 120 [] [(s2Step301ExitFvRow,166),(s2Step301ExitGvRow,166)] [[],[]] [s2Step301ExitFvOut,s2Step301ExitGvOut]
    (shrinkRow 768 s2Step301ExitFExtra) ((shrinkRow 770 s2Step301ExitFvExtra ++ (shrinkRow 771 s2Step301ExitGvExtra ++ []))) s2Step301ExitF_Incoming s2Step301ExitF_checked h2 s2Step301ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step301ExitGBefore s2Step301ExitGAfter s2Step301ExitGvAfter
    s2Step301ExitGRow s2Step301ExitGOut 119 [] [(s2Step301ExitFRow,120),(s2Step301ExitFvRow,166),(s2Step301ExitGvRow,166)] [[],[],[]] [s2Step301ExitFOut,s2Step301ExitFvOut,s2Step301ExitGvOut]
    (shrinkRow 769 s2Step301ExitGExtra) ((shrinkRow 768 s2Step301ExitFExtra ++ (shrinkRow 770 s2Step301ExitFvExtra ++ (shrinkRow 771 s2Step301ExitGvExtra ++ [])))) s2Step301ExitG_Incoming s2Step301ExitG_checked h1 s2Step301ExitG_Outgoing
  exact h0

private theorem s2Step301ExitBank_checked : compileHmrBankResizeLog .exit s2Step301ExitGBefore ⟨s2Step301ExitFRow,s2Step301ExitGRow,s2Step301ExitFvRow,s2Step301ExitGvRow⟩ ⟨120,119,166,166⟩ [[],[],[],[]]=
    some (s2Step301ExitGvAfter,⟨s2Step301ExitFOut,s2Step301ExitGOut,s2Step301ExitFvOut,s2Step301ExitGvOut⟩,(shrinkRow 769 s2Step301ExitGExtra ++ (shrinkRow 768 s2Step301ExitFExtra ++ (shrinkRow 770 s2Step301ExitFvExtra ++ (shrinkRow 771 s2Step301ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step301ExitBank_rows]
  rfl

private theorem s2Step301Add0_apart : Disjoint s2Step301Add0Arena.live s2Step301Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step301Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301Add0_card : s2Step301Add0Arena.live.card=903 := by
  decide +kernel

private theorem s2Step301Add0_borrowed : s2Step301Add0Arena.checkBorrow (hmrHybridCount s2Step301Add0Arena s2Step301Add0B.length) s2Step301Add0Work=some s2Step301Add0During := by
  have len : s2Step301Add0Work.length=hmrHybridCount s2Step301Add0Arena s2Step301Add0B.length := by
    rw [hmrHybridCount,s2Step301Add0_card]
    decide +kernel
  have nd : s2Step301Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step301Add0Arena s2Step301Add0During s2Step301Add0Work.toFinset s2Step301Add0_bounded s2Step301Add0_apart rfl

private theorem s2Step301Add0_distinct : (830::820::800::(s2Step301Add0A++s2Step301Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301Add0_owned : (830::820::800::(s2Step301Add0A++s2Step301Add0B)).toFinset⊆s2Step301Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step301Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301Add0_checked : compileHmrHybridCinLog s2Step301Add0Arena 820 830 800 s2Step301Add0A s2Step301Add0B s2Step301Add0Work=some s2Step301Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step301Add0Arena s2Step301Add0During 820 830 800 s2Step301Add0A s2Step301Add0B s2Step301Add0Work
    (by decide +kernel) (by decide +kernel) s2Step301Add0_distinct
    (fun q hq => s2Step301Add0_owned (List.mem_toFinset.mpr hq)) s2Step301Add0_borrowed

private theorem s2Step301Add1_apart : Disjoint s2Step301Add1Arena.live s2Step301Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step301Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301Add1_card : s2Step301Add1Arena.live.card=903 := by
  decide +kernel

private theorem s2Step301Add1_borrowed : s2Step301Add1Arena.checkBorrow (hmrHybridCount s2Step301Add1Arena s2Step301Add1B.length) s2Step301Add1Work=some s2Step301Add1During := by
  have len : s2Step301Add1Work.length=hmrHybridCount s2Step301Add1Arena s2Step301Add1B.length := by
    rw [hmrHybridCount,s2Step301Add1_card]
    decide +kernel
  have nd : s2Step301Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step301Add1Arena s2Step301Add1During s2Step301Add1Work.toFinset s2Step301Add1_bounded s2Step301Add1_apart rfl

private theorem s2Step301Add1_distinct : (830::820::800::(s2Step301Add1A++s2Step301Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301Add1_owned : (830::820::800::(s2Step301Add1A++s2Step301Add1B)).toFinset⊆s2Step301Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step301Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301Add1_checked : compileHmrHybridCinLog s2Step301Add1Arena 820 830 800 s2Step301Add1A s2Step301Add1B s2Step301Add1Work=some s2Step301Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step301Add1Arena s2Step301Add1During 820 830 800 s2Step301Add1A s2Step301Add1B s2Step301Add1Work
    (by decide +kernel) (by decide +kernel) s2Step301Add1_distinct
    (fun q hq => s2Step301Add1_owned (List.mem_toFinset.mpr hq)) s2Step301Add1_borrowed

private theorem s2Step301F4_apart : Disjoint (s2Step301Add0A++s2Step301Add0B).toFinset (s2Step301Add1A++s2Step301Add1B).toFinset := by
  have nd : ((s2Step301Add0A++s2Step301Add0B)++(s2Step301Add1A++s2Step301Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step301F4_carry : s2Step301F4FlagArena.checkBorrow 1 [800]=some s2Step301Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step301F4FlagArena,s2Step301HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step301F4FlagArena,s2Step301HeadFvAfter,s2Step301Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step301F4_distinct : (793::820::830::800::((s2Step301Add0A++s2Step301Add1A)++(s2Step301Add0B++s2Step301Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301F4_flag : s2Step301HeadFvAfter.checkBorrow 1 [830]=some s2Step301F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step301HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step301F4_owned : (793::820::((s2Step301Add0A++s2Step301Add1A)++(s2Step301Add0B++s2Step301Add1B))).toFinset⊆s2Step301HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step301HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301F4_checked : compileHmrHybridF4Log s2Step301HeadFvAfter 793 820 s2Step301Add0A s2Step301Add0B s2Step301Add1A s2Step301Add1B [830] [800] s2Step301Add0Work s2Step301Add1Work=some s2Step301F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step301HeadFvAfter s2Step301F4FlagArena s2Step301Add0Arena s2Step301Add0During s2Step301Add1During 793 820
    s2Step301Add0A s2Step301Add0B s2Step301Add1A s2Step301Add1B [830] [800] s2Step301Add0Work s2Step301Add1Work
    (fun q hq => s2Step301F4_owned (List.mem_toFinset.mpr hq)) s2Step301F4_flag s2Step301F4_carry
    s2Step301F4_distinct s2Step301F4_apart s2Step301Add0_checked s2Step301Add1_checked

private theorem s2Step301Front_branch : s2Step301FrontSigmaArena.checkBorrow 1 [820]=some s2Step301HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step301FrontSigmaArena,s2Step301EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step301FrontSigmaArena,s2Step301EntryGvAfter,s2Step301HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step301Front_entry : HmrFrontEntryValid s2Step301EntryFBefore s2Step301FrontBank 121 166 ⟨120,119,166,166⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step301FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step301EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step301EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step301FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step301Front_sigma : s2Step301EntryGvAfter.checkBorrow 1 [793]=some s2Step301FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step301EntryGvAfter,arenaWires]
  · rfl

private def s2Step301HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301HeadFBefore : Arena := s2Step301HeadGAfter

private def s2Step301HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩

private def s2Step301HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩

private def s2Step301HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 805],769⟩

private def s2Step301HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩

private theorem s2Step301HeadBank_incomingDistinct : ([s2Step301HeadGRow,s2Step301HeadFRow,s2Step301HeadGvRow,s2Step301HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301HeadF_Incoming : rowsOwned s2Step301HeadFBefore [s2Step301HeadFRow,s2Step301HeadGvRow,s2Step301HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301HeadGRow,s2Step301HeadFRow,s2Step301HeadGvRow,s2Step301HeadFvRow] 1 s2Step301HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301HeadBank_outgoingOwned : rowsOwned s2Step301HeadFvAfter [s2Step301HeadGOut,s2Step301HeadFOut,s2Step301HeadGvOut,s2Step301HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step301HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301HeadF_Outgoing : rowsOwned s2Step301HeadFvAfter [s2Step301HeadFOut,s2Step301HeadGvOut,s2Step301HeadFvOut] :=
  hmrRows_owned_drop s2Step301HeadFvAfter [s2Step301HeadGOut,s2Step301HeadFOut,s2Step301HeadGvOut,s2Step301HeadFvOut] 1 s2Step301HeadBank_outgoingOwned

private theorem s2Step301HeadF_distinct : (s2Step301HeadFRow.sign::s2Step301HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301HeadF_owned : (s2Step301HeadFRow.sign::s2Step301HeadFRow.payload).toFinset⊆s2Step301HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301HeadF_reserved : s2Step301HeadFBefore.reserve s2Step301HeadFFresh.toFinset=some s2Step301HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step301HeadFFresh,arenaWires]
  · norm_num [s2Step301HeadFBefore,s2Step301HeadGAfter,s2Step301HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step301HeadFAfter,s2Step301HeadFBefore,s2Step301HeadGAfter,s2Step301HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step301HeadF_checked : planRowResizeLog s2Step301HeadFBefore s2Step301HeadFRow 122 s2Step301HeadFFresh=
    some (s2Step301HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 797],768⟩,growRow 768 s2Step301HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step301HeadFBefore s2Step301HeadFAfter s2Step301HeadFRow 122 s2Step301HeadFFresh
    s2Step301HeadF_distinct s2Step301HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step301HeadF_reserved
  have rowEq : WindowRow.mk (s2Step301HeadFRow.payload++s2Step301HeadFFresh) s2Step301HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 797],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step301HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step301HeadFvBefore : Arena := s2Step301HeadGvAfter

private theorem s2Step301HeadFv_Incoming : rowsOwned s2Step301HeadFvBefore [s2Step301HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301HeadGRow,s2Step301HeadFRow,s2Step301HeadGvRow,s2Step301HeadFvRow] 3 s2Step301HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301HeadFv_Outgoing : rowsOwned s2Step301HeadFvAfter [s2Step301HeadFvOut] :=
  hmrRows_owned_drop s2Step301HeadFvAfter [s2Step301HeadGOut,s2Step301HeadFOut,s2Step301HeadGvOut,s2Step301HeadFvOut] 3 s2Step301HeadBank_outgoingOwned

private theorem s2Step301HeadFv_distinct : (s2Step301HeadFvRow.sign::s2Step301HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301HeadFv_owned : (s2Step301HeadFvRow.sign::s2Step301HeadFvRow.payload).toFinset⊆s2Step301HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301HeadFv_reserved : s2Step301HeadFvBefore.reserve s2Step301HeadFvFresh.toFinset=some s2Step301HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step301HeadFvFresh,arenaWires]
  · norm_num [s2Step301HeadFvBefore,s2Step301HeadGvAfter,s2Step301HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step301HeadFvAfter,s2Step301HeadFvBefore,s2Step301HeadGvAfter,s2Step301HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step301HeadFv_checked : planRowResizeLog s2Step301HeadFvBefore s2Step301HeadFvRow 167 s2Step301HeadFvFresh=
    some (s2Step301HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 811],770⟩,growRow 770 s2Step301HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step301HeadFvBefore s2Step301HeadFvAfter s2Step301HeadFvRow 167 s2Step301HeadFvFresh
    s2Step301HeadFv_distinct s2Step301HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step301HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step301HeadFvRow.payload++s2Step301HeadFvFresh) s2Step301HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 811],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step301HeadG_Incoming : rowsOwned s2Step301HeadGBefore [s2Step301HeadGRow,s2Step301HeadFRow,s2Step301HeadGvRow,s2Step301HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301HeadGRow,s2Step301HeadFRow,s2Step301HeadGvRow,s2Step301HeadFvRow] 0 s2Step301HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301HeadG_Outgoing : rowsOwned s2Step301HeadFvAfter [s2Step301HeadGOut,s2Step301HeadFOut,s2Step301HeadGvOut,s2Step301HeadFvOut] :=
  hmrRows_owned_drop s2Step301HeadFvAfter [s2Step301HeadGOut,s2Step301HeadFOut,s2Step301HeadGvOut,s2Step301HeadFvOut] 0 s2Step301HeadBank_outgoingOwned

private theorem s2Step301HeadG_distinct : (s2Step301HeadGRow.sign::s2Step301HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301HeadG_owned : (s2Step301HeadGRow.sign::s2Step301HeadGRow.payload).toFinset⊆s2Step301HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301HeadG_reserved : s2Step301HeadGBefore.reserve s2Step301HeadGFresh.toFinset=some s2Step301HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step301HeadGFresh,arenaWires]
  · norm_num [s2Step301HeadGBefore,s2Step301HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step301HeadGAfter,s2Step301HeadGBefore,s2Step301HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step301HeadG_checked : planRowResizeLog s2Step301HeadGBefore s2Step301HeadGRow 122 s2Step301HeadGFresh=
    some (s2Step301HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 805, 787],769⟩,growRow 769 s2Step301HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step301HeadGBefore s2Step301HeadGAfter s2Step301HeadGRow 122 s2Step301HeadGFresh
    s2Step301HeadG_distinct s2Step301HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step301HeadG_reserved
  have rowEq : WindowRow.mk (s2Step301HeadGRow.payload++s2Step301HeadGFresh) s2Step301HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 805, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step301HeadGvBefore : Arena := s2Step301HeadFAfter

private theorem s2Step301HeadGv_Incoming : rowsOwned s2Step301HeadGvBefore [s2Step301HeadGvRow,s2Step301HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step301HeadGRow,s2Step301HeadFRow,s2Step301HeadGvRow,s2Step301HeadFvRow] 2 s2Step301HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step301HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step301HeadGv_Outgoing : rowsOwned s2Step301HeadFvAfter [s2Step301HeadGvOut,s2Step301HeadFvOut] :=
  hmrRows_owned_drop s2Step301HeadFvAfter [s2Step301HeadGOut,s2Step301HeadFOut,s2Step301HeadGvOut,s2Step301HeadFvOut] 2 s2Step301HeadBank_outgoingOwned

private theorem s2Step301HeadGv_distinct : (s2Step301HeadGvRow.sign::s2Step301HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step301HeadGv_owned : (s2Step301HeadGvRow.sign::s2Step301HeadGvRow.payload).toFinset⊆s2Step301HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step301HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step301HeadGv_reserved : s2Step301HeadGvBefore.reserve s2Step301HeadGvFresh.toFinset=some s2Step301HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step301HeadGvFresh,arenaWires]
  · norm_num [s2Step301HeadGvBefore,s2Step301HeadFAfter,s2Step301HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step301HeadGvAfter,s2Step301HeadGvBefore,s2Step301HeadFAfter,s2Step301HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step301HeadGv_checked : planRowResizeLog s2Step301HeadGvBefore s2Step301HeadGvRow 167 s2Step301HeadGvFresh=
    some (s2Step301HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 806],771⟩,growRow 771 s2Step301HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step301HeadGvBefore s2Step301HeadGvAfter s2Step301HeadGvRow 167 s2Step301HeadGvFresh
    s2Step301HeadGv_distinct s2Step301HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step301HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step301HeadGvRow.payload++s2Step301HeadGvFresh) s2Step301HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 806],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step301HeadBank_rows : planWindowRowsLog s2Step301HeadGBefore [(s2Step301HeadGRow,122),(s2Step301HeadFRow,122),(s2Step301HeadGvRow,167),(s2Step301HeadFvRow,167)] [s2Step301HeadGFresh,s2Step301HeadFFresh,s2Step301HeadGvFresh,s2Step301HeadFvFresh]=
    some (s2Step301HeadFvAfter,[s2Step301HeadGOut,s2Step301HeadFOut,s2Step301HeadGvOut,s2Step301HeadFvOut],(growRow 769 s2Step301HeadGFresh ++ (growRow 768 s2Step301HeadFFresh ++ (growRow 771 s2Step301HeadGvFresh ++ (growRow 770 s2Step301HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step301HeadFvAfter [] []=some (s2Step301HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step301HeadFvBefore s2Step301HeadFvAfter s2Step301HeadFvAfter
    s2Step301HeadFvRow s2Step301HeadFvOut 167 s2Step301HeadFvFresh [] [] []
    (growRow 770 s2Step301HeadFvFresh) ([]) s2Step301HeadFv_Incoming s2Step301HeadFv_checked h4 s2Step301HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step301HeadGvBefore s2Step301HeadGvAfter s2Step301HeadFvAfter
    s2Step301HeadGvRow s2Step301HeadGvOut 167 s2Step301HeadGvFresh [(s2Step301HeadFvRow,167)] [s2Step301HeadFvFresh] [s2Step301HeadFvOut]
    (growRow 771 s2Step301HeadGvFresh) ((growRow 770 s2Step301HeadFvFresh ++ [])) s2Step301HeadGv_Incoming s2Step301HeadGv_checked h3 s2Step301HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step301HeadFBefore s2Step301HeadFAfter s2Step301HeadFvAfter
    s2Step301HeadFRow s2Step301HeadFOut 122 s2Step301HeadFFresh [(s2Step301HeadGvRow,167),(s2Step301HeadFvRow,167)] [s2Step301HeadGvFresh,s2Step301HeadFvFresh] [s2Step301HeadGvOut,s2Step301HeadFvOut]
    (growRow 768 s2Step301HeadFFresh) ((growRow 771 s2Step301HeadGvFresh ++ (growRow 770 s2Step301HeadFvFresh ++ []))) s2Step301HeadF_Incoming s2Step301HeadF_checked h2 s2Step301HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step301HeadGBefore s2Step301HeadGAfter s2Step301HeadFvAfter
    s2Step301HeadGRow s2Step301HeadGOut 122 s2Step301HeadGFresh [(s2Step301HeadFRow,122),(s2Step301HeadGvRow,167),(s2Step301HeadFvRow,167)] [s2Step301HeadFFresh,s2Step301HeadGvFresh,s2Step301HeadFvFresh] [s2Step301HeadFOut,s2Step301HeadGvOut,s2Step301HeadFvOut]
    (growRow 769 s2Step301HeadGFresh) ((growRow 768 s2Step301HeadFFresh ++ (growRow 771 s2Step301HeadGvFresh ++ (growRow 770 s2Step301HeadFvFresh ++ [])))) s2Step301HeadG_Incoming s2Step301HeadG_checked h1 s2Step301HeadG_Outgoing
  exact h0

private theorem s2Step301HeadBank_checked : compileHmrBankResizeLog .headroom s2Step301HeadGBefore ⟨s2Step301HeadFRow,s2Step301HeadGRow,s2Step301HeadFvRow,s2Step301HeadGvRow⟩ ⟨122,122,167,167⟩ [s2Step301HeadGFresh,s2Step301HeadFFresh,s2Step301HeadGvFresh,s2Step301HeadFvFresh]=
    some (s2Step301HeadFvAfter,⟨s2Step301HeadFOut,s2Step301HeadGOut,s2Step301HeadFvOut,s2Step301HeadGvOut⟩,(growRow 769 s2Step301HeadGFresh ++ (growRow 768 s2Step301HeadFFresh ++ (growRow 771 s2Step301HeadGvFresh ++ (growRow 770 s2Step301HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step301HeadBank_rows]
  rfl

private theorem s2Step301Front_checked : compileHmrSourceFrontLog s2Step301EntryFBefore s2Step301FrontBank 121 166 ⟨120,119,166,166⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step301FrontLog=some s2Step301FrontPlan := by
  have pairEq : s2Step301FrontPair=⟨s2Step301HeadFRow,s2Step301HeadGRow,s2Step301HeadFvRow,s2Step301HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step301FrontHead=⟨s2Step301ExitFRow,s2Step301ExitGRow,s2Step301ExitFvRow,s2Step301ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step301Add0A=s2Step301FrontHead.f.wires := by decide +kernel
  have gEq : s2Step301Add0B=s2Step301FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step301Add1A=s2Step301FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step301Add1B=s2Step301FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step301EntryFBefore s2Step301FrontBank 121 166 ⟨120,119,166,166⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step301FrontLog s2Step301FrontPlan
  · exact s2Step301Front_entry
  · exact s2Step301EntryBank_checked
  · exact s2Step301Front_sigma
  · rfl
  · exact s2Step301Front_branch
  · rfl
  · simpa only [s2Step301FrontPlan,pairEq] using s2Step301HeadBank_checked
  · simpa only [s2Step301FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step301F4_checked
  · exact s2Step301Counter_checked
  · rfl
  · simpa only [s2Step301FrontPlan,headEq] using s2Step301ExitBank_checked

private theorem s2Step301Complete_explicit_checked : compileHmrEarlyStepLog s2Step301EntryFBefore s2Step301FrontBank 121 166 ⟨120,119,166,166⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step301CompleteLog=some s2Step301CompletePlan := by
  let Q := s2Step301EarlyControlPlan
  have hq := s2Step301EarlyControl_plan_checked
  have fv1 : s2Step301CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step301CompleteOut.fv.payload[2]?.getD s2Step301CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step301CompleteOut.fv.payload[3]?.getD s2Step301CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step301CompleteOut.fv.payload[4]?.getD s2Step301CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step301EntryFBefore s2Step301EarlyControlArena s2Step301FrontBank 121 166 ⟨120,119,166,166⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step301CompleteLog s2Step301FrontPlan Q
    s2Step301Front_checked s2Step301Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step301Complete_owned s2Step301Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step301EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 793 s2Step301CompleteOut.fv.second (s2Step301CompleteOut.fv.payload[2]?.getD s2Step301CompleteOut.fv.sign) (s2Step301CompleteOut.fv.payload[3]?.getD s2Step301CompleteOut.fv.sign) (s2Step301CompleteOut.fv.payload[4]?.getD s2Step301CompleteOut.fv.sign) 820 55 s2Step301EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep301Arena : Arena := s2Step301EntryFBefore
def s2PrivateStep301Bank : WindowBank := s2Step301FrontBank
def s2PrivateStep301Spec : HmrSourceWalkStepLog := ⟨121,166,⟨120,119,166,166⟩,55,.early s2Step301CompleteLog⟩
def s2PrivateStep301Plan : HmrSourceStepPlan := .early s2Step301CompletePlan
theorem s2PrivateStep301_source : s2PrivateStep301Spec=s2ObservedLogs288[13] := rfl
theorem s2PrivateStep301_checked : compileHmrSourceStepLog s2PrivateStep301Arena s2PrivateStep301Bank
    s2PrivateStep301Spec.fgWidth s2PrivateStep301Spec.vWidth s2PrivateStep301Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 301 s2PrivateStep301Spec.need none s2PrivateStep301Spec.log=some s2PrivateStep301Plan := by
  change compileHmrSourceStepLog s2Step301EntryFBefore s2Step301FrontBank 121 166 ⟨120,119,166,166⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 301 55 none (.early s2Step301CompleteLog)=some (.early s2Step301CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 301<498)]
  rw [s2Step301Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
