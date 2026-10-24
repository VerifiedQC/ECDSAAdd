import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep272
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

private def s2Step274CompleteMoves : List (Wire × Wire) := [(789,133),(839,645)]

private def s2Step274EarlyControlLog : HmrEarlyControlLog := ⟨[839, 789, 841, 788, 791],[781],[891],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step274FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[791], [788], [841], [816]],[[], [], [], []]⟩,[844],[851],[781],[891],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 891, 830, 800]⟩

private def s2Step274CompleteLog : HmrEarlyStepLog := ⟨s2Step274FrontLog,s2Step274CompleteMoves,s2Step274EarlyControlLog⟩

private def s2Step274ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩

private def s2Step274ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩

private def s2Step274ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132],769⟩

private def s2Step274ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩

private def s2Step274FrontOut : WindowBank := ⟨s2Step274ExitFOut,s2Step274ExitGOut,s2Step274ExitFvOut,s2Step274ExitGvOut⟩

private def s2Step274CompleteOut : WindowBank := s2Step274FrontOut.repacked s2Step274CompleteMoves

private def s2Step274EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step274EarlyControlPositiveArena,[781],s2Step274EarlyControlEqualityArena,[891],⟨⟨844,false⟩,[⟨⟨781,false⟩,891⟩]⟩⟩

private def s2Step274EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,839⟩,⟨⟨774,false⟩,789⟩,⟨⟨775,false⟩,841⟩,⟨⟨776,false⟩,788⟩,⟨⟨777,false⟩,791⟩]⟩

private def s2Step274EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step274EarlyControlZeroArena,s2Step274EarlyControlZeroPlan,s2Step274EarlyControlClassPlan,s2Step274EarlyControlFlagArena,s2Step274EarlyControlFittedArena,s2Step274EarlyControlHistoryArena,s2Step274EarlyControlSigmaArena,s2Step274EarlyControlOutputArena,s2Step274EarlyControlLog⟩

private def s2Step274CounterWork : List Wire := [781, 891, 830, 800]

private theorem s2Step274Counter_bounded : s2Step274CounterWork.toFinset⊆arenaWires := by norm_num [s2Step274CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step274HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274CounterDuring : Arena := ⟨s2Step274HeadFvAfter.live∪s2Step274CounterWork.toFinset,Finset.union_subset s2Step274HeadFvAfter.bounded s2Step274Counter_bounded⟩

private def s2Step274EntryFFresh : List Wire := []

private def s2Step274EntryFvFresh : List Wire := []

private def s2Step274EntryGFresh : List Wire := []

private def s2Step274EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274EntryGvAfter : Arena := s2Step274EntryFBefore

private def s2Step274EntryGvFresh : List Wire := []

private def s2Step274ExitFExtra : List Wire := [645, 788]

private def s2Step274ExitGExtra : List Wire := [133, 791]

private def s2Step274ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<645) ∨ (646≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274ExitGvExtra : List Wire := [841]

private def s2Step274Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step274Add0_bounded : s2Step274Add0Work.toFinset⊆arenaWires := by
  have h : s2Step274Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step274Add0During : Arena := ⟨s2Step274Add0Arena.live∪s2Step274Add0Work.toFinset,Finset.union_subset s2Step274Add0Arena.bounded s2Step274Add0_bounded⟩

private def s2Step274Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step274Add1_bounded : s2Step274Add1Work.toFinset⊆arenaWires := by
  have h : s2Step274Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step274Add1During : Arena := ⟨s2Step274Add1Arena.live∪s2Step274Add1Work.toFinset,Finset.union_subset s2Step274Add1Arena.bounded s2Step274Add1_bounded⟩

private def s2Step274F4FlagArena : Arena := ⟨s2Step274HeadFvAfter.live∪{781},Finset.union_subset s2Step274HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step274F4Plan : HmrHybridF4Plan := ⟨s2Step274F4FlagArena,[781],s2Step274Add0Arena,[891],s2Step274Add0During,s2Step274Add0Work,s2Step274Add1During,s2Step274Add1Work⟩

private def s2Step274HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 788],768⟩

private def s2Step274HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩

private def s2Step274HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 791],769⟩

private def s2Step274HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 841],771⟩

private def s2Step274FrontHead : WindowBank := ⟨s2Step274HeadFOut,s2Step274HeadGOut,s2Step274HeadFvOut,s2Step274HeadGvOut⟩

private def s2Step274EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645],768⟩

private def s2Step274EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩

private def s2Step274EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],769⟩

private def s2Step274EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩

private def s2Step274FrontPair : WindowBank := ⟨s2Step274EntryFOut,s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut⟩

private def s2Step274FrontSigmaArena : Arena := ⟨s2Step274EntryGvAfter.live∪{844},Finset.union_subset s2Step274EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step274HeadFFresh : List Wire := [788]

private def s2Step274HeadFvFresh : List Wire := [816]

private def s2Step274HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274HeadGFresh : List Wire := [791]

private def s2Step274HeadGvFresh : List Wire := [841]

private def s2Step274FrontPlan : HmrSourceFront := ⟨s2Step274EntryGvAfter,s2Step274FrontPair,(growRow 768 s2Step274EntryFFresh ++ (growRow 769 s2Step274EntryGFresh ++ (growRow 770 s2Step274EntryFvFresh ++ (growRow 771 s2Step274EntryGvFresh ++ [])))),s2Step274FrontSigmaArena,[844],s2Step274HeadGBefore,[851],
  s2Step274HeadFvAfter,s2Step274FrontHead,(growRow 769 s2Step274HeadGFresh ++ (growRow 768 s2Step274HeadFFresh ++ (growRow 771 s2Step274HeadGvFresh ++ (growRow 770 s2Step274HeadFvFresh ++ [])))),s2Step274F4Plan,s2Step274CounterDuring,s2Step274CounterWork,s2Step274ExitGvAfter,s2Step274FrontOut,(shrinkRow 769 s2Step274ExitGExtra ++ (shrinkRow 768 s2Step274ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step274ExitGvExtra ++ []))))⟩

private def s2Step274CompletePlan : HmrEarlyStepPlan := ⟨s2Step274FrontPlan,s2Step274EarlyControlArena,s2Step274EarlyControlPlan,s2Step274CompleteMoves⟩

