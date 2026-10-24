import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep273
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

private def s2Step275CompleteMoves : List (Wire × Wire) := [(815,132)]

private def s2Step275EarlyControlLog : HmrEarlyControlLog := ⟨[815, 788, 791, 841, 789],[781],[891],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step275FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [851]],[[789], [841], [788], [791]],[[], [], [], []]⟩,[844],[839],[781],[891],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 891, 830, 800]⟩

private def s2Step275CompleteLog : HmrEarlyStepLog := ⟨s2Step275FrontLog,s2Step275CompleteMoves,s2Step275EarlyControlLog⟩

private def s2Step275ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩

private def s2Step275ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩

private def s2Step275ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩

private def s2Step275ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩

private def s2Step275FrontOut : WindowBank := ⟨s2Step275ExitFOut,s2Step275ExitGOut,s2Step275ExitFvOut,s2Step275ExitGvOut⟩

private def s2Step275CompleteOut : WindowBank := s2Step275FrontOut.repacked s2Step275CompleteMoves

private def s2Step275EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step275EarlyControlPositiveArena,[781],s2Step275EarlyControlEqualityArena,[891],⟨⟨844,false⟩,[⟨⟨781,false⟩,891⟩]⟩⟩

private def s2Step275EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,815⟩,⟨⟨774,false⟩,788⟩,⟨⟨775,false⟩,791⟩,⟨⟨776,false⟩,841⟩,⟨⟨777,false⟩,789⟩]⟩

private def s2Step275EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step275EarlyControlZeroArena,s2Step275EarlyControlZeroPlan,s2Step275EarlyControlClassPlan,s2Step275EarlyControlFlagArena,s2Step275EarlyControlFittedArena,s2Step275EarlyControlHistoryArena,s2Step275EarlyControlSigmaArena,s2Step275EarlyControlOutputArena,s2Step275EarlyControlLog⟩

private def s2Step275CounterWork : List Wire := [781, 891, 830, 800]

private theorem s2Step275Counter_bounded : s2Step275CounterWork.toFinset⊆arenaWires := by norm_num [s2Step275CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step275HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275CounterDuring : Arena := ⟨s2Step275HeadFvAfter.live∪s2Step275CounterWork.toFinset,Finset.union_subset s2Step275HeadFvAfter.bounded s2Step275Counter_bounded⟩

private def s2Step275EntryFFresh : List Wire := []

private def s2Step275EntryFvFresh : List Wire := []

private def s2Step275EntryGFresh : List Wire := []

private def s2Step275EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EntryGvFresh : List Wire := [851]

private def s2Step275ExitFExtra : List Wire := [841]

private def s2Step275ExitFvExtra : List Wire := [791]

private def s2Step275ExitGExtra : List Wire := [132, 789]

private def s2Step275ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275ExitGvExtra : List Wire := [788]

private def s2Step275Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step275Add0_bounded : s2Step275Add0Work.toFinset⊆arenaWires := by
  have h : s2Step275Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step275Add0During : Arena := ⟨s2Step275Add0Arena.live∪s2Step275Add0Work.toFinset,Finset.union_subset s2Step275Add0Arena.bounded s2Step275Add0_bounded⟩

private def s2Step275Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step275Add1_bounded : s2Step275Add1Work.toFinset⊆arenaWires := by
  have h : s2Step275Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step275Add1During : Arena := ⟨s2Step275Add1Arena.live∪s2Step275Add1Work.toFinset,Finset.union_subset s2Step275Add1Arena.bounded s2Step275Add1_bounded⟩

private def s2Step275F4FlagArena : Arena := ⟨s2Step275HeadFvAfter.live∪{781},Finset.union_subset s2Step275HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step275F4Plan : HmrHybridF4Plan := ⟨s2Step275F4FlagArena,[781],s2Step275Add0Arena,[891],s2Step275Add0During,s2Step275Add0Work,s2Step275Add1During,s2Step275Add1Work⟩

private def s2Step275HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 841],768⟩

private def s2Step275HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 791],770⟩

private def s2Step275HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 789],769⟩

private def s2Step275HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 788],771⟩

private def s2Step275FrontHead : WindowBank := ⟨s2Step275HeadFOut,s2Step275HeadGOut,s2Step275HeadFvOut,s2Step275HeadGvOut⟩

private def s2Step275EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩

private def s2Step275EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩

private def s2Step275EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132],769⟩

private def s2Step275EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩

private def s2Step275FrontPair : WindowBank := ⟨s2Step275EntryFOut,s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut⟩

private def s2Step275FrontSigmaArena : Arena := ⟨s2Step275EntryGvAfter.live∪{844},Finset.union_subset s2Step275EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step275HeadFFresh : List Wire := [841]

private def s2Step275HeadFvFresh : List Wire := [791]

private def s2Step275HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275HeadGFresh : List Wire := [789]

private def s2Step275HeadGvFresh : List Wire := [788]

private def s2Step275FrontPlan : HmrSourceFront := ⟨s2Step275EntryGvAfter,s2Step275FrontPair,(growRow 768 s2Step275EntryFFresh ++ (growRow 769 s2Step275EntryGFresh ++ (growRow 770 s2Step275EntryFvFresh ++ (growRow 771 s2Step275EntryGvFresh ++ [])))),s2Step275FrontSigmaArena,[844],s2Step275HeadGBefore,[839],
  s2Step275HeadFvAfter,s2Step275FrontHead,(growRow 769 s2Step275HeadGFresh ++ (growRow 768 s2Step275HeadFFresh ++ (growRow 771 s2Step275HeadGvFresh ++ (growRow 770 s2Step275HeadFvFresh ++ [])))),s2Step275F4Plan,s2Step275CounterDuring,s2Step275CounterWork,s2Step275ExitGvAfter,s2Step275FrontOut,(shrinkRow 769 s2Step275ExitGExtra ++ (shrinkRow 768 s2Step275ExitFExtra ++ (shrinkRow 770 s2Step275ExitFvExtra ++ (shrinkRow 771 s2Step275ExitGvExtra ++ []))))⟩

private def s2Step275CompletePlan : HmrEarlyStepPlan := ⟨s2Step275FrontPlan,s2Step275EarlyControlArena,s2Step275EarlyControlPlan,s2Step275CompleteMoves⟩

private theorem s2Step275Complete_apart : List.Disjoint (s2Step275CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  have nd : ((s2Step275CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step275Complete_owned : (s2Step275CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step275EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step275CompleteMoveArena : Arena := ⟨s2Step275ExitGvAfter.live∪{132},Finset.union_subset s2Step275ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step275Complete_repack : s2Step275ExitGvAfter.checkRepack s2Step275CompleteMoves=some s2Step275EarlyControlArena := by
  have owned : 815∈s2Step275ExitGvAfter.live := by norm_num [s2Step275ExitGvAfter,arenaWires]
  have reserve : s2Step275ExitGvAfter.reserve {132}=some s2Step275CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step275ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step275CompleteMoveArena.retireSet {815}=s2Step275EarlyControlArena := by
    unfold Arena.retireSet s2Step275EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step275CompleteMoveArena,s2Step275ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step275CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step275CompleteMoveArena.retireSet {815}).checkRepack []=some s2Step275EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step275EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s2Step275EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_branch : compileHmrBranchRetirement s2Step275EarlyControlSigmaArena 839=some s2Step275EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step275EarlyControl_branchOwned
  · ext q
    simp [s2Step275EarlyControlOutputArena,s2Step275EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step275EarlyControl_classEqualityBorrow : s2Step275EarlyControlPositiveArena.checkBorrow (([844, 781] : List Wire).length-1) s2Step275EarlyControlLog.classWork=some s2Step275EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step275EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step275EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step275EarlyControlEqualityArena,s2Step275EarlyControlPositiveArena,s2Step275EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step275EarlyControl_classEqualityOwned : ([844, 781] : List Wire).toFinset⊆s2Step275EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_classEquality : compileHmrEqualityLog s2Step275EarlyControlPositiveArena [844, 781] 0 s2Step275EarlyControlLog.classWork=some (s2Step275EarlyControlEqualityArena,s2Step275EarlyControlLog.classWork,s2Step275EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step275EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step275EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step275EarlyControl_classOwned : ([777, 789, 844] : List Wire).toFinset⊆s2Step275EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_positiveBorrow : s2Step275EarlyControlZeroArena.checkBorrow (1) s2Step275EarlyControlLog.positiveWork=some s2Step275EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step275EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step275EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step275EarlyControlPositiveArena,s2Step275EarlyControlZeroArena,s2Step275EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step275EarlyControl_class : compileHmrSourceClassLog s2Step275EarlyControlZeroArena false 777 s2Step275EarlyControlZeroPlan.top 0 844 s2Step275EarlyControlLog.positiveWork s2Step275EarlyControlLog.classWork=some s2Step275EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step275EarlyControlClassPlan s2Step275EarlyControlZeroArena false 777 s2Step275EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step275EarlyControl_classOwned
  · exact s2Step275EarlyControl_positiveBorrow
  · exact s2Step275EarlyControl_classEquality

private theorem s2Step275EarlyControl_entryRecordOwned : ([839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step275EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step275EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_fitBorrow : s2Step275EarlyControlFlagArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step275EarlyControlLog.recordFresh=some s2Step275EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step275EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step275EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step275EarlyControlFittedArena,s2Step275EarlyControlFlagArena,s2Step275EarlyControlLog,arenaWires]

private theorem s2Step275EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step275EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_fit : compileHmrRecordGrowLog s2Step275EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step275EarlyControlLog.recordFresh=some s2Step275EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step275EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step275EarlyControl_fitBorrow

private theorem s2Step275EarlyControl_flagsBorrow : s2Step275EarlyControlEqualityArena.checkBorrow (6) s2Step275EarlyControlLog.flagWork=some s2Step275EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step275EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step275EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step275EarlyControlFlagArena,s2Step275EarlyControlEqualityArena,s2Step275EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step275EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s2Step275EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_flags : compileHmrFlagsLog s2Step275EarlyControlClassPlan.equalityArena s2Step275EarlyControlClassPlan.equality.top 253 252 251 s2Step275EarlyControlLog.flagWork=some s2Step275EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step275EarlyControl_flagsOwned⟩
  · exact s2Step275EarlyControl_flagsBorrow

private theorem s2Step275EarlyControl_historyBorrow : s2Step275EarlyControlArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step275EarlyControlLog.recordFresh=some s2Step275EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step275EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step275EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step275EarlyControlHistoryArena,s2Step275EarlyControlArena,s2Step275EarlyControlLog,arenaWires]

private theorem s2Step275EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step275EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_history : compileHmrRecordGrowLog s2Step275EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step275EarlyControlLog.recordFresh=some s2Step275EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step275EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step275EarlyControl_historyBorrow

private theorem s2Step275EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step275EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step275EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_sigmaRelease : s2Step275EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step275EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step275EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step275EarlyControlSigmaArena,s2Step275EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step275EarlyControl_sigma : compileHmrSigmaDropLog s2Step275EarlyControlHistoryArena false 0 0 254 844 []=some s2Step275EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step275EarlyControl_sigmaOwned⟩
  · exact s2Step275EarlyControl_sigmaRelease

private theorem s2Step275EarlyControl_zeroBorrow : s2Step275EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step275EarlyControlLog.zeroWork=some s2Step275EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step275EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step275EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step275EarlyControlZeroArena,s2Step275EarlyControlArena,s2Step275EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step275EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step275EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step275EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EarlyControl_zero : compileHmrEqualityLog s2Step275EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step275EarlyControlLog.zeroWork=some (s2Step275EarlyControlZeroArena,s2Step275EarlyControlLog.zeroWork,s2Step275EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step275EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step275EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step275EarlyControl_logged : s2Step275EarlyControlPlan.Logged s2Step275EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 839 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step275EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step275EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step275EarlyControl_zero
  · exact s2Step275EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step275EarlyControl_flags
  · exact s2Step275EarlyControl_fit
  · exact s2Step275EarlyControl_history
  · exact s2Step275EarlyControl_sigma
  · exact s2Step275EarlyControl_branch

private theorem s2Step275EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step275EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 839 53 s2Step275EarlyControlLog=some s2Step275EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step275EarlyControlPlan s2Step275EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 839 53 s2Step275EarlyControl_logged

private def s2Step275EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩

private def s2Step275EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩

private def s2Step275EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132],769⟩

private def s2Step275EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩

private def s2Step275FrontBank : WindowBank := ⟨s2Step275EntryFRow,s2Step275EntryGRow,s2Step275EntryFvRow,s2Step275EntryGvRow⟩

private def s2Step275Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 841, 768]

private def s2Step275Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 789, 769]

private def s2Step275Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 791, 770]

private def s2Step275Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 788, 771]

private theorem s2Step275Counter_apart : Disjoint s2Step275HeadFvAfter.live s2Step275CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step275HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275Counter_borrowed : s2Step275HeadFvAfter.checkBorrow 4 s2Step275CounterWork=some s2Step275CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step275HeadFvAfter s2Step275CounterDuring s2Step275CounterWork.toFinset s2Step275Counter_bounded s2Step275Counter_apart rfl

private theorem s2Step275Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step275HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step275HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275Counter_checked : compileHmrCounterStepLog s2Step275HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step275CounterWork=some s2Step275CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step275HeadFvAfter.live := fun q hq => s2Step275Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step275Counter_borrowed

private def s2Step275EntryFAfter : Arena := s2Step275EntryFBefore

private theorem s2Step275EntryBank_incomingDistinct : ([s2Step275EntryFRow,s2Step275EntryGRow,s2Step275EntryFvRow,s2Step275EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275EntryF_Incoming : rowsOwned s2Step275EntryFBefore [s2Step275EntryFRow,s2Step275EntryGRow,s2Step275EntryFvRow,s2Step275EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275EntryFRow,s2Step275EntryGRow,s2Step275EntryFvRow,s2Step275EntryGvRow] 0 s2Step275EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275EntryBank_outgoingOwned : rowsOwned s2Step275EntryGvAfter [s2Step275EntryFOut,s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step275EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275EntryF_Outgoing : rowsOwned s2Step275EntryGvAfter [s2Step275EntryFOut,s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut] :=
  hmrRows_owned_drop s2Step275EntryGvAfter [s2Step275EntryFOut,s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut] 0 s2Step275EntryBank_outgoingOwned

private theorem s2Step275EntryF_distinct : (s2Step275EntryFRow.sign::s2Step275EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275EntryF_owned : (s2Step275EntryFRow.sign::s2Step275EntryFRow.payload).toFinset⊆s2Step275EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EntryF_reserved : s2Step275EntryFBefore.reserve s2Step275EntryFFresh.toFinset=some s2Step275EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step275EntryFFresh,arenaWires]
  · norm_num [s2Step275EntryFBefore,s2Step275EntryFFresh,arenaWires]
  · simp only [s2Step275EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step275EntryF_checked : planRowResizeLog s2Step275EntryFBefore s2Step275EntryFRow 133 s2Step275EntryFFresh=
    some (s2Step275EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩,growRow 768 s2Step275EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step275EntryFBefore s2Step275EntryFAfter s2Step275EntryFRow 133 s2Step275EntryFFresh
    s2Step275EntryF_distinct s2Step275EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step275EntryF_reserved
  have rowEq : WindowRow.mk (s2Step275EntryFRow.payload++s2Step275EntryFFresh) s2Step275EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step275EntryFvAfter : Arena := s2Step275EntryFBefore

private def s2Step275EntryFvBefore : Arena := s2Step275EntryFBefore

private theorem s2Step275EntryFv_Incoming : rowsOwned s2Step275EntryFvBefore [s2Step275EntryFvRow,s2Step275EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275EntryFRow,s2Step275EntryGRow,s2Step275EntryFvRow,s2Step275EntryGvRow] 2 s2Step275EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275EntryFv_Outgoing : rowsOwned s2Step275EntryGvAfter [s2Step275EntryFvOut,s2Step275EntryGvOut] :=
  hmrRows_owned_drop s2Step275EntryGvAfter [s2Step275EntryFOut,s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut] 2 s2Step275EntryBank_outgoingOwned

private theorem s2Step275EntryFv_distinct : (s2Step275EntryFvRow.sign::s2Step275EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275EntryFv_owned : (s2Step275EntryFvRow.sign::s2Step275EntryFvRow.payload).toFinset⊆s2Step275EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EntryFv_reserved : s2Step275EntryFvBefore.reserve s2Step275EntryFvFresh.toFinset=some s2Step275EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step275EntryFvFresh,arenaWires]
  · norm_num [s2Step275EntryFvBefore,s2Step275EntryFBefore,s2Step275EntryFvFresh,arenaWires]
  · simp only [s2Step275EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step275EntryFv_checked : planRowResizeLog s2Step275EntryFvBefore s2Step275EntryFvRow 153 s2Step275EntryFvFresh=
    some (s2Step275EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩,growRow 770 s2Step275EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step275EntryFvBefore s2Step275EntryFvAfter s2Step275EntryFvRow 153 s2Step275EntryFvFresh
    s2Step275EntryFv_distinct s2Step275EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step275EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step275EntryFvRow.payload++s2Step275EntryFvFresh) s2Step275EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step275EntryGAfter : Arena := s2Step275EntryFBefore

private def s2Step275EntryGBefore : Arena := s2Step275EntryFBefore

private theorem s2Step275EntryG_Incoming : rowsOwned s2Step275EntryGBefore [s2Step275EntryGRow,s2Step275EntryFvRow,s2Step275EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275EntryFRow,s2Step275EntryGRow,s2Step275EntryFvRow,s2Step275EntryGvRow] 1 s2Step275EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275EntryG_Outgoing : rowsOwned s2Step275EntryGvAfter [s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut] :=
  hmrRows_owned_drop s2Step275EntryGvAfter [s2Step275EntryFOut,s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut] 1 s2Step275EntryBank_outgoingOwned

private theorem s2Step275EntryG_distinct : (s2Step275EntryGRow.sign::s2Step275EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275EntryG_owned : (s2Step275EntryGRow.sign::s2Step275EntryGRow.payload).toFinset⊆s2Step275EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EntryG_reserved : s2Step275EntryGBefore.reserve s2Step275EntryGFresh.toFinset=some s2Step275EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step275EntryGFresh,arenaWires]
  · norm_num [s2Step275EntryGBefore,s2Step275EntryFBefore,s2Step275EntryGFresh,arenaWires]
  · simp only [s2Step275EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step275EntryG_checked : planRowResizeLog s2Step275EntryGBefore s2Step275EntryGRow 133 s2Step275EntryGFresh=
    some (s2Step275EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132],769⟩,growRow 769 s2Step275EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step275EntryGBefore s2Step275EntryGAfter s2Step275EntryGRow 133 s2Step275EntryGFresh
    s2Step275EntryG_distinct s2Step275EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step275EntryG_reserved
  have rowEq : WindowRow.mk (s2Step275EntryGRow.payload++s2Step275EntryGFresh) s2Step275EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step275EntryGvBefore : Arena := s2Step275EntryFBefore

private theorem s2Step275EntryGv_Incoming : rowsOwned s2Step275EntryGvBefore [s2Step275EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275EntryFRow,s2Step275EntryGRow,s2Step275EntryFvRow,s2Step275EntryGvRow] 3 s2Step275EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275EntryGv_Outgoing : rowsOwned s2Step275EntryGvAfter [s2Step275EntryGvOut] :=
  hmrRows_owned_drop s2Step275EntryGvAfter [s2Step275EntryFOut,s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut] 3 s2Step275EntryBank_outgoingOwned

private theorem s2Step275EntryGv_distinct : (s2Step275EntryGvRow.sign::s2Step275EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275EntryGv_owned : (s2Step275EntryGvRow.sign::s2Step275EntryGvRow.payload).toFinset⊆s2Step275EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275EntryGv_reserved : s2Step275EntryGvBefore.reserve s2Step275EntryGvFresh.toFinset=some s2Step275EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step275EntryGvFresh,arenaWires]
  · norm_num [s2Step275EntryGvBefore,s2Step275EntryFBefore,s2Step275EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step275EntryGvAfter,s2Step275EntryGvBefore,s2Step275EntryFBefore,s2Step275EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step275EntryGv_checked : planRowResizeLog s2Step275EntryGvBefore s2Step275EntryGvRow 153 s2Step275EntryGvFresh=
    some (s2Step275EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩,growRow 771 s2Step275EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step275EntryGvBefore s2Step275EntryGvAfter s2Step275EntryGvRow 153 s2Step275EntryGvFresh
    s2Step275EntryGv_distinct s2Step275EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step275EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step275EntryGvRow.payload++s2Step275EntryGvFresh) s2Step275EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step275EntryBank_rows : planWindowRowsLog s2Step275EntryFBefore [(s2Step275EntryFRow,133),(s2Step275EntryGRow,133),(s2Step275EntryFvRow,153),(s2Step275EntryGvRow,153)] [s2Step275EntryFFresh,s2Step275EntryGFresh,s2Step275EntryFvFresh,s2Step275EntryGvFresh]=
    some (s2Step275EntryGvAfter,[s2Step275EntryFOut,s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut],(growRow 768 s2Step275EntryFFresh ++ (growRow 769 s2Step275EntryGFresh ++ (growRow 770 s2Step275EntryFvFresh ++ (growRow 771 s2Step275EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step275EntryGvAfter [] []=some (s2Step275EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step275EntryGvBefore s2Step275EntryGvAfter s2Step275EntryGvAfter
    s2Step275EntryGvRow s2Step275EntryGvOut 153 s2Step275EntryGvFresh [] [] []
    (growRow 771 s2Step275EntryGvFresh) ([]) s2Step275EntryGv_Incoming s2Step275EntryGv_checked h4 s2Step275EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step275EntryFvBefore s2Step275EntryFvAfter s2Step275EntryGvAfter
    s2Step275EntryFvRow s2Step275EntryFvOut 153 s2Step275EntryFvFresh [(s2Step275EntryGvRow,153)] [s2Step275EntryGvFresh] [s2Step275EntryGvOut]
    (growRow 770 s2Step275EntryFvFresh) ((growRow 771 s2Step275EntryGvFresh ++ [])) s2Step275EntryFv_Incoming s2Step275EntryFv_checked h3 s2Step275EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step275EntryGBefore s2Step275EntryGAfter s2Step275EntryGvAfter
    s2Step275EntryGRow s2Step275EntryGOut 133 s2Step275EntryGFresh [(s2Step275EntryFvRow,153),(s2Step275EntryGvRow,153)] [s2Step275EntryFvFresh,s2Step275EntryGvFresh] [s2Step275EntryFvOut,s2Step275EntryGvOut]
    (growRow 769 s2Step275EntryGFresh) ((growRow 770 s2Step275EntryFvFresh ++ (growRow 771 s2Step275EntryGvFresh ++ []))) s2Step275EntryG_Incoming s2Step275EntryG_checked h2 s2Step275EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step275EntryFBefore s2Step275EntryFAfter s2Step275EntryGvAfter
    s2Step275EntryFRow s2Step275EntryFOut 133 s2Step275EntryFFresh [(s2Step275EntryGRow,133),(s2Step275EntryFvRow,153),(s2Step275EntryGvRow,153)] [s2Step275EntryGFresh,s2Step275EntryFvFresh,s2Step275EntryGvFresh] [s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut]
    (growRow 768 s2Step275EntryFFresh) ((growRow 769 s2Step275EntryGFresh ++ (growRow 770 s2Step275EntryFvFresh ++ (growRow 771 s2Step275EntryGvFresh ++ [])))) s2Step275EntryF_Incoming s2Step275EntryF_checked h1 s2Step275EntryF_Outgoing
  exact h0

private theorem s2Step275EntryBank_checked : compileHmrBankResizeLog .entry s2Step275EntryFBefore ⟨s2Step275EntryFRow,s2Step275EntryGRow,s2Step275EntryFvRow,s2Step275EntryGvRow⟩ ⟨133,133,153,153⟩ [s2Step275EntryFFresh,s2Step275EntryGFresh,s2Step275EntryFvFresh,s2Step275EntryGvFresh]=
    some (s2Step275EntryGvAfter,⟨s2Step275EntryFOut,s2Step275EntryGOut,s2Step275EntryFvOut,s2Step275EntryGvOut⟩,(growRow 768 s2Step275EntryFFresh ++ (growRow 769 s2Step275EntryGFresh ++ (growRow 770 s2Step275EntryFvFresh ++ (growRow 771 s2Step275EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step275EntryBank_rows]
  rfl

private def s2Step275ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275ExitFBefore : Arena := s2Step275ExitGAfter

private def s2Step275ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 841],768⟩

private def s2Step275ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 791],770⟩

private def s2Step275ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 789],769⟩

private def s2Step275ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 788],771⟩

private theorem s2Step275ExitBank_incomingDistinct : ([s2Step275ExitGRow,s2Step275ExitFRow,s2Step275ExitFvRow,s2Step275ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275ExitF_Incoming : rowsOwned s2Step275ExitFBefore [s2Step275ExitFRow,s2Step275ExitFvRow,s2Step275ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275ExitGRow,s2Step275ExitFRow,s2Step275ExitFvRow,s2Step275ExitGvRow] 1 s2Step275ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275ExitFBefore (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275ExitBank_outgoingOwned : rowsOwned s2Step275ExitGvAfter [s2Step275ExitGOut,s2Step275ExitFOut,s2Step275ExitFvOut,s2Step275ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step275ExitGvAfter (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275ExitF_Outgoing : rowsOwned s2Step275ExitGvAfter [s2Step275ExitFOut,s2Step275ExitFvOut,s2Step275ExitGvOut] :=
  hmrRows_owned_drop s2Step275ExitGvAfter [s2Step275ExitGOut,s2Step275ExitFOut,s2Step275ExitFvOut,s2Step275ExitGvOut] 1 s2Step275ExitBank_outgoingOwned

private theorem s2Step275ExitF_distinct : (s2Step275ExitFRow.sign::s2Step275ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275ExitF_owned : (s2Step275ExitFRow.sign::s2Step275ExitFRow.payload).toFinset⊆s2Step275ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275ExitFBefore (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275ExitF_retired : s2Step275ExitFBefore.retireSet s2Step275ExitFExtra.toFinset=s2Step275ExitFAfter := by
  unfold Arena.retireSet s2Step275ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step275ExitFBefore,s2Step275ExitGAfter,s2Step275ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step275ExitF_checked : planRowResizeLog s2Step275ExitFBefore s2Step275ExitFRow 133 []=
    some (s2Step275ExitFAfter,s2Step275ExitFOut,shrinkRow 768 s2Step275ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step275ExitFBefore s2Step275ExitFRow 133 s2Step275ExitF_distinct s2Step275ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step275ExitFRow.payload.take 133) s2Step275ExitFRow.sign=s2Step275ExitFOut := by decide +kernel
  have hi : s2Step275ExitFRow.payload.drop 133=s2Step275ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step275ExitF_retired] at result
  exact result

private def s2Step275ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275ExitFvBefore : Arena := s2Step275ExitFAfter

private theorem s2Step275ExitFv_Incoming : rowsOwned s2Step275ExitFvBefore [s2Step275ExitFvRow,s2Step275ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275ExitGRow,s2Step275ExitFRow,s2Step275ExitFvRow,s2Step275ExitGvRow] 2 s2Step275ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275ExitFvBefore (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275ExitFv_Outgoing : rowsOwned s2Step275ExitGvAfter [s2Step275ExitFvOut,s2Step275ExitGvOut] :=
  hmrRows_owned_drop s2Step275ExitGvAfter [s2Step275ExitGOut,s2Step275ExitFOut,s2Step275ExitFvOut,s2Step275ExitGvOut] 2 s2Step275ExitBank_outgoingOwned

private theorem s2Step275ExitFv_distinct : (s2Step275ExitFvRow.sign::s2Step275ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275ExitFv_owned : (s2Step275ExitFvRow.sign::s2Step275ExitFvRow.payload).toFinset⊆s2Step275ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275ExitFvBefore (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275ExitFv_retired : s2Step275ExitFvBefore.retireSet s2Step275ExitFvExtra.toFinset=s2Step275ExitFvAfter := by
  unfold Arena.retireSet s2Step275ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step275ExitFvBefore,s2Step275ExitFAfter,s2Step275ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step275ExitFv_checked : planRowResizeLog s2Step275ExitFvBefore s2Step275ExitFvRow 153 []=
    some (s2Step275ExitFvAfter,s2Step275ExitFvOut,shrinkRow 770 s2Step275ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step275ExitFvBefore s2Step275ExitFvRow 153 s2Step275ExitFv_distinct s2Step275ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step275ExitFvRow.payload.take 153) s2Step275ExitFvRow.sign=s2Step275ExitFvOut := by decide +kernel
  have hi : s2Step275ExitFvRow.payload.drop 153=s2Step275ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step275ExitFv_retired] at result
  exact result

private def s2Step275ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step275ExitG_Incoming : rowsOwned s2Step275ExitGBefore [s2Step275ExitGRow,s2Step275ExitFRow,s2Step275ExitFvRow,s2Step275ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275ExitGRow,s2Step275ExitFRow,s2Step275ExitFvRow,s2Step275ExitGvRow] 0 s2Step275ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275ExitG_Outgoing : rowsOwned s2Step275ExitGvAfter [s2Step275ExitGOut,s2Step275ExitFOut,s2Step275ExitFvOut,s2Step275ExitGvOut] :=
  hmrRows_owned_drop s2Step275ExitGvAfter [s2Step275ExitGOut,s2Step275ExitFOut,s2Step275ExitFvOut,s2Step275ExitGvOut] 0 s2Step275ExitBank_outgoingOwned

private theorem s2Step275ExitG_distinct : (s2Step275ExitGRow.sign::s2Step275ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275ExitG_owned : (s2Step275ExitGRow.sign::s2Step275ExitGRow.payload).toFinset⊆s2Step275ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275ExitG_retired : s2Step275ExitGBefore.retireSet s2Step275ExitGExtra.toFinset=s2Step275ExitGAfter := by
  unfold Arena.retireSet s2Step275ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step275ExitGBefore,s2Step275ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step275ExitG_checked : planRowResizeLog s2Step275ExitGBefore s2Step275ExitGRow 132 []=
    some (s2Step275ExitGAfter,s2Step275ExitGOut,shrinkRow 769 s2Step275ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step275ExitGBefore s2Step275ExitGRow 132 s2Step275ExitG_distinct s2Step275ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step275ExitGRow.payload.take 132) s2Step275ExitGRow.sign=s2Step275ExitGOut := by decide +kernel
  have hi : s2Step275ExitGRow.payload.drop 132=s2Step275ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step275ExitG_retired] at result
  exact result

private def s2Step275ExitGvBefore : Arena := s2Step275ExitFvAfter

private theorem s2Step275ExitGv_Incoming : rowsOwned s2Step275ExitGvBefore [s2Step275ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275ExitGRow,s2Step275ExitFRow,s2Step275ExitFvRow,s2Step275ExitGvRow] 3 s2Step275ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275ExitGvBefore (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275ExitGv_Outgoing : rowsOwned s2Step275ExitGvAfter [s2Step275ExitGvOut] :=
  hmrRows_owned_drop s2Step275ExitGvAfter [s2Step275ExitGOut,s2Step275ExitFOut,s2Step275ExitFvOut,s2Step275ExitGvOut] 3 s2Step275ExitBank_outgoingOwned

private theorem s2Step275ExitGv_distinct : (s2Step275ExitGvRow.sign::s2Step275ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275ExitGv_owned : (s2Step275ExitGvRow.sign::s2Step275ExitGvRow.payload).toFinset⊆s2Step275ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275ExitGvBefore (fun q => (0≤q ∧ q<132) ∨ (133≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275ExitGv_retired : s2Step275ExitGvBefore.retireSet s2Step275ExitGvExtra.toFinset=s2Step275ExitGvAfter := by
  unfold Arena.retireSet s2Step275ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step275ExitGvBefore,s2Step275ExitFvAfter,s2Step275ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step275ExitGv_checked : planRowResizeLog s2Step275ExitGvBefore s2Step275ExitGvRow 153 []=
    some (s2Step275ExitGvAfter,s2Step275ExitGvOut,shrinkRow 771 s2Step275ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step275ExitGvBefore s2Step275ExitGvRow 153 s2Step275ExitGv_distinct s2Step275ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step275ExitGvRow.payload.take 153) s2Step275ExitGvRow.sign=s2Step275ExitGvOut := by decide +kernel
  have hi : s2Step275ExitGvRow.payload.drop 153=s2Step275ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step275ExitGv_retired] at result
  exact result

private theorem s2Step275ExitBank_rows : planWindowRowsLog s2Step275ExitGBefore [(s2Step275ExitGRow,132),(s2Step275ExitFRow,133),(s2Step275ExitFvRow,153),(s2Step275ExitGvRow,153)] [[],[],[],[]]=
    some (s2Step275ExitGvAfter,[s2Step275ExitGOut,s2Step275ExitFOut,s2Step275ExitFvOut,s2Step275ExitGvOut],(shrinkRow 769 s2Step275ExitGExtra ++ (shrinkRow 768 s2Step275ExitFExtra ++ (shrinkRow 770 s2Step275ExitFvExtra ++ (shrinkRow 771 s2Step275ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step275ExitGvAfter [] []=some (s2Step275ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step275ExitGvBefore s2Step275ExitGvAfter s2Step275ExitGvAfter
    s2Step275ExitGvRow s2Step275ExitGvOut 153 [] [] [] []
    (shrinkRow 771 s2Step275ExitGvExtra) ([]) s2Step275ExitGv_Incoming s2Step275ExitGv_checked h4 s2Step275ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step275ExitFvBefore s2Step275ExitFvAfter s2Step275ExitGvAfter
    s2Step275ExitFvRow s2Step275ExitFvOut 153 [] [(s2Step275ExitGvRow,153)] [[]] [s2Step275ExitGvOut]
    (shrinkRow 770 s2Step275ExitFvExtra) ((shrinkRow 771 s2Step275ExitGvExtra ++ [])) s2Step275ExitFv_Incoming s2Step275ExitFv_checked h3 s2Step275ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step275ExitFBefore s2Step275ExitFAfter s2Step275ExitGvAfter
    s2Step275ExitFRow s2Step275ExitFOut 133 [] [(s2Step275ExitFvRow,153),(s2Step275ExitGvRow,153)] [[],[]] [s2Step275ExitFvOut,s2Step275ExitGvOut]
    (shrinkRow 768 s2Step275ExitFExtra) ((shrinkRow 770 s2Step275ExitFvExtra ++ (shrinkRow 771 s2Step275ExitGvExtra ++ []))) s2Step275ExitF_Incoming s2Step275ExitF_checked h2 s2Step275ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step275ExitGBefore s2Step275ExitGAfter s2Step275ExitGvAfter
    s2Step275ExitGRow s2Step275ExitGOut 132 [] [(s2Step275ExitFRow,133),(s2Step275ExitFvRow,153),(s2Step275ExitGvRow,153)] [[],[],[]] [s2Step275ExitFOut,s2Step275ExitFvOut,s2Step275ExitGvOut]
    (shrinkRow 769 s2Step275ExitGExtra) ((shrinkRow 768 s2Step275ExitFExtra ++ (shrinkRow 770 s2Step275ExitFvExtra ++ (shrinkRow 771 s2Step275ExitGvExtra ++ [])))) s2Step275ExitG_Incoming s2Step275ExitG_checked h1 s2Step275ExitG_Outgoing
  exact h0

private theorem s2Step275ExitBank_checked : compileHmrBankResizeLog .exit s2Step275ExitGBefore ⟨s2Step275ExitFRow,s2Step275ExitGRow,s2Step275ExitFvRow,s2Step275ExitGvRow⟩ ⟨133,132,153,153⟩ [[],[],[],[]]=
    some (s2Step275ExitGvAfter,⟨s2Step275ExitFOut,s2Step275ExitGOut,s2Step275ExitFvOut,s2Step275ExitGvOut⟩,(shrinkRow 769 s2Step275ExitGExtra ++ (shrinkRow 768 s2Step275ExitFExtra ++ (shrinkRow 770 s2Step275ExitFvExtra ++ (shrinkRow 771 s2Step275ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step275ExitBank_rows]
  rfl

private theorem s2Step275Add0_apart : Disjoint s2Step275Add0Arena.live s2Step275Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step275Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275Add0_card : s2Step275Add0Arena.live.card=899 := by
  decide +kernel

private theorem s2Step275Add0_borrowed : s2Step275Add0Arena.checkBorrow (hmrHybridCount s2Step275Add0Arena s2Step275Add0B.length) s2Step275Add0Work=some s2Step275Add0During := by
  have len : s2Step275Add0Work.length=hmrHybridCount s2Step275Add0Arena s2Step275Add0B.length := by
    rw [hmrHybridCount,s2Step275Add0_card]
    decide +kernel
  have nd : s2Step275Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step275Add0Arena s2Step275Add0During s2Step275Add0Work.toFinset s2Step275Add0_bounded s2Step275Add0_apart rfl

private theorem s2Step275Add0_distinct : (781::839::891::(s2Step275Add0A++s2Step275Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275Add0_owned : (781::839::891::(s2Step275Add0A++s2Step275Add0B)).toFinset⊆s2Step275Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step275Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275Add0_checked : compileHmrHybridCinLog s2Step275Add0Arena 839 781 891 s2Step275Add0A s2Step275Add0B s2Step275Add0Work=some s2Step275Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step275Add0Arena s2Step275Add0During 839 781 891 s2Step275Add0A s2Step275Add0B s2Step275Add0Work
    (by decide +kernel) (by decide +kernel) s2Step275Add0_distinct
    (fun q hq => s2Step275Add0_owned (List.mem_toFinset.mpr hq)) s2Step275Add0_borrowed

private theorem s2Step275Add1_apart : Disjoint s2Step275Add1Arena.live s2Step275Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step275Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275Add1_card : s2Step275Add1Arena.live.card=899 := by
  decide +kernel

private theorem s2Step275Add1_borrowed : s2Step275Add1Arena.checkBorrow (hmrHybridCount s2Step275Add1Arena s2Step275Add1B.length) s2Step275Add1Work=some s2Step275Add1During := by
  have len : s2Step275Add1Work.length=hmrHybridCount s2Step275Add1Arena s2Step275Add1B.length := by
    rw [hmrHybridCount,s2Step275Add1_card]
    decide +kernel
  have nd : s2Step275Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step275Add1Arena s2Step275Add1During s2Step275Add1Work.toFinset s2Step275Add1_bounded s2Step275Add1_apart rfl

private theorem s2Step275Add1_distinct : (781::839::891::(s2Step275Add1A++s2Step275Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275Add1_owned : (781::839::891::(s2Step275Add1A++s2Step275Add1B)).toFinset⊆s2Step275Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step275Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275Add1_checked : compileHmrHybridCinLog s2Step275Add1Arena 839 781 891 s2Step275Add1A s2Step275Add1B s2Step275Add1Work=some s2Step275Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step275Add1Arena s2Step275Add1During 839 781 891 s2Step275Add1A s2Step275Add1B s2Step275Add1Work
    (by decide +kernel) (by decide +kernel) s2Step275Add1_distinct
    (fun q hq => s2Step275Add1_owned (List.mem_toFinset.mpr hq)) s2Step275Add1_borrowed

private theorem s2Step275F4_apart : Disjoint (s2Step275Add0A++s2Step275Add0B).toFinset (s2Step275Add1A++s2Step275Add1B).toFinset := by
  have nd : ((s2Step275Add0A++s2Step275Add0B)++(s2Step275Add1A++s2Step275Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step275F4_carry : s2Step275F4FlagArena.checkBorrow 1 [891]=some s2Step275Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step275F4FlagArena,s2Step275HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step275F4FlagArena,s2Step275HeadFvAfter,s2Step275Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step275F4_distinct : (844::839::781::891::((s2Step275Add0A++s2Step275Add1A)++(s2Step275Add0B++s2Step275Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275F4_flag : s2Step275HeadFvAfter.checkBorrow 1 [781]=some s2Step275F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step275HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step275F4_owned : (844::839::((s2Step275Add0A++s2Step275Add1A)++(s2Step275Add0B++s2Step275Add1B))).toFinset⊆s2Step275HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step275HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275F4_checked : compileHmrHybridF4Log s2Step275HeadFvAfter 844 839 s2Step275Add0A s2Step275Add0B s2Step275Add1A s2Step275Add1B [781] [891] s2Step275Add0Work s2Step275Add1Work=some s2Step275F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step275HeadFvAfter s2Step275F4FlagArena s2Step275Add0Arena s2Step275Add0During s2Step275Add1During 844 839
    s2Step275Add0A s2Step275Add0B s2Step275Add1A s2Step275Add1B [781] [891] s2Step275Add0Work s2Step275Add1Work
    (fun q hq => s2Step275F4_owned (List.mem_toFinset.mpr hq)) s2Step275F4_flag s2Step275F4_carry
    s2Step275F4_distinct s2Step275F4_apart s2Step275Add0_checked s2Step275Add1_checked

private theorem s2Step275Front_branch : s2Step275FrontSigmaArena.checkBorrow 1 [839]=some s2Step275HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step275FrontSigmaArena,s2Step275EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step275FrontSigmaArena,s2Step275EntryGvAfter,s2Step275HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step275Front_entry : HmrFrontEntryValid s2Step275EntryFBefore s2Step275FrontBank 133 153 ⟨133,132,153,153⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step275FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step275EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step275EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step275FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step275Front_sigma : s2Step275EntryGvAfter.checkBorrow 1 [844]=some s2Step275FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step275EntryGvAfter,arenaWires]
  · rfl

private def s2Step275HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275HeadFBefore : Arena := s2Step275HeadGAfter

private def s2Step275HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩

private def s2Step275HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩

private def s2Step275HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132],769⟩

private def s2Step275HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩

private theorem s2Step275HeadBank_incomingDistinct : ([s2Step275HeadGRow,s2Step275HeadFRow,s2Step275HeadGvRow,s2Step275HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275HeadF_Incoming : rowsOwned s2Step275HeadFBefore [s2Step275HeadFRow,s2Step275HeadGvRow,s2Step275HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275HeadGRow,s2Step275HeadFRow,s2Step275HeadGvRow,s2Step275HeadFvRow] 1 s2Step275HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275HeadBank_outgoingOwned : rowsOwned s2Step275HeadFvAfter [s2Step275HeadGOut,s2Step275HeadFOut,s2Step275HeadGvOut,s2Step275HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step275HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275HeadF_Outgoing : rowsOwned s2Step275HeadFvAfter [s2Step275HeadFOut,s2Step275HeadGvOut,s2Step275HeadFvOut] :=
  hmrRows_owned_drop s2Step275HeadFvAfter [s2Step275HeadGOut,s2Step275HeadFOut,s2Step275HeadGvOut,s2Step275HeadFvOut] 1 s2Step275HeadBank_outgoingOwned

private theorem s2Step275HeadF_distinct : (s2Step275HeadFRow.sign::s2Step275HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275HeadF_owned : (s2Step275HeadFRow.sign::s2Step275HeadFRow.payload).toFinset⊆s2Step275HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275HeadF_reserved : s2Step275HeadFBefore.reserve s2Step275HeadFFresh.toFinset=some s2Step275HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step275HeadFFresh,arenaWires]
  · norm_num [s2Step275HeadFBefore,s2Step275HeadGAfter,s2Step275HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step275HeadFAfter,s2Step275HeadFBefore,s2Step275HeadGAfter,s2Step275HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step275HeadF_checked : planRowResizeLog s2Step275HeadFBefore s2Step275HeadFRow 134 s2Step275HeadFFresh=
    some (s2Step275HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 841],768⟩,growRow 768 s2Step275HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step275HeadFBefore s2Step275HeadFAfter s2Step275HeadFRow 134 s2Step275HeadFFresh
    s2Step275HeadF_distinct s2Step275HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step275HeadF_reserved
  have rowEq : WindowRow.mk (s2Step275HeadFRow.payload++s2Step275HeadFFresh) s2Step275HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 841],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step275HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step275HeadFvBefore : Arena := s2Step275HeadGvAfter

private theorem s2Step275HeadFv_Incoming : rowsOwned s2Step275HeadFvBefore [s2Step275HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275HeadGRow,s2Step275HeadFRow,s2Step275HeadGvRow,s2Step275HeadFvRow] 3 s2Step275HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275HeadFv_Outgoing : rowsOwned s2Step275HeadFvAfter [s2Step275HeadFvOut] :=
  hmrRows_owned_drop s2Step275HeadFvAfter [s2Step275HeadGOut,s2Step275HeadFOut,s2Step275HeadGvOut,s2Step275HeadFvOut] 3 s2Step275HeadBank_outgoingOwned

private theorem s2Step275HeadFv_distinct : (s2Step275HeadFvRow.sign::s2Step275HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275HeadFv_owned : (s2Step275HeadFvRow.sign::s2Step275HeadFvRow.payload).toFinset⊆s2Step275HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275HeadFv_reserved : s2Step275HeadFvBefore.reserve s2Step275HeadFvFresh.toFinset=some s2Step275HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step275HeadFvFresh,arenaWires]
  · norm_num [s2Step275HeadFvBefore,s2Step275HeadGvAfter,s2Step275HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step275HeadFvAfter,s2Step275HeadFvBefore,s2Step275HeadGvAfter,s2Step275HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step275HeadFv_checked : planRowResizeLog s2Step275HeadFvBefore s2Step275HeadFvRow 154 s2Step275HeadFvFresh=
    some (s2Step275HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 791],770⟩,growRow 770 s2Step275HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step275HeadFvBefore s2Step275HeadFvAfter s2Step275HeadFvRow 154 s2Step275HeadFvFresh
    s2Step275HeadFv_distinct s2Step275HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step275HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step275HeadFvRow.payload++s2Step275HeadFvFresh) s2Step275HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step275HeadG_Incoming : rowsOwned s2Step275HeadGBefore [s2Step275HeadGRow,s2Step275HeadFRow,s2Step275HeadGvRow,s2Step275HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275HeadGRow,s2Step275HeadFRow,s2Step275HeadGvRow,s2Step275HeadFvRow] 0 s2Step275HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275HeadG_Outgoing : rowsOwned s2Step275HeadFvAfter [s2Step275HeadGOut,s2Step275HeadFOut,s2Step275HeadGvOut,s2Step275HeadFvOut] :=
  hmrRows_owned_drop s2Step275HeadFvAfter [s2Step275HeadGOut,s2Step275HeadFOut,s2Step275HeadGvOut,s2Step275HeadFvOut] 0 s2Step275HeadBank_outgoingOwned

private theorem s2Step275HeadG_distinct : (s2Step275HeadGRow.sign::s2Step275HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275HeadG_owned : (s2Step275HeadGRow.sign::s2Step275HeadGRow.payload).toFinset⊆s2Step275HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275HeadG_reserved : s2Step275HeadGBefore.reserve s2Step275HeadGFresh.toFinset=some s2Step275HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step275HeadGFresh,arenaWires]
  · norm_num [s2Step275HeadGBefore,s2Step275HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step275HeadGAfter,s2Step275HeadGBefore,s2Step275HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step275HeadG_checked : planRowResizeLog s2Step275HeadGBefore s2Step275HeadGRow 134 s2Step275HeadGFresh=
    some (s2Step275HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 789],769⟩,growRow 769 s2Step275HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step275HeadGBefore s2Step275HeadGAfter s2Step275HeadGRow 134 s2Step275HeadGFresh
    s2Step275HeadG_distinct s2Step275HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step275HeadG_reserved
  have rowEq : WindowRow.mk (s2Step275HeadGRow.payload++s2Step275HeadGFresh) s2Step275HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 789],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step275HeadGvBefore : Arena := s2Step275HeadFAfter

private theorem s2Step275HeadGv_Incoming : rowsOwned s2Step275HeadGvBefore [s2Step275HeadGvRow,s2Step275HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step275HeadGRow,s2Step275HeadFRow,s2Step275HeadGvRow,s2Step275HeadFvRow] 2 s2Step275HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step275HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step275HeadGv_Outgoing : rowsOwned s2Step275HeadFvAfter [s2Step275HeadGvOut,s2Step275HeadFvOut] :=
  hmrRows_owned_drop s2Step275HeadFvAfter [s2Step275HeadGOut,s2Step275HeadFOut,s2Step275HeadGvOut,s2Step275HeadFvOut] 2 s2Step275HeadBank_outgoingOwned

private theorem s2Step275HeadGv_distinct : (s2Step275HeadGvRow.sign::s2Step275HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step275HeadGv_owned : (s2Step275HeadGvRow.sign::s2Step275HeadGvRow.payload).toFinset⊆s2Step275HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step275HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step275HeadGv_reserved : s2Step275HeadGvBefore.reserve s2Step275HeadGvFresh.toFinset=some s2Step275HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step275HeadGvFresh,arenaWires]
  · norm_num [s2Step275HeadGvBefore,s2Step275HeadFAfter,s2Step275HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step275HeadGvAfter,s2Step275HeadGvBefore,s2Step275HeadFAfter,s2Step275HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step275HeadGv_checked : planRowResizeLog s2Step275HeadGvBefore s2Step275HeadGvRow 154 s2Step275HeadGvFresh=
    some (s2Step275HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 788],771⟩,growRow 771 s2Step275HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step275HeadGvBefore s2Step275HeadGvAfter s2Step275HeadGvRow 154 s2Step275HeadGvFresh
    s2Step275HeadGv_distinct s2Step275HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step275HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step275HeadGvRow.payload++s2Step275HeadGvFresh) s2Step275HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step275HeadBank_rows : planWindowRowsLog s2Step275HeadGBefore [(s2Step275HeadGRow,134),(s2Step275HeadFRow,134),(s2Step275HeadGvRow,154),(s2Step275HeadFvRow,154)] [s2Step275HeadGFresh,s2Step275HeadFFresh,s2Step275HeadGvFresh,s2Step275HeadFvFresh]=
    some (s2Step275HeadFvAfter,[s2Step275HeadGOut,s2Step275HeadFOut,s2Step275HeadGvOut,s2Step275HeadFvOut],(growRow 769 s2Step275HeadGFresh ++ (growRow 768 s2Step275HeadFFresh ++ (growRow 771 s2Step275HeadGvFresh ++ (growRow 770 s2Step275HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step275HeadFvAfter [] []=some (s2Step275HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step275HeadFvBefore s2Step275HeadFvAfter s2Step275HeadFvAfter
    s2Step275HeadFvRow s2Step275HeadFvOut 154 s2Step275HeadFvFresh [] [] []
    (growRow 770 s2Step275HeadFvFresh) ([]) s2Step275HeadFv_Incoming s2Step275HeadFv_checked h4 s2Step275HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step275HeadGvBefore s2Step275HeadGvAfter s2Step275HeadFvAfter
    s2Step275HeadGvRow s2Step275HeadGvOut 154 s2Step275HeadGvFresh [(s2Step275HeadFvRow,154)] [s2Step275HeadFvFresh] [s2Step275HeadFvOut]
    (growRow 771 s2Step275HeadGvFresh) ((growRow 770 s2Step275HeadFvFresh ++ [])) s2Step275HeadGv_Incoming s2Step275HeadGv_checked h3 s2Step275HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step275HeadFBefore s2Step275HeadFAfter s2Step275HeadFvAfter
    s2Step275HeadFRow s2Step275HeadFOut 134 s2Step275HeadFFresh [(s2Step275HeadGvRow,154),(s2Step275HeadFvRow,154)] [s2Step275HeadGvFresh,s2Step275HeadFvFresh] [s2Step275HeadGvOut,s2Step275HeadFvOut]
    (growRow 768 s2Step275HeadFFresh) ((growRow 771 s2Step275HeadGvFresh ++ (growRow 770 s2Step275HeadFvFresh ++ []))) s2Step275HeadF_Incoming s2Step275HeadF_checked h2 s2Step275HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step275HeadGBefore s2Step275HeadGAfter s2Step275HeadFvAfter
    s2Step275HeadGRow s2Step275HeadGOut 134 s2Step275HeadGFresh [(s2Step275HeadFRow,134),(s2Step275HeadGvRow,154),(s2Step275HeadFvRow,154)] [s2Step275HeadFFresh,s2Step275HeadGvFresh,s2Step275HeadFvFresh] [s2Step275HeadFOut,s2Step275HeadGvOut,s2Step275HeadFvOut]
    (growRow 769 s2Step275HeadGFresh) ((growRow 768 s2Step275HeadFFresh ++ (growRow 771 s2Step275HeadGvFresh ++ (growRow 770 s2Step275HeadFvFresh ++ [])))) s2Step275HeadG_Incoming s2Step275HeadG_checked h1 s2Step275HeadG_Outgoing
  exact h0

private theorem s2Step275HeadBank_checked : compileHmrBankResizeLog .headroom s2Step275HeadGBefore ⟨s2Step275HeadFRow,s2Step275HeadGRow,s2Step275HeadFvRow,s2Step275HeadGvRow⟩ ⟨134,134,154,154⟩ [s2Step275HeadGFresh,s2Step275HeadFFresh,s2Step275HeadGvFresh,s2Step275HeadFvFresh]=
    some (s2Step275HeadFvAfter,⟨s2Step275HeadFOut,s2Step275HeadGOut,s2Step275HeadFvOut,s2Step275HeadGvOut⟩,(growRow 769 s2Step275HeadGFresh ++ (growRow 768 s2Step275HeadFFresh ++ (growRow 771 s2Step275HeadGvFresh ++ (growRow 770 s2Step275HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step275HeadBank_rows]
  rfl

private theorem s2Step275Front_checked : compileHmrSourceFrontLog s2Step275EntryFBefore s2Step275FrontBank 133 153 ⟨133,132,153,153⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step275FrontLog=some s2Step275FrontPlan := by
  have pairEq : s2Step275FrontPair=⟨s2Step275HeadFRow,s2Step275HeadGRow,s2Step275HeadFvRow,s2Step275HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step275FrontHead=⟨s2Step275ExitFRow,s2Step275ExitGRow,s2Step275ExitFvRow,s2Step275ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step275Add0A=s2Step275FrontHead.f.wires := by decide +kernel
  have gEq : s2Step275Add0B=s2Step275FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step275Add1A=s2Step275FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step275Add1B=s2Step275FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step275EntryFBefore s2Step275FrontBank 133 153 ⟨133,132,153,153⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step275FrontLog s2Step275FrontPlan
  · exact s2Step275Front_entry
  · exact s2Step275EntryBank_checked
  · exact s2Step275Front_sigma
  · rfl
  · exact s2Step275Front_branch
  · rfl
  · simpa only [s2Step275FrontPlan,pairEq] using s2Step275HeadBank_checked
  · simpa only [s2Step275FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step275F4_checked
  · exact s2Step275Counter_checked
  · rfl
  · simpa only [s2Step275FrontPlan,headEq] using s2Step275ExitBank_checked

private theorem s2Step275Complete_explicit_checked : compileHmrEarlyStepLog s2Step275EntryFBefore s2Step275FrontBank 133 153 ⟨133,132,153,153⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step275CompleteLog=some s2Step275CompletePlan := by
  let Q := s2Step275EarlyControlPlan
  have hq := s2Step275EarlyControl_plan_checked
  have fv1 : s2Step275CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step275CompleteOut.fv.payload[2]?.getD s2Step275CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step275CompleteOut.fv.payload[3]?.getD s2Step275CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step275CompleteOut.fv.payload[4]?.getD s2Step275CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step275EntryFBefore s2Step275EarlyControlArena s2Step275FrontBank 133 153 ⟨133,132,153,153⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step275CompleteLog s2Step275FrontPlan Q
    s2Step275Front_checked s2Step275Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step275Complete_owned s2Step275Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step275EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 s2Step275CompleteOut.fv.second (s2Step275CompleteOut.fv.payload[2]?.getD s2Step275CompleteOut.fv.sign) (s2Step275CompleteOut.fv.payload[3]?.getD s2Step275CompleteOut.fv.sign) (s2Step275CompleteOut.fv.payload[4]?.getD s2Step275CompleteOut.fv.sign) 839 53 s2Step275EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep275Arena : Arena := s2Step275EntryFBefore
def s2PrivateStep275Bank : WindowBank := s2Step275FrontBank
def s2PrivateStep275Spec : HmrSourceWalkStepLog := ⟨133,153,⟨133,132,153,153⟩,53,.early s2Step275CompleteLog⟩
def s2PrivateStep275Plan : HmrSourceStepPlan := .early s2Step275CompletePlan
theorem s2PrivateStep275_source : s2PrivateStep275Spec=s2ObservedLogs272[3] := rfl
theorem s2PrivateStep275_checked : compileHmrSourceStepLog s2PrivateStep275Arena s2PrivateStep275Bank
    s2PrivateStep275Spec.fgWidth s2PrivateStep275Spec.vWidth s2PrivateStep275Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]
    6 498 275 s2PrivateStep275Spec.need none s2PrivateStep275Spec.log=some s2PrivateStep275Plan := by
  change compileHmrSourceStepLog s2Step275EntryFBefore s2Step275FrontBank 133 153 ⟨133,132,153,153⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 6 498 275 53 none (.early s2Step275CompleteLog)=some (.early s2Step275CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 275<498)]
  rw [s2Step275Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