private theorem s2Step274Complete_apart : List.Disjoint (s2Step274CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 851, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  have nd : ((s2Step274CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 851, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step274Complete_owned : (s2Step274CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step274EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step274CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,645),(646,781),(782,788),(790,791),(792,800),(801,830),(831,841),(842,891),(892,894),(895,896),(897,901),(902,903),(906,907)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step274CompleteRelocationMove0Borrowed : Arena := ⟨s2Step274ExitGvAfter.live∪{133},Finset.union_subset s2Step274ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step274CompleteRelocationMove1Borrowed : Arena := ⟨s2Step274CompleteRelocationMove0After.live∪{645},Finset.union_subset s2Step274CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step274CompleteRelocation_move0_owned : 789∈s2Step274ExitGvAfter.live := by norm_num [s2Step274ExitGvAfter,arenaWires]

private theorem s2Step274CompleteRelocation_move0_reserve : s2Step274ExitGvAfter.reserve {133}=some s2Step274CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step274ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step274CompleteRelocation_move0_retire : s2Step274CompleteRelocationMove0Borrowed.retireSet {789}=s2Step274CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step274CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step274CompleteRelocationMove0Borrowed,s2Step274ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step274CompleteRelocation_move1_owned : 839∈s2Step274CompleteRelocationMove0After.live := by norm_num [s2Step274CompleteRelocationMove0After,arenaWires]

private theorem s2Step274CompleteRelocation_move1_reserve : s2Step274CompleteRelocationMove0After.reserve {645}=some s2Step274CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step274CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step274CompleteRelocation_move1_retire : s2Step274CompleteRelocationMove1Borrowed.retireSet {839}=s2Step274EarlyControlArena := by
  unfold Arena.retireSet s2Step274EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step274CompleteRelocationMove1Borrowed,s2Step274CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step274CompleteRelocation_checked : s2Step274ExitGvAfter.checkRepack [(789,133),(839,645)]=some s2Step274EarlyControlArena := by
  have tail2 : s2Step274EarlyControlArena.checkRepack []=some s2Step274EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step274CompleteRelocationMove0After s2Step274CompleteRelocationMove1Borrowed s2Step274EarlyControlArena s2Step274EarlyControlArena 839 645 []
    s2Step274CompleteRelocation_move1_owned s2Step274CompleteRelocation_move1_reserve s2Step274CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step274ExitGvAfter s2Step274CompleteRelocationMove0Borrowed s2Step274CompleteRelocationMove0After s2Step274EarlyControlArena 789 133 [(839,645)]
    s2Step274CompleteRelocation_move0_owned s2Step274CompleteRelocation_move0_reserve s2Step274CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step274Complete_repack : s2Step274ExitGvAfter.checkRepack s2Step274CompleteMoves=some s2Step274EarlyControlArena := by
  simpa only [s2Step274CompleteMoves] using s2Step274CompleteRelocation_checked

private theorem s2Step274EarlyControl_branchOwned : ([851] : List Wire).toFinset⊆s2Step274EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_branch : compileHmrBranchRetirement s2Step274EarlyControlSigmaArena 851=some s2Step274EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step274EarlyControl_branchOwned
  · ext q
    simp [s2Step274EarlyControlOutputArena,s2Step274EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step274EarlyControl_classEqualityBorrow : s2Step274EarlyControlPositiveArena.checkBorrow (([844, 781] : List Wire).length-1) s2Step274EarlyControlLog.classWork=some s2Step274EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step274EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step274EarlyControlEqualityArena,s2Step274EarlyControlPositiveArena,s2Step274EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step274EarlyControl_classEqualityOwned : ([844, 781] : List Wire).toFinset⊆s2Step274EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_classEquality : compileHmrEqualityLog s2Step274EarlyControlPositiveArena [844, 781] 0 s2Step274EarlyControlLog.classWork=some (s2Step274EarlyControlEqualityArena,s2Step274EarlyControlLog.classWork,s2Step274EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step274EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step274EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step274EarlyControl_classOwned : ([777, 791, 844] : List Wire).toFinset⊆s2Step274EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_positiveBorrow : s2Step274EarlyControlZeroArena.checkBorrow (1) s2Step274EarlyControlLog.positiveWork=some s2Step274EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step274EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step274EarlyControlPositiveArena,s2Step274EarlyControlZeroArena,s2Step274EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step274EarlyControl_class : compileHmrSourceClassLog s2Step274EarlyControlZeroArena false 777 s2Step274EarlyControlZeroPlan.top 0 844 s2Step274EarlyControlLog.positiveWork s2Step274EarlyControlLog.classWork=some s2Step274EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step274EarlyControlClassPlan s2Step274EarlyControlZeroArena false 777 s2Step274EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step274EarlyControl_classOwned
  · exact s2Step274EarlyControl_positiveBorrow
  · exact s2Step274EarlyControl_classEquality

private theorem s2Step274EarlyControl_entryRecordOwned : ([851, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step274EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step274EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_fitBorrow : s2Step274EarlyControlFlagArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step274EarlyControlLog.recordFresh=some s2Step274EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step274EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step274EarlyControlFittedArena,s2Step274EarlyControlFlagArena,s2Step274EarlyControlLog,arenaWires]

private theorem s2Step274EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step274EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_fit : compileHmrRecordGrowLog s2Step274EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step274EarlyControlLog.recordFresh=some s2Step274EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step274EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step274EarlyControl_fitBorrow

private theorem s2Step274EarlyControl_flagsBorrow : s2Step274EarlyControlEqualityArena.checkBorrow (6) s2Step274EarlyControlLog.flagWork=some s2Step274EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step274EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step274EarlyControlFlagArena,s2Step274EarlyControlEqualityArena,s2Step274EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step274EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s2Step274EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_flags : compileHmrFlagsLog s2Step274EarlyControlClassPlan.equalityArena s2Step274EarlyControlClassPlan.equality.top 253 252 251 s2Step274EarlyControlLog.flagWork=some s2Step274EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step274EarlyControl_flagsOwned⟩
  · exact s2Step274EarlyControl_flagsBorrow

private theorem s2Step274EarlyControl_historyBorrow : s2Step274EarlyControlArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step274EarlyControlLog.recordFresh=some s2Step274EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step274EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step274EarlyControlHistoryArena,s2Step274EarlyControlArena,s2Step274EarlyControlLog,arenaWires]

private theorem s2Step274EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step274EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_history : compileHmrRecordGrowLog s2Step274EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step274EarlyControlLog.recordFresh=some s2Step274EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step274EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step274EarlyControl_historyBorrow

private theorem s2Step274EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step274EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step274EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_sigmaRelease : s2Step274EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step274EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step274EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step274EarlyControlSigmaArena,s2Step274EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step274EarlyControl_sigma : compileHmrSigmaDropLog s2Step274EarlyControlHistoryArena false 0 0 254 844 []=some s2Step274EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step274EarlyControl_sigmaOwned⟩
  · exact s2Step274EarlyControl_sigmaRelease

private theorem s2Step274EarlyControl_zeroBorrow : s2Step274EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step274EarlyControlLog.zeroWork=some s2Step274EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step274EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step274EarlyControlZeroArena,s2Step274EarlyControlArena,s2Step274EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step274EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step274EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step274EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EarlyControl_zero : compileHmrEqualityLog s2Step274EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step274EarlyControlLog.zeroWork=some (s2Step274EarlyControlZeroArena,s2Step274EarlyControlLog.zeroWork,s2Step274EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step274EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step274EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step274EarlyControl_logged : s2Step274EarlyControlPlan.Logged s2Step274EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 851 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step274EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step274EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step274EarlyControl_zero
  · exact s2Step274EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step274EarlyControl_flags
  · exact s2Step274EarlyControl_fit
  · exact s2Step274EarlyControl_history
  · exact s2Step274EarlyControl_sigma
  · exact s2Step274EarlyControl_branch

private theorem s2Step274EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step274EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 851 53 s2Step274EarlyControlLog=some s2Step274EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step274EarlyControlPlan s2Step274EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 851 53 s2Step274EarlyControl_logged

private def s2Step274EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645],768⟩

private def s2Step274EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩

private def s2Step274EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],769⟩

private def s2Step274EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩

private def s2Step274FrontBank : WindowBank := ⟨s2Step274EntryFRow,s2Step274EntryGRow,s2Step274EntryFvRow,s2Step274EntryGvRow⟩

private def s2Step274Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 788, 768]

private def s2Step274Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 791, 769]

private def s2Step274Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 770]

private def s2Step274Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 841, 771]

private theorem s2Step274Counter_apart : Disjoint s2Step274HeadFvAfter.live s2Step274CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step274HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274Counter_borrowed : s2Step274HeadFvAfter.checkBorrow 4 s2Step274CounterWork=some s2Step274CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step274HeadFvAfter s2Step274CounterDuring s2Step274CounterWork.toFinset s2Step274Counter_bounded s2Step274Counter_apart rfl

private theorem s2Step274Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step274HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step274HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274Counter_checked : compileHmrCounterStepLog s2Step274HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step274CounterWork=some s2Step274CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step274HeadFvAfter.live := fun q hq => s2Step274Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step274Counter_borrowed

private def s2Step274EntryFAfter : Arena := s2Step274EntryFBefore

private theorem s2Step274EntryBank_incomingDistinct : ([s2Step274EntryFRow,s2Step274EntryGRow,s2Step274EntryFvRow,s2Step274EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274EntryF_Incoming : rowsOwned s2Step274EntryFBefore [s2Step274EntryFRow,s2Step274EntryGRow,s2Step274EntryFvRow,s2Step274EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274EntryFRow,s2Step274EntryGRow,s2Step274EntryFvRow,s2Step274EntryGvRow] 0 s2Step274EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274EntryBank_outgoingOwned : rowsOwned s2Step274EntryGvAfter [s2Step274EntryFOut,s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step274EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274EntryF_Outgoing : rowsOwned s2Step274EntryGvAfter [s2Step274EntryFOut,s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut] :=
  hmrRows_owned_drop s2Step274EntryGvAfter [s2Step274EntryFOut,s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut] 0 s2Step274EntryBank_outgoingOwned

private theorem s2Step274EntryF_distinct : (s2Step274EntryFRow.sign::s2Step274EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274EntryF_owned : (s2Step274EntryFRow.sign::s2Step274EntryFRow.payload).toFinset⊆s2Step274EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EntryF_reserved : s2Step274EntryFBefore.reserve s2Step274EntryFFresh.toFinset=some s2Step274EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step274EntryFFresh,arenaWires]
  · norm_num [s2Step274EntryFBefore,s2Step274EntryFFresh,arenaWires]
  · simp only [s2Step274EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step274EntryF_checked : planRowResizeLog s2Step274EntryFBefore s2Step274EntryFRow 134 s2Step274EntryFFresh=
    some (s2Step274EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645],768⟩,growRow 768 s2Step274EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step274EntryFBefore s2Step274EntryFAfter s2Step274EntryFRow 134 s2Step274EntryFFresh
    s2Step274EntryF_distinct s2Step274EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step274EntryF_reserved
  have rowEq : WindowRow.mk (s2Step274EntryFRow.payload++s2Step274EntryFFresh) s2Step274EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step274EntryFvAfter : Arena := s2Step274EntryFBefore

private def s2Step274EntryFvBefore : Arena := s2Step274EntryFBefore

private theorem s2Step274EntryFv_Incoming : rowsOwned s2Step274EntryFvBefore [s2Step274EntryFvRow,s2Step274EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274EntryFRow,s2Step274EntryGRow,s2Step274EntryFvRow,s2Step274EntryGvRow] 2 s2Step274EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274EntryFv_Outgoing : rowsOwned s2Step274EntryGvAfter [s2Step274EntryFvOut,s2Step274EntryGvOut] :=
  hmrRows_owned_drop s2Step274EntryGvAfter [s2Step274EntryFOut,s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut] 2 s2Step274EntryBank_outgoingOwned

private theorem s2Step274EntryFv_distinct : (s2Step274EntryFvRow.sign::s2Step274EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274EntryFv_owned : (s2Step274EntryFvRow.sign::s2Step274EntryFvRow.payload).toFinset⊆s2Step274EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EntryFv_reserved : s2Step274EntryFvBefore.reserve s2Step274EntryFvFresh.toFinset=some s2Step274EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step274EntryFvFresh,arenaWires]
  · norm_num [s2Step274EntryFvBefore,s2Step274EntryFBefore,s2Step274EntryFvFresh,arenaWires]
  · simp only [s2Step274EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step274EntryFv_checked : planRowResizeLog s2Step274EntryFvBefore s2Step274EntryFvRow 152 s2Step274EntryFvFresh=
    some (s2Step274EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩,growRow 770 s2Step274EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step274EntryFvBefore s2Step274EntryFvAfter s2Step274EntryFvRow 152 s2Step274EntryFvFresh
    s2Step274EntryFv_distinct s2Step274EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step274EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step274EntryFvRow.payload++s2Step274EntryFvFresh) s2Step274EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step274EntryGAfter : Arena := s2Step274EntryFBefore

private def s2Step274EntryGBefore : Arena := s2Step274EntryFBefore

private theorem s2Step274EntryG_Incoming : rowsOwned s2Step274EntryGBefore [s2Step274EntryGRow,s2Step274EntryFvRow,s2Step274EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274EntryFRow,s2Step274EntryGRow,s2Step274EntryFvRow,s2Step274EntryGvRow] 1 s2Step274EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274EntryG_Outgoing : rowsOwned s2Step274EntryGvAfter [s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut] :=
  hmrRows_owned_drop s2Step274EntryGvAfter [s2Step274EntryFOut,s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut] 1 s2Step274EntryBank_outgoingOwned

private theorem s2Step274EntryG_distinct : (s2Step274EntryGRow.sign::s2Step274EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274EntryG_owned : (s2Step274EntryGRow.sign::s2Step274EntryGRow.payload).toFinset⊆s2Step274EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EntryG_reserved : s2Step274EntryGBefore.reserve s2Step274EntryGFresh.toFinset=some s2Step274EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step274EntryGFresh,arenaWires]
  · norm_num [s2Step274EntryGBefore,s2Step274EntryFBefore,s2Step274EntryGFresh,arenaWires]
  · simp only [s2Step274EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step274EntryG_checked : planRowResizeLog s2Step274EntryGBefore s2Step274EntryGRow 134 s2Step274EntryGFresh=
    some (s2Step274EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],769⟩,growRow 769 s2Step274EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step274EntryGBefore s2Step274EntryGAfter s2Step274EntryGRow 134 s2Step274EntryGFresh
    s2Step274EntryG_distinct s2Step274EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step274EntryG_reserved
  have rowEq : WindowRow.mk (s2Step274EntryGRow.payload++s2Step274EntryGFresh) s2Step274EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step274EntryGvBefore : Arena := s2Step274EntryFBefore

private theorem s2Step274EntryGv_Incoming : rowsOwned s2Step274EntryGvBefore [s2Step274EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274EntryFRow,s2Step274EntryGRow,s2Step274EntryFvRow,s2Step274EntryGvRow] 3 s2Step274EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274EntryGv_Outgoing : rowsOwned s2Step274EntryGvAfter [s2Step274EntryGvOut] :=
  hmrRows_owned_drop s2Step274EntryGvAfter [s2Step274EntryFOut,s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut] 3 s2Step274EntryBank_outgoingOwned

private theorem s2Step274EntryGv_distinct : (s2Step274EntryGvRow.sign::s2Step274EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274EntryGv_owned : (s2Step274EntryGvRow.sign::s2Step274EntryGvRow.payload).toFinset⊆s2Step274EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274EntryGv_reserved : s2Step274EntryGvBefore.reserve s2Step274EntryGvFresh.toFinset=some s2Step274EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step274EntryGvFresh,arenaWires]
  · norm_num [s2Step274EntryGvBefore,s2Step274EntryFBefore,s2Step274EntryGvFresh,arenaWires]
  · simp only [s2Step274EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step274EntryGv_checked : planRowResizeLog s2Step274EntryGvBefore s2Step274EntryGvRow 152 s2Step274EntryGvFresh=
    some (s2Step274EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩,growRow 771 s2Step274EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step274EntryGvBefore s2Step274EntryGvAfter s2Step274EntryGvRow 152 s2Step274EntryGvFresh
    s2Step274EntryGv_distinct s2Step274EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step274EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step274EntryGvRow.payload++s2Step274EntryGvFresh) s2Step274EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step274EntryBank_rows : planWindowRowsLog s2Step274EntryFBefore [(s2Step274EntryFRow,134),(s2Step274EntryGRow,134),(s2Step274EntryFvRow,152),(s2Step274EntryGvRow,152)] [s2Step274EntryFFresh,s2Step274EntryGFresh,s2Step274EntryFvFresh,s2Step274EntryGvFresh]=
    some (s2Step274EntryGvAfter,[s2Step274EntryFOut,s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut],(growRow 768 s2Step274EntryFFresh ++ (growRow 769 s2Step274EntryGFresh ++ (growRow 770 s2Step274EntryFvFresh ++ (growRow 771 s2Step274EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step274EntryGvAfter [] []=some (s2Step274EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step274EntryGvBefore s2Step274EntryGvAfter s2Step274EntryGvAfter
    s2Step274EntryGvRow s2Step274EntryGvOut 152 s2Step274EntryGvFresh [] [] []
    (growRow 771 s2Step274EntryGvFresh) ([]) s2Step274EntryGv_Incoming s2Step274EntryGv_checked h4 s2Step274EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step274EntryFvBefore s2Step274EntryFvAfter s2Step274EntryGvAfter
    s2Step274EntryFvRow s2Step274EntryFvOut 152 s2Step274EntryFvFresh [(s2Step274EntryGvRow,152)] [s2Step274EntryGvFresh] [s2Step274EntryGvOut]
    (growRow 770 s2Step274EntryFvFresh) ((growRow 771 s2Step274EntryGvFresh ++ [])) s2Step274EntryFv_Incoming s2Step274EntryFv_checked h3 s2Step274EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step274EntryGBefore s2Step274EntryGAfter s2Step274EntryGvAfter
    s2Step274EntryGRow s2Step274EntryGOut 134 s2Step274EntryGFresh [(s2Step274EntryFvRow,152),(s2Step274EntryGvRow,152)] [s2Step274EntryFvFresh,s2Step274EntryGvFresh] [s2Step274EntryFvOut,s2Step274EntryGvOut]
    (growRow 769 s2Step274EntryGFresh) ((growRow 770 s2Step274EntryFvFresh ++ (growRow 771 s2Step274EntryGvFresh ++ []))) s2Step274EntryG_Incoming s2Step274EntryG_checked h2 s2Step274EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step274EntryFBefore s2Step274EntryFAfter s2Step274EntryGvAfter
    s2Step274EntryFRow s2Step274EntryFOut 134 s2Step274EntryFFresh [(s2Step274EntryGRow,134),(s2Step274EntryFvRow,152),(s2Step274EntryGvRow,152)] [s2Step274EntryGFresh,s2Step274EntryFvFresh,s2Step274EntryGvFresh] [s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut]
    (growRow 768 s2Step274EntryFFresh) ((growRow 769 s2Step274EntryGFresh ++ (growRow 770 s2Step274EntryFvFresh ++ (growRow 771 s2Step274EntryGvFresh ++ [])))) s2Step274EntryF_Incoming s2Step274EntryF_checked h1 s2Step274EntryF_Outgoing
  exact h0

private theorem s2Step274EntryBank_checked : compileHmrBankResizeLog .entry s2Step274EntryFBefore ⟨s2Step274EntryFRow,s2Step274EntryGRow,s2Step274EntryFvRow,s2Step274EntryGvRow⟩ ⟨134,134,152,152⟩ [s2Step274EntryFFresh,s2Step274EntryGFresh,s2Step274EntryFvFresh,s2Step274EntryGvFresh]=
    some (s2Step274EntryGvAfter,⟨s2Step274EntryFOut,s2Step274EntryGOut,s2Step274EntryFvOut,s2Step274EntryGvOut⟩,(growRow 768 s2Step274EntryFFresh ++ (growRow 769 s2Step274EntryGFresh ++ (growRow 770 s2Step274EntryFvFresh ++ (growRow 771 s2Step274EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step274EntryBank_rows]
  rfl

private def s2Step274ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<645) ∨ (646≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274ExitFBefore : Arena := s2Step274ExitGAfter

private def s2Step274ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 788],768⟩

private def s2Step274ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩

private def s2Step274ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 791],769⟩

private def s2Step274ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 841],771⟩

private theorem s2Step274ExitBank_incomingDistinct : ([s2Step274ExitGRow,s2Step274ExitFRow,s2Step274ExitFvRow,s2Step274ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274ExitF_Incoming : rowsOwned s2Step274ExitFBefore [s2Step274ExitFRow,s2Step274ExitFvRow,s2Step274ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274ExitGRow,s2Step274ExitFRow,s2Step274ExitFvRow,s2Step274ExitGvRow] 1 s2Step274ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274ExitFBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274ExitBank_outgoingOwned : rowsOwned s2Step274ExitGvAfter [s2Step274ExitGOut,s2Step274ExitFOut,s2Step274ExitFvOut,s2Step274ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step274ExitGvAfter (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<645) ∨ (646≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274ExitF_Outgoing : rowsOwned s2Step274ExitGvAfter [s2Step274ExitFOut,s2Step274ExitFvOut,s2Step274ExitGvOut] :=
  hmrRows_owned_drop s2Step274ExitGvAfter [s2Step274ExitGOut,s2Step274ExitFOut,s2Step274ExitFvOut,s2Step274ExitGvOut] 1 s2Step274ExitBank_outgoingOwned

private theorem s2Step274ExitF_distinct : (s2Step274ExitFRow.sign::s2Step274ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274ExitF_owned : (s2Step274ExitFRow.sign::s2Step274ExitFRow.payload).toFinset⊆s2Step274ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274ExitFBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274ExitF_retired : s2Step274ExitFBefore.retireSet s2Step274ExitFExtra.toFinset=s2Step274ExitFAfter := by
  unfold Arena.retireSet s2Step274ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step274ExitFBefore,s2Step274ExitGAfter,s2Step274ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step274ExitF_checked : planRowResizeLog s2Step274ExitFBefore s2Step274ExitFRow 133 []=
    some (s2Step274ExitFAfter,s2Step274ExitFOut,shrinkRow 768 s2Step274ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step274ExitFBefore s2Step274ExitFRow 133 s2Step274ExitF_distinct s2Step274ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step274ExitFRow.payload.take 133) s2Step274ExitFRow.sign=s2Step274ExitFOut := by decide +kernel
  have hi : s2Step274ExitFRow.payload.drop 133=s2Step274ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step274ExitF_retired] at result
  exact result

private def s2Step274ExitFvAfter : Arena := s2Step274ExitFAfter

private def s2Step274ExitFvBefore : Arena := s2Step274ExitFAfter

private theorem s2Step274ExitFv_Incoming : rowsOwned s2Step274ExitFvBefore [s2Step274ExitFvRow,s2Step274ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274ExitGRow,s2Step274ExitFRow,s2Step274ExitFvRow,s2Step274ExitGvRow] 2 s2Step274ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274ExitFvBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<645) ∨ (646≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274ExitFv_Outgoing : rowsOwned s2Step274ExitGvAfter [s2Step274ExitFvOut,s2Step274ExitGvOut] :=
  hmrRows_owned_drop s2Step274ExitGvAfter [s2Step274ExitGOut,s2Step274ExitFOut,s2Step274ExitFvOut,s2Step274ExitGvOut] 2 s2Step274ExitBank_outgoingOwned

private theorem s2Step274ExitFv_distinct : (s2Step274ExitFvRow.sign::s2Step274ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274ExitFv_owned : (s2Step274ExitFvRow.sign::s2Step274ExitFvRow.payload).toFinset⊆s2Step274ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274ExitFvBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<645) ∨ (646≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274ExitFv_reserved : s2Step274ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step274ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step274ExitFv_checked : planRowResizeLog s2Step274ExitFvBefore s2Step274ExitFvRow 153 []=
    some (s2Step274ExitFvAfter,s2Step274ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step274ExitFvBefore s2Step274ExitFvAfter s2Step274ExitFvRow 153 []
    s2Step274ExitFv_distinct s2Step274ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step274ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step274ExitFvRow.payload++[]) s2Step274ExitFvRow.sign=s2Step274ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step274ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step274ExitG_Incoming : rowsOwned s2Step274ExitGBefore [s2Step274ExitGRow,s2Step274ExitFRow,s2Step274ExitFvRow,s2Step274ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274ExitGRow,s2Step274ExitFRow,s2Step274ExitFvRow,s2Step274ExitGvRow] 0 s2Step274ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274ExitG_Outgoing : rowsOwned s2Step274ExitGvAfter [s2Step274ExitGOut,s2Step274ExitFOut,s2Step274ExitFvOut,s2Step274ExitGvOut] :=
  hmrRows_owned_drop s2Step274ExitGvAfter [s2Step274ExitGOut,s2Step274ExitFOut,s2Step274ExitFvOut,s2Step274ExitGvOut] 0 s2Step274ExitBank_outgoingOwned

private theorem s2Step274ExitG_distinct : (s2Step274ExitGRow.sign::s2Step274ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274ExitG_owned : (s2Step274ExitGRow.sign::s2Step274ExitGRow.payload).toFinset⊆s2Step274ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274ExitG_retired : s2Step274ExitGBefore.retireSet s2Step274ExitGExtra.toFinset=s2Step274ExitGAfter := by
  unfold Arena.retireSet s2Step274ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step274ExitGBefore,s2Step274ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step274ExitG_checked : planRowResizeLog s2Step274ExitGBefore s2Step274ExitGRow 133 []=
    some (s2Step274ExitGAfter,s2Step274ExitGOut,shrinkRow 769 s2Step274ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step274ExitGBefore s2Step274ExitGRow 133 s2Step274ExitG_distinct s2Step274ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step274ExitGRow.payload.take 133) s2Step274ExitGRow.sign=s2Step274ExitGOut := by decide +kernel
  have hi : s2Step274ExitGRow.payload.drop 133=s2Step274ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step274ExitG_retired] at result
  exact result

private def s2Step274ExitGvBefore : Arena := s2Step274ExitFAfter

private theorem s2Step274ExitGv_Incoming : rowsOwned s2Step274ExitGvBefore [s2Step274ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274ExitGRow,s2Step274ExitFRow,s2Step274ExitFvRow,s2Step274ExitGvRow] 3 s2Step274ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274ExitGvBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<645) ∨ (646≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274ExitGv_Outgoing : rowsOwned s2Step274ExitGvAfter [s2Step274ExitGvOut] :=
  hmrRows_owned_drop s2Step274ExitGvAfter [s2Step274ExitGOut,s2Step274ExitFOut,s2Step274ExitFvOut,s2Step274ExitGvOut] 3 s2Step274ExitBank_outgoingOwned

private theorem s2Step274ExitGv_distinct : (s2Step274ExitGvRow.sign::s2Step274ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274ExitGv_owned : (s2Step274ExitGvRow.sign::s2Step274ExitGvRow.payload).toFinset⊆s2Step274ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274ExitGvBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<645) ∨ (646≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274ExitGv_retired : s2Step274ExitGvBefore.retireSet s2Step274ExitGvExtra.toFinset=s2Step274ExitGvAfter := by
  unfold Arena.retireSet s2Step274ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step274ExitGvBefore,s2Step274ExitFAfter,s2Step274ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step274ExitGv_checked : planRowResizeLog s2Step274ExitGvBefore s2Step274ExitGvRow 152 []=
    some (s2Step274ExitGvAfter,s2Step274ExitGvOut,shrinkRow 771 s2Step274ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step274ExitGvBefore s2Step274ExitGvRow 152 s2Step274ExitGv_distinct s2Step274ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step274ExitGvRow.payload.take 152) s2Step274ExitGvRow.sign=s2Step274ExitGvOut := by decide +kernel
  have hi : s2Step274ExitGvRow.payload.drop 152=s2Step274ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step274ExitGv_retired] at result
  exact result

private theorem s2Step274ExitBank_rows : planWindowRowsLog s2Step274ExitGBefore [(s2Step274ExitGRow,133),(s2Step274ExitFRow,133),(s2Step274ExitFvRow,153),(s2Step274ExitGvRow,152)] [[],[],[],[]]=
    some (s2Step274ExitGvAfter,[s2Step274ExitGOut,s2Step274ExitFOut,s2Step274ExitFvOut,s2Step274ExitGvOut],(shrinkRow 769 s2Step274ExitGExtra ++ (shrinkRow 768 s2Step274ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step274ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step274ExitGvAfter [] []=some (s2Step274ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step274ExitGvBefore s2Step274ExitGvAfter s2Step274ExitGvAfter
    s2Step274ExitGvRow s2Step274ExitGvOut 152 [] [] [] []
    (shrinkRow 771 s2Step274ExitGvExtra) ([]) s2Step274ExitGv_Incoming s2Step274ExitGv_checked h4 s2Step274ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step274ExitFvBefore s2Step274ExitFvAfter s2Step274ExitGvAfter
    s2Step274ExitFvRow s2Step274ExitFvOut 153 [] [(s2Step274ExitGvRow,152)] [[]] [s2Step274ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step274ExitGvExtra ++ [])) s2Step274ExitFv_Incoming s2Step274ExitFv_checked h3 s2Step274ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step274ExitFBefore s2Step274ExitFAfter s2Step274ExitGvAfter
    s2Step274ExitFRow s2Step274ExitFOut 133 [] [(s2Step274ExitFvRow,153),(s2Step274ExitGvRow,152)] [[],[]] [s2Step274ExitFvOut,s2Step274ExitGvOut]
    (shrinkRow 768 s2Step274ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step274ExitGvExtra ++ []))) s2Step274ExitF_Incoming s2Step274ExitF_checked h2 s2Step274ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step274ExitGBefore s2Step274ExitGAfter s2Step274ExitGvAfter
    s2Step274ExitGRow s2Step274ExitGOut 133 [] [(s2Step274ExitFRow,133),(s2Step274ExitFvRow,153),(s2Step274ExitGvRow,152)] [[],[],[]] [s2Step274ExitFOut,s2Step274ExitFvOut,s2Step274ExitGvOut]
    (shrinkRow 769 s2Step274ExitGExtra) ((shrinkRow 768 s2Step274ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step274ExitGvExtra ++ [])))) s2Step274ExitG_Incoming s2Step274ExitG_checked h1 s2Step274ExitG_Outgoing
  exact h0

private theorem s2Step274ExitBank_checked : compileHmrBankResizeLog .exit s2Step274ExitGBefore ⟨s2Step274ExitFRow,s2Step274ExitGRow,s2Step274ExitFvRow,s2Step274ExitGvRow⟩ ⟨133,133,153,152⟩ [[],[],[],[]]=
    some (s2Step274ExitGvAfter,⟨s2Step274ExitFOut,s2Step274ExitGOut,s2Step274ExitFvOut,s2Step274ExitGvOut⟩,(shrinkRow 769 s2Step274ExitGExtra ++ (shrinkRow 768 s2Step274ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step274ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step274ExitBank_rows]
  rfl

private theorem s2Step274Add0_apart : Disjoint s2Step274Add0Arena.live s2Step274Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step274Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274Add0_card : s2Step274Add0Arena.live.card=899 := by
  decide +kernel

private theorem s2Step274Add0_borrowed : s2Step274Add0Arena.checkBorrow (hmrHybridCount s2Step274Add0Arena s2Step274Add0B.length) s2Step274Add0Work=some s2Step274Add0During := by
  have len : s2Step274Add0Work.length=hmrHybridCount s2Step274Add0Arena s2Step274Add0B.length := by
    rw [hmrHybridCount,s2Step274Add0_card]
    decide +kernel
  have nd : s2Step274Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step274Add0Arena s2Step274Add0During s2Step274Add0Work.toFinset s2Step274Add0_bounded s2Step274Add0_apart rfl

private theorem s2Step274Add0_distinct : (781::851::891::(s2Step274Add0A++s2Step274Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274Add0_owned : (781::851::891::(s2Step274Add0A++s2Step274Add0B)).toFinset⊆s2Step274Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step274Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274Add0_checked : compileHmrHybridCinLog s2Step274Add0Arena 851 781 891 s2Step274Add0A s2Step274Add0B s2Step274Add0Work=some s2Step274Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step274Add0Arena s2Step274Add0During 851 781 891 s2Step274Add0A s2Step274Add0B s2Step274Add0Work
    (by decide +kernel) (by decide +kernel) s2Step274Add0_distinct
    (fun q hq => s2Step274Add0_owned (List.mem_toFinset.mpr hq)) s2Step274Add0_borrowed

private theorem s2Step274Add1_apart : Disjoint s2Step274Add1Arena.live s2Step274Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step274Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274Add1_card : s2Step274Add1Arena.live.card=899 := by
  decide +kernel

private theorem s2Step274Add1_borrowed : s2Step274Add1Arena.checkBorrow (hmrHybridCount s2Step274Add1Arena s2Step274Add1B.length) s2Step274Add1Work=some s2Step274Add1During := by
  have len : s2Step274Add1Work.length=hmrHybridCount s2Step274Add1Arena s2Step274Add1B.length := by
    rw [hmrHybridCount,s2Step274Add1_card]
    decide +kernel
  have nd : s2Step274Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step274Add1Arena s2Step274Add1During s2Step274Add1Work.toFinset s2Step274Add1_bounded s2Step274Add1_apart rfl

private theorem s2Step274Add1_distinct : (781::851::891::(s2Step274Add1A++s2Step274Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274Add1_owned : (781::851::891::(s2Step274Add1A++s2Step274Add1B)).toFinset⊆s2Step274Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step274Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274Add1_checked : compileHmrHybridCinLog s2Step274Add1Arena 851 781 891 s2Step274Add1A s2Step274Add1B s2Step274Add1Work=some s2Step274Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step274Add1Arena s2Step274Add1During 851 781 891 s2Step274Add1A s2Step274Add1B s2Step274Add1Work
    (by decide +kernel) (by decide +kernel) s2Step274Add1_distinct
    (fun q hq => s2Step274Add1_owned (List.mem_toFinset.mpr hq)) s2Step274Add1_borrowed

private theorem s2Step274F4_apart : Disjoint (s2Step274Add0A++s2Step274Add0B).toFinset (s2Step274Add1A++s2Step274Add1B).toFinset := by
  have nd : ((s2Step274Add0A++s2Step274Add0B)++(s2Step274Add1A++s2Step274Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step274F4_carry : s2Step274F4FlagArena.checkBorrow 1 [891]=some s2Step274Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step274F4FlagArena,s2Step274HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step274F4FlagArena,s2Step274HeadFvAfter,s2Step274Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step274F4_distinct : (844::851::781::891::((s2Step274Add0A++s2Step274Add1A)++(s2Step274Add0B++s2Step274Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274F4_flag : s2Step274HeadFvAfter.checkBorrow 1 [781]=some s2Step274F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step274HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step274F4_owned : (844::851::((s2Step274Add0A++s2Step274Add1A)++(s2Step274Add0B++s2Step274Add1B))).toFinset⊆s2Step274HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step274HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274F4_checked : compileHmrHybridF4Log s2Step274HeadFvAfter 844 851 s2Step274Add0A s2Step274Add0B s2Step274Add1A s2Step274Add1B [781] [891] s2Step274Add0Work s2Step274Add1Work=some s2Step274F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step274HeadFvAfter s2Step274F4FlagArena s2Step274Add0Arena s2Step274Add0During s2Step274Add1During 844 851
    s2Step274Add0A s2Step274Add0B s2Step274Add1A s2Step274Add1B [781] [891] s2Step274Add0Work s2Step274Add1Work
    (fun q hq => s2Step274F4_owned (List.mem_toFinset.mpr hq)) s2Step274F4_flag s2Step274F4_carry
    s2Step274F4_distinct s2Step274F4_apart s2Step274Add0_checked s2Step274Add1_checked

private theorem s2Step274Front_branch : s2Step274FrontSigmaArena.checkBorrow 1 [851]=some s2Step274HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step274FrontSigmaArena,s2Step274EntryGvAfter,s2Step274EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step274FrontSigmaArena,s2Step274EntryGvAfter,s2Step274EntryFBefore,s2Step274HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step274Front_entry : HmrFrontEntryValid s2Step274EntryFBefore s2Step274FrontBank 134 152 ⟨133,133,153,152⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step274FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step274EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step274EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step274FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step274Front_sigma : s2Step274EntryGvAfter.checkBorrow 1 [844]=some s2Step274FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step274EntryGvAfter,s2Step274EntryFBefore,arenaWires]
  · rfl

private def s2Step274HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274HeadFBefore : Arena := s2Step274HeadGAfter

private def s2Step274HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645],768⟩

private def s2Step274HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩

private def s2Step274HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],769⟩

private def s2Step274HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩

private theorem s2Step274HeadBank_incomingDistinct : ([s2Step274HeadGRow,s2Step274HeadFRow,s2Step274HeadGvRow,s2Step274HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274HeadF_Incoming : rowsOwned s2Step274HeadFBefore [s2Step274HeadFRow,s2Step274HeadGvRow,s2Step274HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274HeadGRow,s2Step274HeadFRow,s2Step274HeadGvRow,s2Step274HeadFvRow] 1 s2Step274HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274HeadBank_outgoingOwned : rowsOwned s2Step274HeadFvAfter [s2Step274HeadGOut,s2Step274HeadFOut,s2Step274HeadGvOut,s2Step274HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step274HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274HeadF_Outgoing : rowsOwned s2Step274HeadFvAfter [s2Step274HeadFOut,s2Step274HeadGvOut,s2Step274HeadFvOut] :=
  hmrRows_owned_drop s2Step274HeadFvAfter [s2Step274HeadGOut,s2Step274HeadFOut,s2Step274HeadGvOut,s2Step274HeadFvOut] 1 s2Step274HeadBank_outgoingOwned

private theorem s2Step274HeadF_distinct : (s2Step274HeadFRow.sign::s2Step274HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274HeadF_owned : (s2Step274HeadFRow.sign::s2Step274HeadFRow.payload).toFinset⊆s2Step274HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274HeadF_reserved : s2Step274HeadFBefore.reserve s2Step274HeadFFresh.toFinset=some s2Step274HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step274HeadFFresh,arenaWires]
  · norm_num [s2Step274HeadFBefore,s2Step274HeadGAfter,s2Step274HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step274HeadFAfter,s2Step274HeadFBefore,s2Step274HeadGAfter,s2Step274HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step274HeadF_checked : planRowResizeLog s2Step274HeadFBefore s2Step274HeadFRow 135 s2Step274HeadFFresh=
    some (s2Step274HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 788],768⟩,growRow 768 s2Step274HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step274HeadFBefore s2Step274HeadFAfter s2Step274HeadFRow 135 s2Step274HeadFFresh
    s2Step274HeadF_distinct s2Step274HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step274HeadF_reserved
  have rowEq : WindowRow.mk (s2Step274HeadFRow.payload++s2Step274HeadFFresh) s2Step274HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 788],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step274HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step274HeadFvBefore : Arena := s2Step274HeadGvAfter

private theorem s2Step274HeadFv_Incoming : rowsOwned s2Step274HeadFvBefore [s2Step274HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274HeadGRow,s2Step274HeadFRow,s2Step274HeadGvRow,s2Step274HeadFvRow] 3 s2Step274HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274HeadFv_Outgoing : rowsOwned s2Step274HeadFvAfter [s2Step274HeadFvOut] :=
  hmrRows_owned_drop s2Step274HeadFvAfter [s2Step274HeadGOut,s2Step274HeadFOut,s2Step274HeadGvOut,s2Step274HeadFvOut] 3 s2Step274HeadBank_outgoingOwned

private theorem s2Step274HeadFv_distinct : (s2Step274HeadFvRow.sign::s2Step274HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274HeadFv_owned : (s2Step274HeadFvRow.sign::s2Step274HeadFvRow.payload).toFinset⊆s2Step274HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274HeadFv_reserved : s2Step274HeadFvBefore.reserve s2Step274HeadFvFresh.toFinset=some s2Step274HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step274HeadFvFresh,arenaWires]
  · norm_num [s2Step274HeadFvBefore,s2Step274HeadGvAfter,s2Step274HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step274HeadFvAfter,s2Step274HeadFvBefore,s2Step274HeadGvAfter,s2Step274HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step274HeadFv_checked : planRowResizeLog s2Step274HeadFvBefore s2Step274HeadFvRow 153 s2Step274HeadFvFresh=
    some (s2Step274HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩,growRow 770 s2Step274HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step274HeadFvBefore s2Step274HeadFvAfter s2Step274HeadFvRow 153 s2Step274HeadFvFresh
    s2Step274HeadFv_distinct s2Step274HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step274HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step274HeadFvRow.payload++s2Step274HeadFvFresh) s2Step274HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step274HeadG_Incoming : rowsOwned s2Step274HeadGBefore [s2Step274HeadGRow,s2Step274HeadFRow,s2Step274HeadGvRow,s2Step274HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274HeadGRow,s2Step274HeadFRow,s2Step274HeadGvRow,s2Step274HeadFvRow] 0 s2Step274HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274HeadG_Outgoing : rowsOwned s2Step274HeadFvAfter [s2Step274HeadGOut,s2Step274HeadFOut,s2Step274HeadGvOut,s2Step274HeadFvOut] :=
  hmrRows_owned_drop s2Step274HeadFvAfter [s2Step274HeadGOut,s2Step274HeadFOut,s2Step274HeadGvOut,s2Step274HeadFvOut] 0 s2Step274HeadBank_outgoingOwned

private theorem s2Step274HeadG_distinct : (s2Step274HeadGRow.sign::s2Step274HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274HeadG_owned : (s2Step274HeadGRow.sign::s2Step274HeadGRow.payload).toFinset⊆s2Step274HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274HeadG_reserved : s2Step274HeadGBefore.reserve s2Step274HeadGFresh.toFinset=some s2Step274HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step274HeadGFresh,arenaWires]
  · norm_num [s2Step274HeadGBefore,s2Step274HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step274HeadGAfter,s2Step274HeadGBefore,s2Step274HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step274HeadG_checked : planRowResizeLog s2Step274HeadGBefore s2Step274HeadGRow 135 s2Step274HeadGFresh=
    some (s2Step274HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 791],769⟩,growRow 769 s2Step274HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step274HeadGBefore s2Step274HeadGAfter s2Step274HeadGRow 135 s2Step274HeadGFresh
    s2Step274HeadG_distinct s2Step274HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step274HeadG_reserved
  have rowEq : WindowRow.mk (s2Step274HeadGRow.payload++s2Step274HeadGFresh) s2Step274HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 791],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step274HeadGvBefore : Arena := s2Step274HeadFAfter

private theorem s2Step274HeadGv_Incoming : rowsOwned s2Step274HeadGvBefore [s2Step274HeadGvRow,s2Step274HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step274HeadGRow,s2Step274HeadFRow,s2Step274HeadGvRow,s2Step274HeadFvRow] 2 s2Step274HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step274HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step274HeadGv_Outgoing : rowsOwned s2Step274HeadFvAfter [s2Step274HeadGvOut,s2Step274HeadFvOut] :=
  hmrRows_owned_drop s2Step274HeadFvAfter [s2Step274HeadGOut,s2Step274HeadFOut,s2Step274HeadGvOut,s2Step274HeadFvOut] 2 s2Step274HeadBank_outgoingOwned

private theorem s2Step274HeadGv_distinct : (s2Step274HeadGvRow.sign::s2Step274HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step274HeadGv_owned : (s2Step274HeadGvRow.sign::s2Step274HeadGvRow.payload).toFinset⊆s2Step274HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step274HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step274HeadGv_reserved : s2Step274HeadGvBefore.reserve s2Step274HeadGvFresh.toFinset=some s2Step274HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step274HeadGvFresh,arenaWires]
  · norm_num [s2Step274HeadGvBefore,s2Step274HeadFAfter,s2Step274HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step274HeadGvAfter,s2Step274HeadGvBefore,s2Step274HeadFAfter,s2Step274HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step274HeadGv_checked : planRowResizeLog s2Step274HeadGvBefore s2Step274HeadGvRow 153 s2Step274HeadGvFresh=
    some (s2Step274HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 841],771⟩,growRow 771 s2Step274HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step274HeadGvBefore s2Step274HeadGvAfter s2Step274HeadGvRow 153 s2Step274HeadGvFresh
    s2Step274HeadGv_distinct s2Step274HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step274HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step274HeadGvRow.payload++s2Step274HeadGvFresh) s2Step274HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step274HeadBank_rows : planWindowRowsLog s2Step274HeadGBefore [(s2Step274HeadGRow,135),(s2Step274HeadFRow,135),(s2Step274HeadGvRow,153),(s2Step274HeadFvRow,153)] [s2Step274HeadGFresh,s2Step274HeadFFresh,s2Step274HeadGvFresh,s2Step274HeadFvFresh]=
    some (s2Step274HeadFvAfter,[s2Step274HeadGOut,s2Step274HeadFOut,s2Step274HeadGvOut,s2Step274HeadFvOut],(growRow 769 s2Step274HeadGFresh ++ (growRow 768 s2Step274HeadFFresh ++ (growRow 771 s2Step274HeadGvFresh ++ (growRow 770 s2Step274HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step274HeadFvAfter [] []=some (s2Step274HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step274HeadFvBefore s2Step274HeadFvAfter s2Step274HeadFvAfter
    s2Step274HeadFvRow s2Step274HeadFvOut 153 s2Step274HeadFvFresh [] [] []
    (growRow 770 s2Step274HeadFvFresh) ([]) s2Step274HeadFv_Incoming s2Step274HeadFv_checked h4 s2Step274HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step274HeadGvBefore s2Step274HeadGvAfter s2Step274HeadFvAfter
    s2Step274HeadGvRow s2Step274HeadGvOut 153 s2Step274HeadGvFresh [(s2Step274HeadFvRow,153)] [s2Step274HeadFvFresh] [s2Step274HeadFvOut]
    (growRow 771 s2Step274HeadGvFresh) ((growRow 770 s2Step274HeadFvFresh ++ [])) s2Step274HeadGv_Incoming s2Step274HeadGv_checked h3 s2Step274HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step274HeadFBefore s2Step274HeadFAfter s2Step274HeadFvAfter
    s2Step274HeadFRow s2Step274HeadFOut 135 s2Step274HeadFFresh [(s2Step274HeadGvRow,153),(s2Step274HeadFvRow,153)] [s2Step274HeadGvFresh,s2Step274HeadFvFresh] [s2Step274HeadGvOut,s2Step274HeadFvOut]
    (growRow 768 s2Step274HeadFFresh) ((growRow 771 s2Step274HeadGvFresh ++ (growRow 770 s2Step274HeadFvFresh ++ []))) s2Step274HeadF_Incoming s2Step274HeadF_checked h2 s2Step274HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step274HeadGBefore s2Step274HeadGAfter s2Step274HeadFvAfter
    s2Step274HeadGRow s2Step274HeadGOut 135 s2Step274HeadGFresh [(s2Step274HeadFRow,135),(s2Step274HeadGvRow,153),(s2Step274HeadFvRow,153)] [s2Step274HeadFFresh,s2Step274HeadGvFresh,s2Step274HeadFvFresh] [s2Step274HeadFOut,s2Step274HeadGvOut,s2Step274HeadFvOut]
    (growRow 769 s2Step274HeadGFresh) ((growRow 768 s2Step274HeadFFresh ++ (growRow 771 s2Step274HeadGvFresh ++ (growRow 770 s2Step274HeadFvFresh ++ [])))) s2Step274HeadG_Incoming s2Step274HeadG_checked h1 s2Step274HeadG_Outgoing
  exact h0

private theorem s2Step274HeadBank_checked : compileHmrBankResizeLog .headroom s2Step274HeadGBefore ⟨s2Step274HeadFRow,s2Step274HeadGRow,s2Step274HeadFvRow,s2Step274HeadGvRow⟩ ⟨135,135,153,153⟩ [s2Step274HeadGFresh,s2Step274HeadFFresh,s2Step274HeadGvFresh,s2Step274HeadFvFresh]=
    some (s2Step274HeadFvAfter,⟨s2Step274HeadFOut,s2Step274HeadGOut,s2Step274HeadFvOut,s2Step274HeadGvOut⟩,(growRow 769 s2Step274HeadGFresh ++ (growRow 768 s2Step274HeadFFresh ++ (growRow 771 s2Step274HeadGvFresh ++ (growRow 770 s2Step274HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step274HeadBank_rows]
  rfl

private theorem s2Step274Front_checked : compileHmrSourceFrontLog s2Step274EntryFBefore s2Step274FrontBank 134 152 ⟨133,133,153,152⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step274FrontLog=some s2Step274FrontPlan := by
  have pairEq : s2Step274FrontPair=⟨s2Step274HeadFRow,s2Step274HeadGRow,s2Step274HeadFvRow,s2Step274HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step274FrontHead=⟨s2Step274ExitFRow,s2Step274ExitGRow,s2Step274ExitFvRow,s2Step274ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step274Add0A=s2Step274FrontHead.f.wires := by decide +kernel
  have gEq : s2Step274Add0B=s2Step274FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step274Add1A=s2Step274FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step274Add1B=s2Step274FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step274EntryFBefore s2Step274FrontBank 134 152 ⟨133,133,153,152⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step274FrontLog s2Step274FrontPlan
  · exact s2Step274Front_entry
  · exact s2Step274EntryBank_checked
  · exact s2Step274Front_sigma
  · rfl
  · exact s2Step274Front_branch
  · rfl
  · simpa only [s2Step274FrontPlan,pairEq] using s2Step274HeadBank_checked
  · simpa only [s2Step274FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step274F4_checked
  · exact s2Step274Counter_checked
  · rfl
  · simpa only [s2Step274FrontPlan,headEq] using s2Step274ExitBank_checked

private theorem s2Step274Complete_explicit_checked : compileHmrEarlyStepLog s2Step274EntryFBefore s2Step274FrontBank 134 152 ⟨133,133,153,152⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step274CompleteLog=some s2Step274CompletePlan := by
  let Q := s2Step274EarlyControlPlan
  have hq := s2Step274EarlyControl_plan_checked
  have fv1 : s2Step274CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step274CompleteOut.fv.payload[2]?.getD s2Step274CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step274CompleteOut.fv.payload[3]?.getD s2Step274CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step274CompleteOut.fv.payload[4]?.getD s2Step274CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step274EntryFBefore s2Step274EarlyControlArena s2Step274FrontBank 134 152 ⟨133,133,153,152⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step274CompleteLog s2Step274FrontPlan Q
    s2Step274Front_checked s2Step274Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step274Complete_owned s2Step274Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step274EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 s2Step274CompleteOut.fv.second (s2Step274CompleteOut.fv.payload[2]?.getD s2Step274CompleteOut.fv.sign) (s2Step274CompleteOut.fv.payload[3]?.getD s2Step274CompleteOut.fv.sign) (s2Step274CompleteOut.fv.payload[4]?.getD s2Step274CompleteOut.fv.sign) 851 53 s2Step274EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep274Arena : Arena := s2Step274EntryFBefore
def s2PrivateStep274Bank : WindowBank := s2Step274FrontBank
def s2PrivateStep274Spec : HmrSourceWalkStepLog := ⟨134,152,⟨133,133,153,152⟩,53,.early s2Step274CompleteLog⟩
def s2PrivateStep274Plan : HmrSourceStepPlan := .early s2Step274CompletePlan
theorem s2PrivateStep274_source : s2PrivateStep274Spec=s2ObservedLogs272[2] := rfl
theorem s2PrivateStep274_checked : compileHmrSourceStepLog s2PrivateStep274Arena s2PrivateStep274Bank
    s2PrivateStep274Spec.fgWidth s2PrivateStep274Spec.vWidth s2PrivateStep274Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]
    6 498 274 s2PrivateStep274Spec.need none s2PrivateStep274Spec.log=some s2PrivateStep274Plan := by
  change compileHmrSourceStepLog s2Step274EntryFBefore s2Step274FrontBank 134 152 ⟨133,133,153,152⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 6 498 274 53 none (.early s2Step274CompleteLog)=some (.early s2Step274CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 274<498)]
  rw [s2Step274Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
