import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep275
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

private def s2Step277CompleteMoves : List (Wire × Wire) := []

private def s2Step277EarlyControlLog : HmrEarlyControlLog := ⟨[815, 839, 788, 791, 841],[781],[891],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step277FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [815]],[[841], [791], [839], [788]],[[], [], [], []]⟩,[844],[778],[781],[891],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 891, 830, 800]⟩

private def s2Step277CompleteLog : HmrEarlyStepLog := ⟨s2Step277FrontLog,s2Step277CompleteMoves,s2Step277EarlyControlLog⟩

private def s2Step277ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step277ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩

private def s2Step277ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩

private def s2Step277ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩

private def s2Step277FrontOut : WindowBank := ⟨s2Step277ExitFOut,s2Step277ExitGOut,s2Step277ExitFvOut,s2Step277ExitGvOut⟩

private def s2Step277CompleteOut : WindowBank := s2Step277FrontOut.repacked s2Step277CompleteMoves

private def s2Step277EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step277EarlyControlPositiveArena,[781],s2Step277EarlyControlEqualityArena,[891],⟨⟨844,false⟩,[⟨⟨781,false⟩,891⟩]⟩⟩

private def s2Step277EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,815⟩,⟨⟨774,false⟩,839⟩,⟨⟨775,false⟩,788⟩,⟨⟨776,false⟩,791⟩,⟨⟨777,false⟩,841⟩]⟩

private def s2Step277EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step277EarlyControlZeroArena,s2Step277EarlyControlZeroPlan,s2Step277EarlyControlClassPlan,s2Step277EarlyControlFlagArena,s2Step277EarlyControlFittedArena,s2Step277EarlyControlHistoryArena,s2Step277EarlyControlSigmaArena,s2Step277EarlyControlOutputArena,s2Step277EarlyControlLog⟩

private def s2Step277CounterWork : List Wire := [781, 891, 830, 800]

private theorem s2Step277Counter_bounded : s2Step277CounterWork.toFinset⊆arenaWires := by norm_num [s2Step277CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step277HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277CounterDuring : Arena := ⟨s2Step277HeadFvAfter.live∪s2Step277CounterWork.toFinset,Finset.union_subset s2Step277HeadFvAfter.bounded s2Step277Counter_bounded⟩

private def s2Step277EntryFFresh : List Wire := []

private def s2Step277EntryFvFresh : List Wire := []

private def s2Step277EntryGFresh : List Wire := []

private def s2Step277EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EntryGvFresh : List Wire := [815]

private def s2Step277ExitFExtra : List Wire := [791]

private def s2Step277ExitFvExtra : List Wire := [788]

private def s2Step277ExitGExtra : List Wire := [841]

private def s2Step277ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277ExitGvExtra : List Wire := [815, 839]

private def s2Step277Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step277Add0_bounded : s2Step277Add0Work.toFinset⊆arenaWires := by
  have h : s2Step277Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step277Add0During : Arena := ⟨s2Step277Add0Arena.live∪s2Step277Add0Work.toFinset,Finset.union_subset s2Step277Add0Arena.bounded s2Step277Add0_bounded⟩

private def s2Step277Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step277Add1_bounded : s2Step277Add1Work.toFinset⊆arenaWires := by
  have h : s2Step277Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step277Add1During : Arena := ⟨s2Step277Add1Arena.live∪s2Step277Add1Work.toFinset,Finset.union_subset s2Step277Add1Arena.bounded s2Step277Add1_bounded⟩

private def s2Step277F4FlagArena : Arena := ⟨s2Step277HeadFvAfter.live∪{781},Finset.union_subset s2Step277HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step277F4Plan : HmrHybridF4Plan := ⟨s2Step277F4FlagArena,[781],s2Step277Add0Arena,[891],s2Step277Add0During,s2Step277Add0Work,s2Step277Add1During,s2Step277Add1Work⟩

private def s2Step277HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 791],768⟩

private def s2Step277HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 788],770⟩

private def s2Step277HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 841],769⟩

private def s2Step277HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 815, 839],771⟩

private def s2Step277FrontHead : WindowBank := ⟨s2Step277HeadFOut,s2Step277HeadGOut,s2Step277HeadFvOut,s2Step277HeadGvOut⟩

private def s2Step277EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step277EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩

private def s2Step277EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩

private def s2Step277EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 815],771⟩

private def s2Step277FrontPair : WindowBank := ⟨s2Step277EntryFOut,s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut⟩

private def s2Step277FrontSigmaArena : Arena := ⟨s2Step277EntryGvAfter.live∪{844},Finset.union_subset s2Step277EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step277HeadFFresh : List Wire := [791]

private def s2Step277HeadFvFresh : List Wire := [788]

private def s2Step277HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277HeadGFresh : List Wire := [841]

private def s2Step277HeadGvFresh : List Wire := [839]

private def s2Step277FrontPlan : HmrSourceFront := ⟨s2Step277EntryGvAfter,s2Step277FrontPair,(growRow 768 s2Step277EntryFFresh ++ (growRow 769 s2Step277EntryGFresh ++ (growRow 770 s2Step277EntryFvFresh ++ (growRow 771 s2Step277EntryGvFresh ++ [])))),s2Step277FrontSigmaArena,[844],s2Step277HeadGBefore,[778],
  s2Step277HeadFvAfter,s2Step277FrontHead,(growRow 769 s2Step277HeadGFresh ++ (growRow 768 s2Step277HeadFFresh ++ (growRow 771 s2Step277HeadGvFresh ++ (growRow 770 s2Step277HeadFvFresh ++ [])))),s2Step277F4Plan,s2Step277CounterDuring,s2Step277CounterWork,s2Step277ExitGvAfter,s2Step277FrontOut,(shrinkRow 769 s2Step277ExitGExtra ++ (shrinkRow 768 s2Step277ExitFExtra ++ (shrinkRow 770 s2Step277ExitFvExtra ++ (shrinkRow 771 s2Step277ExitGvExtra ++ []))))⟩

private def s2Step277CompletePlan : HmrEarlyStepPlan := ⟨s2Step277FrontPlan,s2Step277EarlyControlArena,s2Step277EarlyControlPlan,s2Step277CompleteMoves⟩

private theorem s2Step277Complete_apart : List.Disjoint (s2Step277CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  have nd : ((s2Step277CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step277Complete_owned : (s2Step277CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step277EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277Complete_repack : s2Step277ExitGvAfter.checkRepack s2Step277CompleteMoves=some s2Step277EarlyControlArena := by rfl

private theorem s2Step277EarlyControl_branchOwned : ([778] : List Wire).toFinset⊆s2Step277EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_branch : compileHmrBranchRetirement s2Step277EarlyControlSigmaArena 778=some s2Step277EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step277EarlyControl_branchOwned
  · ext q
    simp [s2Step277EarlyControlOutputArena,s2Step277EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step277EarlyControl_classEqualityBorrow : s2Step277EarlyControlPositiveArena.checkBorrow (([844, 781] : List Wire).length-1) s2Step277EarlyControlLog.classWork=some s2Step277EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step277EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step277EarlyControlEqualityArena,s2Step277EarlyControlPositiveArena,s2Step277EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step277EarlyControl_classEqualityOwned : ([844, 781] : List Wire).toFinset⊆s2Step277EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_classEquality : compileHmrEqualityLog s2Step277EarlyControlPositiveArena [844, 781] 0 s2Step277EarlyControlLog.classWork=some (s2Step277EarlyControlEqualityArena,s2Step277EarlyControlLog.classWork,s2Step277EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step277EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step277EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step277EarlyControl_classOwned : ([777, 841, 844] : List Wire).toFinset⊆s2Step277EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_positiveBorrow : s2Step277EarlyControlZeroArena.checkBorrow (1) s2Step277EarlyControlLog.positiveWork=some s2Step277EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step277EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step277EarlyControlPositiveArena,s2Step277EarlyControlZeroArena,s2Step277EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step277EarlyControl_class : compileHmrSourceClassLog s2Step277EarlyControlZeroArena false 777 s2Step277EarlyControlZeroPlan.top 0 844 s2Step277EarlyControlLog.positiveWork s2Step277EarlyControlLog.classWork=some s2Step277EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step277EarlyControlClassPlan s2Step277EarlyControlZeroArena false 777 s2Step277EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step277EarlyControl_classOwned
  · exact s2Step277EarlyControl_positiveBorrow
  · exact s2Step277EarlyControl_classEquality

private theorem s2Step277EarlyControl_entryRecordOwned : ([778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step277EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step277EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_fitBorrow : s2Step277EarlyControlFlagArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step277EarlyControlLog.recordFresh=some s2Step277EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step277EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step277EarlyControlFittedArena,s2Step277EarlyControlFlagArena,s2Step277EarlyControlLog,arenaWires]

private theorem s2Step277EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step277EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_fit : compileHmrRecordGrowLog s2Step277EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step277EarlyControlLog.recordFresh=some s2Step277EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step277EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step277EarlyControl_fitBorrow

private theorem s2Step277EarlyControl_flagsBorrow : s2Step277EarlyControlEqualityArena.checkBorrow (6) s2Step277EarlyControlLog.flagWork=some s2Step277EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step277EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step277EarlyControlFlagArena,s2Step277EarlyControlEqualityArena,s2Step277EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step277EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s2Step277EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_flags : compileHmrFlagsLog s2Step277EarlyControlClassPlan.equalityArena s2Step277EarlyControlClassPlan.equality.top 253 252 251 s2Step277EarlyControlLog.flagWork=some s2Step277EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step277EarlyControl_flagsOwned⟩
  · exact s2Step277EarlyControl_flagsBorrow

private theorem s2Step277EarlyControl_historyBorrow : s2Step277EarlyControlArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step277EarlyControlLog.recordFresh=some s2Step277EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step277EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step277EarlyControlHistoryArena,s2Step277EarlyControlArena,s2Step277EarlyControlLog,arenaWires]

private theorem s2Step277EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step277EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_history : compileHmrRecordGrowLog s2Step277EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step277EarlyControlLog.recordFresh=some s2Step277EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step277EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step277EarlyControl_historyBorrow

private theorem s2Step277EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step277EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step277EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_sigmaRelease : s2Step277EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step277EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step277EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step277EarlyControlSigmaArena,s2Step277EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step277EarlyControl_sigma : compileHmrSigmaDropLog s2Step277EarlyControlHistoryArena false 0 0 254 844 []=some s2Step277EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step277EarlyControl_sigmaOwned⟩
  · exact s2Step277EarlyControl_sigmaRelease

private theorem s2Step277EarlyControl_zeroBorrow : s2Step277EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step277EarlyControlLog.zeroWork=some s2Step277EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step277EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step277EarlyControlZeroArena,s2Step277EarlyControlArena,s2Step277EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step277EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step277EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step277EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EarlyControl_zero : compileHmrEqualityLog s2Step277EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step277EarlyControlLog.zeroWork=some (s2Step277EarlyControlZeroArena,s2Step277EarlyControlLog.zeroWork,s2Step277EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step277EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step277EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step277EarlyControl_logged : s2Step277EarlyControlPlan.Logged s2Step277EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 778 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step277EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step277EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step277EarlyControl_zero
  · exact s2Step277EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step277EarlyControl_flags
  · exact s2Step277EarlyControl_fit
  · exact s2Step277EarlyControl_history
  · exact s2Step277EarlyControl_sigma
  · exact s2Step277EarlyControl_branch

private theorem s2Step277EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step277EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 778 53 s2Step277EarlyControlLog=some s2Step277EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step277EarlyControlPlan s2Step277EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 778 53 s2Step277EarlyControl_logged

private def s2Step277EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step277EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩

private def s2Step277EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩

private def s2Step277EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩

private def s2Step277FrontBank : WindowBank := ⟨s2Step277EntryFRow,s2Step277EntryGRow,s2Step277EntryFvRow,s2Step277EntryGvRow⟩

private def s2Step277Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 791, 768]

private def s2Step277Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 841, 769]

private def s2Step277Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 788, 770]

private def s2Step277Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 815, 839, 771]

private theorem s2Step277Counter_apart : Disjoint s2Step277HeadFvAfter.live s2Step277CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step277HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277Counter_borrowed : s2Step277HeadFvAfter.checkBorrow 4 s2Step277CounterWork=some s2Step277CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step277HeadFvAfter s2Step277CounterDuring s2Step277CounterWork.toFinset s2Step277Counter_bounded s2Step277Counter_apart rfl

private theorem s2Step277Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step277HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step277HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277Counter_checked : compileHmrCounterStepLog s2Step277HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step277CounterWork=some s2Step277CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step277HeadFvAfter.live := fun q hq => s2Step277Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step277Counter_borrowed

private def s2Step277EntryFAfter : Arena := s2Step277EntryFBefore

private theorem s2Step277EntryBank_incomingDistinct : ([s2Step277EntryFRow,s2Step277EntryGRow,s2Step277EntryFvRow,s2Step277EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277EntryF_Incoming : rowsOwned s2Step277EntryFBefore [s2Step277EntryFRow,s2Step277EntryGRow,s2Step277EntryFvRow,s2Step277EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277EntryFRow,s2Step277EntryGRow,s2Step277EntryFvRow,s2Step277EntryGvRow] 0 s2Step277EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277EntryBank_outgoingOwned : rowsOwned s2Step277EntryGvAfter [s2Step277EntryFOut,s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step277EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277EntryF_Outgoing : rowsOwned s2Step277EntryGvAfter [s2Step277EntryFOut,s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut] :=
  hmrRows_owned_drop s2Step277EntryGvAfter [s2Step277EntryFOut,s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut] 0 s2Step277EntryBank_outgoingOwned

private theorem s2Step277EntryF_distinct : (s2Step277EntryFRow.sign::s2Step277EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277EntryF_owned : (s2Step277EntryFRow.sign::s2Step277EntryFRow.payload).toFinset⊆s2Step277EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EntryF_reserved : s2Step277EntryFBefore.reserve s2Step277EntryFFresh.toFinset=some s2Step277EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step277EntryFFresh,arenaWires]
  · norm_num [s2Step277EntryFBefore,s2Step277EntryFFresh,arenaWires]
  · simp only [s2Step277EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step277EntryF_checked : planRowResizeLog s2Step277EntryFBefore s2Step277EntryFRow 132 s2Step277EntryFFresh=
    some (s2Step277EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩,growRow 768 s2Step277EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step277EntryFBefore s2Step277EntryFAfter s2Step277EntryFRow 132 s2Step277EntryFFresh
    s2Step277EntryF_distinct s2Step277EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step277EntryF_reserved
  have rowEq : WindowRow.mk (s2Step277EntryFRow.payload++s2Step277EntryFFresh) s2Step277EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step277EntryFvAfter : Arena := s2Step277EntryFBefore

private def s2Step277EntryFvBefore : Arena := s2Step277EntryFBefore

private theorem s2Step277EntryFv_Incoming : rowsOwned s2Step277EntryFvBefore [s2Step277EntryFvRow,s2Step277EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277EntryFRow,s2Step277EntryGRow,s2Step277EntryFvRow,s2Step277EntryGvRow] 2 s2Step277EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277EntryFv_Outgoing : rowsOwned s2Step277EntryGvAfter [s2Step277EntryFvOut,s2Step277EntryGvOut] :=
  hmrRows_owned_drop s2Step277EntryGvAfter [s2Step277EntryFOut,s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut] 2 s2Step277EntryBank_outgoingOwned

private theorem s2Step277EntryFv_distinct : (s2Step277EntryFvRow.sign::s2Step277EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277EntryFv_owned : (s2Step277EntryFvRow.sign::s2Step277EntryFvRow.payload).toFinset⊆s2Step277EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EntryFv_reserved : s2Step277EntryFvBefore.reserve s2Step277EntryFvFresh.toFinset=some s2Step277EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step277EntryFvFresh,arenaWires]
  · norm_num [s2Step277EntryFvBefore,s2Step277EntryFBefore,s2Step277EntryFvFresh,arenaWires]
  · simp only [s2Step277EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step277EntryFv_checked : planRowResizeLog s2Step277EntryFvBefore s2Step277EntryFvRow 154 s2Step277EntryFvFresh=
    some (s2Step277EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩,growRow 770 s2Step277EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step277EntryFvBefore s2Step277EntryFvAfter s2Step277EntryFvRow 154 s2Step277EntryFvFresh
    s2Step277EntryFv_distinct s2Step277EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step277EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step277EntryFvRow.payload++s2Step277EntryFvFresh) s2Step277EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step277EntryGAfter : Arena := s2Step277EntryFBefore

private def s2Step277EntryGBefore : Arena := s2Step277EntryFBefore

private theorem s2Step277EntryG_Incoming : rowsOwned s2Step277EntryGBefore [s2Step277EntryGRow,s2Step277EntryFvRow,s2Step277EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277EntryFRow,s2Step277EntryGRow,s2Step277EntryFvRow,s2Step277EntryGvRow] 1 s2Step277EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277EntryG_Outgoing : rowsOwned s2Step277EntryGvAfter [s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut] :=
  hmrRows_owned_drop s2Step277EntryGvAfter [s2Step277EntryFOut,s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut] 1 s2Step277EntryBank_outgoingOwned

private theorem s2Step277EntryG_distinct : (s2Step277EntryGRow.sign::s2Step277EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277EntryG_owned : (s2Step277EntryGRow.sign::s2Step277EntryGRow.payload).toFinset⊆s2Step277EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EntryG_reserved : s2Step277EntryGBefore.reserve s2Step277EntryGFresh.toFinset=some s2Step277EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step277EntryGFresh,arenaWires]
  · norm_num [s2Step277EntryGBefore,s2Step277EntryFBefore,s2Step277EntryGFresh,arenaWires]
  · simp only [s2Step277EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step277EntryG_checked : planRowResizeLog s2Step277EntryGBefore s2Step277EntryGRow 132 s2Step277EntryGFresh=
    some (s2Step277EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩,growRow 769 s2Step277EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step277EntryGBefore s2Step277EntryGAfter s2Step277EntryGRow 132 s2Step277EntryGFresh
    s2Step277EntryG_distinct s2Step277EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step277EntryG_reserved
  have rowEq : WindowRow.mk (s2Step277EntryGRow.payload++s2Step277EntryGFresh) s2Step277EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step277EntryGvBefore : Arena := s2Step277EntryFBefore

private theorem s2Step277EntryGv_Incoming : rowsOwned s2Step277EntryGvBefore [s2Step277EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277EntryFRow,s2Step277EntryGRow,s2Step277EntryFvRow,s2Step277EntryGvRow] 3 s2Step277EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277EntryGv_Outgoing : rowsOwned s2Step277EntryGvAfter [s2Step277EntryGvOut] :=
  hmrRows_owned_drop s2Step277EntryGvAfter [s2Step277EntryFOut,s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut] 3 s2Step277EntryBank_outgoingOwned

private theorem s2Step277EntryGv_distinct : (s2Step277EntryGvRow.sign::s2Step277EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277EntryGv_owned : (s2Step277EntryGvRow.sign::s2Step277EntryGvRow.payload).toFinset⊆s2Step277EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277EntryGv_reserved : s2Step277EntryGvBefore.reserve s2Step277EntryGvFresh.toFinset=some s2Step277EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step277EntryGvFresh,arenaWires]
  · norm_num [s2Step277EntryGvBefore,s2Step277EntryFBefore,s2Step277EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step277EntryGvAfter,s2Step277EntryGvBefore,s2Step277EntryFBefore,s2Step277EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step277EntryGv_checked : planRowResizeLog s2Step277EntryGvBefore s2Step277EntryGvRow 154 s2Step277EntryGvFresh=
    some (s2Step277EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 815],771⟩,growRow 771 s2Step277EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step277EntryGvBefore s2Step277EntryGvAfter s2Step277EntryGvRow 154 s2Step277EntryGvFresh
    s2Step277EntryGv_distinct s2Step277EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step277EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step277EntryGvRow.payload++s2Step277EntryGvFresh) s2Step277EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 815],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step277EntryBank_rows : planWindowRowsLog s2Step277EntryFBefore [(s2Step277EntryFRow,132),(s2Step277EntryGRow,132),(s2Step277EntryFvRow,154),(s2Step277EntryGvRow,154)] [s2Step277EntryFFresh,s2Step277EntryGFresh,s2Step277EntryFvFresh,s2Step277EntryGvFresh]=
    some (s2Step277EntryGvAfter,[s2Step277EntryFOut,s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut],(growRow 768 s2Step277EntryFFresh ++ (growRow 769 s2Step277EntryGFresh ++ (growRow 770 s2Step277EntryFvFresh ++ (growRow 771 s2Step277EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step277EntryGvAfter [] []=some (s2Step277EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step277EntryGvBefore s2Step277EntryGvAfter s2Step277EntryGvAfter
    s2Step277EntryGvRow s2Step277EntryGvOut 154 s2Step277EntryGvFresh [] [] []
    (growRow 771 s2Step277EntryGvFresh) ([]) s2Step277EntryGv_Incoming s2Step277EntryGv_checked h4 s2Step277EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step277EntryFvBefore s2Step277EntryFvAfter s2Step277EntryGvAfter
    s2Step277EntryFvRow s2Step277EntryFvOut 154 s2Step277EntryFvFresh [(s2Step277EntryGvRow,154)] [s2Step277EntryGvFresh] [s2Step277EntryGvOut]
    (growRow 770 s2Step277EntryFvFresh) ((growRow 771 s2Step277EntryGvFresh ++ [])) s2Step277EntryFv_Incoming s2Step277EntryFv_checked h3 s2Step277EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step277EntryGBefore s2Step277EntryGAfter s2Step277EntryGvAfter
    s2Step277EntryGRow s2Step277EntryGOut 132 s2Step277EntryGFresh [(s2Step277EntryFvRow,154),(s2Step277EntryGvRow,154)] [s2Step277EntryFvFresh,s2Step277EntryGvFresh] [s2Step277EntryFvOut,s2Step277EntryGvOut]
    (growRow 769 s2Step277EntryGFresh) ((growRow 770 s2Step277EntryFvFresh ++ (growRow 771 s2Step277EntryGvFresh ++ []))) s2Step277EntryG_Incoming s2Step277EntryG_checked h2 s2Step277EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step277EntryFBefore s2Step277EntryFAfter s2Step277EntryGvAfter
    s2Step277EntryFRow s2Step277EntryFOut 132 s2Step277EntryFFresh [(s2Step277EntryGRow,132),(s2Step277EntryFvRow,154),(s2Step277EntryGvRow,154)] [s2Step277EntryGFresh,s2Step277EntryFvFresh,s2Step277EntryGvFresh] [s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut]
    (growRow 768 s2Step277EntryFFresh) ((growRow 769 s2Step277EntryGFresh ++ (growRow 770 s2Step277EntryFvFresh ++ (growRow 771 s2Step277EntryGvFresh ++ [])))) s2Step277EntryF_Incoming s2Step277EntryF_checked h1 s2Step277EntryF_Outgoing
  exact h0

private theorem s2Step277EntryBank_checked : compileHmrBankResizeLog .entry s2Step277EntryFBefore ⟨s2Step277EntryFRow,s2Step277EntryGRow,s2Step277EntryFvRow,s2Step277EntryGvRow⟩ ⟨132,132,154,154⟩ [s2Step277EntryFFresh,s2Step277EntryGFresh,s2Step277EntryFvFresh,s2Step277EntryGvFresh]=
    some (s2Step277EntryGvAfter,⟨s2Step277EntryFOut,s2Step277EntryGOut,s2Step277EntryFvOut,s2Step277EntryGvOut⟩,(growRow 768 s2Step277EntryFFresh ++ (growRow 769 s2Step277EntryGFresh ++ (growRow 770 s2Step277EntryFvFresh ++ (growRow 771 s2Step277EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step277EntryBank_rows]
  rfl

private def s2Step277ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277ExitFBefore : Arena := s2Step277ExitGAfter

private def s2Step277ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 791],768⟩

private def s2Step277ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 788],770⟩

private def s2Step277ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 841],769⟩

private def s2Step277ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 815, 839],771⟩

private theorem s2Step277ExitBank_incomingDistinct : ([s2Step277ExitGRow,s2Step277ExitFRow,s2Step277ExitFvRow,s2Step277ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277ExitF_Incoming : rowsOwned s2Step277ExitFBefore [s2Step277ExitFRow,s2Step277ExitFvRow,s2Step277ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277ExitGRow,s2Step277ExitFRow,s2Step277ExitFvRow,s2Step277ExitGvRow] 1 s2Step277ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277ExitBank_outgoingOwned : rowsOwned s2Step277ExitGvAfter [s2Step277ExitGOut,s2Step277ExitFOut,s2Step277ExitFvOut,s2Step277ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step277ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277ExitF_Outgoing : rowsOwned s2Step277ExitGvAfter [s2Step277ExitFOut,s2Step277ExitFvOut,s2Step277ExitGvOut] :=
  hmrRows_owned_drop s2Step277ExitGvAfter [s2Step277ExitGOut,s2Step277ExitFOut,s2Step277ExitFvOut,s2Step277ExitGvOut] 1 s2Step277ExitBank_outgoingOwned

private theorem s2Step277ExitF_distinct : (s2Step277ExitFRow.sign::s2Step277ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277ExitF_owned : (s2Step277ExitFRow.sign::s2Step277ExitFRow.payload).toFinset⊆s2Step277ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277ExitF_retired : s2Step277ExitFBefore.retireSet s2Step277ExitFExtra.toFinset=s2Step277ExitFAfter := by
  unfold Arena.retireSet s2Step277ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step277ExitFBefore,s2Step277ExitGAfter,s2Step277ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step277ExitF_checked : planRowResizeLog s2Step277ExitFBefore s2Step277ExitFRow 132 []=
    some (s2Step277ExitFAfter,s2Step277ExitFOut,shrinkRow 768 s2Step277ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step277ExitFBefore s2Step277ExitFRow 132 s2Step277ExitF_distinct s2Step277ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step277ExitFRow.payload.take 132) s2Step277ExitFRow.sign=s2Step277ExitFOut := by decide +kernel
  have hi : s2Step277ExitFRow.payload.drop 132=s2Step277ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step277ExitF_retired] at result
  exact result

private def s2Step277ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277ExitFvBefore : Arena := s2Step277ExitFAfter

private theorem s2Step277ExitFv_Incoming : rowsOwned s2Step277ExitFvBefore [s2Step277ExitFvRow,s2Step277ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277ExitGRow,s2Step277ExitFRow,s2Step277ExitFvRow,s2Step277ExitGvRow] 2 s2Step277ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277ExitFv_Outgoing : rowsOwned s2Step277ExitGvAfter [s2Step277ExitFvOut,s2Step277ExitGvOut] :=
  hmrRows_owned_drop s2Step277ExitGvAfter [s2Step277ExitGOut,s2Step277ExitFOut,s2Step277ExitFvOut,s2Step277ExitGvOut] 2 s2Step277ExitBank_outgoingOwned

private theorem s2Step277ExitFv_distinct : (s2Step277ExitFvRow.sign::s2Step277ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277ExitFv_owned : (s2Step277ExitFvRow.sign::s2Step277ExitFvRow.payload).toFinset⊆s2Step277ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277ExitFv_retired : s2Step277ExitFvBefore.retireSet s2Step277ExitFvExtra.toFinset=s2Step277ExitFvAfter := by
  unfold Arena.retireSet s2Step277ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step277ExitFvBefore,s2Step277ExitFAfter,s2Step277ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step277ExitFv_checked : planRowResizeLog s2Step277ExitFvBefore s2Step277ExitFvRow 154 []=
    some (s2Step277ExitFvAfter,s2Step277ExitFvOut,shrinkRow 770 s2Step277ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step277ExitFvBefore s2Step277ExitFvRow 154 s2Step277ExitFv_distinct s2Step277ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step277ExitFvRow.payload.take 154) s2Step277ExitFvRow.sign=s2Step277ExitFvOut := by decide +kernel
  have hi : s2Step277ExitFvRow.payload.drop 154=s2Step277ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step277ExitFv_retired] at result
  exact result

private def s2Step277ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step277ExitG_Incoming : rowsOwned s2Step277ExitGBefore [s2Step277ExitGRow,s2Step277ExitFRow,s2Step277ExitFvRow,s2Step277ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277ExitGRow,s2Step277ExitFRow,s2Step277ExitFvRow,s2Step277ExitGvRow] 0 s2Step277ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277ExitG_Outgoing : rowsOwned s2Step277ExitGvAfter [s2Step277ExitGOut,s2Step277ExitFOut,s2Step277ExitFvOut,s2Step277ExitGvOut] :=
  hmrRows_owned_drop s2Step277ExitGvAfter [s2Step277ExitGOut,s2Step277ExitFOut,s2Step277ExitFvOut,s2Step277ExitGvOut] 0 s2Step277ExitBank_outgoingOwned

private theorem s2Step277ExitG_distinct : (s2Step277ExitGRow.sign::s2Step277ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277ExitG_owned : (s2Step277ExitGRow.sign::s2Step277ExitGRow.payload).toFinset⊆s2Step277ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277ExitG_retired : s2Step277ExitGBefore.retireSet s2Step277ExitGExtra.toFinset=s2Step277ExitGAfter := by
  unfold Arena.retireSet s2Step277ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step277ExitGBefore,s2Step277ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step277ExitG_checked : planRowResizeLog s2Step277ExitGBefore s2Step277ExitGRow 132 []=
    some (s2Step277ExitGAfter,s2Step277ExitGOut,shrinkRow 769 s2Step277ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step277ExitGBefore s2Step277ExitGRow 132 s2Step277ExitG_distinct s2Step277ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step277ExitGRow.payload.take 132) s2Step277ExitGRow.sign=s2Step277ExitGOut := by decide +kernel
  have hi : s2Step277ExitGRow.payload.drop 132=s2Step277ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step277ExitG_retired] at result
  exact result

private def s2Step277ExitGvBefore : Arena := s2Step277ExitFvAfter

private theorem s2Step277ExitGv_Incoming : rowsOwned s2Step277ExitGvBefore [s2Step277ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277ExitGRow,s2Step277ExitFRow,s2Step277ExitFvRow,s2Step277ExitGvRow] 3 s2Step277ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277ExitGv_Outgoing : rowsOwned s2Step277ExitGvAfter [s2Step277ExitGvOut] :=
  hmrRows_owned_drop s2Step277ExitGvAfter [s2Step277ExitGOut,s2Step277ExitFOut,s2Step277ExitFvOut,s2Step277ExitGvOut] 3 s2Step277ExitBank_outgoingOwned

private theorem s2Step277ExitGv_distinct : (s2Step277ExitGvRow.sign::s2Step277ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277ExitGv_owned : (s2Step277ExitGvRow.sign::s2Step277ExitGvRow.payload).toFinset⊆s2Step277ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277ExitGv_retired : s2Step277ExitGvBefore.retireSet s2Step277ExitGvExtra.toFinset=s2Step277ExitGvAfter := by
  unfold Arena.retireSet s2Step277ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step277ExitGvBefore,s2Step277ExitFvAfter,s2Step277ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step277ExitGv_checked : planRowResizeLog s2Step277ExitGvBefore s2Step277ExitGvRow 153 []=
    some (s2Step277ExitGvAfter,s2Step277ExitGvOut,shrinkRow 771 s2Step277ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step277ExitGvBefore s2Step277ExitGvRow 153 s2Step277ExitGv_distinct s2Step277ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step277ExitGvRow.payload.take 153) s2Step277ExitGvRow.sign=s2Step277ExitGvOut := by decide +kernel
  have hi : s2Step277ExitGvRow.payload.drop 153=s2Step277ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step277ExitGv_retired] at result
  exact result

private theorem s2Step277ExitBank_rows : planWindowRowsLog s2Step277ExitGBefore [(s2Step277ExitGRow,132),(s2Step277ExitFRow,132),(s2Step277ExitFvRow,154),(s2Step277ExitGvRow,153)] [[],[],[],[]]=
    some (s2Step277ExitGvAfter,[s2Step277ExitGOut,s2Step277ExitFOut,s2Step277ExitFvOut,s2Step277ExitGvOut],(shrinkRow 769 s2Step277ExitGExtra ++ (shrinkRow 768 s2Step277ExitFExtra ++ (shrinkRow 770 s2Step277ExitFvExtra ++ (shrinkRow 771 s2Step277ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step277ExitGvAfter [] []=some (s2Step277ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step277ExitGvBefore s2Step277ExitGvAfter s2Step277ExitGvAfter
    s2Step277ExitGvRow s2Step277ExitGvOut 153 [] [] [] []
    (shrinkRow 771 s2Step277ExitGvExtra) ([]) s2Step277ExitGv_Incoming s2Step277ExitGv_checked h4 s2Step277ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step277ExitFvBefore s2Step277ExitFvAfter s2Step277ExitGvAfter
    s2Step277ExitFvRow s2Step277ExitFvOut 154 [] [(s2Step277ExitGvRow,153)] [[]] [s2Step277ExitGvOut]
    (shrinkRow 770 s2Step277ExitFvExtra) ((shrinkRow 771 s2Step277ExitGvExtra ++ [])) s2Step277ExitFv_Incoming s2Step277ExitFv_checked h3 s2Step277ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step277ExitFBefore s2Step277ExitFAfter s2Step277ExitGvAfter
    s2Step277ExitFRow s2Step277ExitFOut 132 [] [(s2Step277ExitFvRow,154),(s2Step277ExitGvRow,153)] [[],[]] [s2Step277ExitFvOut,s2Step277ExitGvOut]
    (shrinkRow 768 s2Step277ExitFExtra) ((shrinkRow 770 s2Step277ExitFvExtra ++ (shrinkRow 771 s2Step277ExitGvExtra ++ []))) s2Step277ExitF_Incoming s2Step277ExitF_checked h2 s2Step277ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step277ExitGBefore s2Step277ExitGAfter s2Step277ExitGvAfter
    s2Step277ExitGRow s2Step277ExitGOut 132 [] [(s2Step277ExitFRow,132),(s2Step277ExitFvRow,154),(s2Step277ExitGvRow,153)] [[],[],[]] [s2Step277ExitFOut,s2Step277ExitFvOut,s2Step277ExitGvOut]
    (shrinkRow 769 s2Step277ExitGExtra) ((shrinkRow 768 s2Step277ExitFExtra ++ (shrinkRow 770 s2Step277ExitFvExtra ++ (shrinkRow 771 s2Step277ExitGvExtra ++ [])))) s2Step277ExitG_Incoming s2Step277ExitG_checked h1 s2Step277ExitG_Outgoing
  exact h0

private theorem s2Step277ExitBank_checked : compileHmrBankResizeLog .exit s2Step277ExitGBefore ⟨s2Step277ExitFRow,s2Step277ExitGRow,s2Step277ExitFvRow,s2Step277ExitGvRow⟩ ⟨132,132,154,153⟩ [[],[],[],[]]=
    some (s2Step277ExitGvAfter,⟨s2Step277ExitFOut,s2Step277ExitGOut,s2Step277ExitFvOut,s2Step277ExitGvOut⟩,(shrinkRow 769 s2Step277ExitGExtra ++ (shrinkRow 768 s2Step277ExitFExtra ++ (shrinkRow 770 s2Step277ExitFvExtra ++ (shrinkRow 771 s2Step277ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step277ExitBank_rows]
  rfl

private theorem s2Step277Add0_apart : Disjoint s2Step277Add0Arena.live s2Step277Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step277Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277Add0_card : s2Step277Add0Arena.live.card=899 := by
  decide +kernel

private theorem s2Step277Add0_borrowed : s2Step277Add0Arena.checkBorrow (hmrHybridCount s2Step277Add0Arena s2Step277Add0B.length) s2Step277Add0Work=some s2Step277Add0During := by
  have len : s2Step277Add0Work.length=hmrHybridCount s2Step277Add0Arena s2Step277Add0B.length := by
    rw [hmrHybridCount,s2Step277Add0_card]
    decide +kernel
  have nd : s2Step277Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step277Add0Arena s2Step277Add0During s2Step277Add0Work.toFinset s2Step277Add0_bounded s2Step277Add0_apart rfl

private theorem s2Step277Add0_distinct : (781::778::891::(s2Step277Add0A++s2Step277Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277Add0_owned : (781::778::891::(s2Step277Add0A++s2Step277Add0B)).toFinset⊆s2Step277Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step277Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277Add0_checked : compileHmrHybridCinLog s2Step277Add0Arena 778 781 891 s2Step277Add0A s2Step277Add0B s2Step277Add0Work=some s2Step277Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step277Add0Arena s2Step277Add0During 778 781 891 s2Step277Add0A s2Step277Add0B s2Step277Add0Work
    (by decide +kernel) (by decide +kernel) s2Step277Add0_distinct
    (fun q hq => s2Step277Add0_owned (List.mem_toFinset.mpr hq)) s2Step277Add0_borrowed

private theorem s2Step277Add1_apart : Disjoint s2Step277Add1Arena.live s2Step277Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step277Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277Add1_card : s2Step277Add1Arena.live.card=899 := by
  decide +kernel

private theorem s2Step277Add1_borrowed : s2Step277Add1Arena.checkBorrow (hmrHybridCount s2Step277Add1Arena s2Step277Add1B.length) s2Step277Add1Work=some s2Step277Add1During := by
  have len : s2Step277Add1Work.length=hmrHybridCount s2Step277Add1Arena s2Step277Add1B.length := by
    rw [hmrHybridCount,s2Step277Add1_card]
    decide +kernel
  have nd : s2Step277Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step277Add1Arena s2Step277Add1During s2Step277Add1Work.toFinset s2Step277Add1_bounded s2Step277Add1_apart rfl

private theorem s2Step277Add1_distinct : (781::778::891::(s2Step277Add1A++s2Step277Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277Add1_owned : (781::778::891::(s2Step277Add1A++s2Step277Add1B)).toFinset⊆s2Step277Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step277Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277Add1_checked : compileHmrHybridCinLog s2Step277Add1Arena 778 781 891 s2Step277Add1A s2Step277Add1B s2Step277Add1Work=some s2Step277Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step277Add1Arena s2Step277Add1During 778 781 891 s2Step277Add1A s2Step277Add1B s2Step277Add1Work
    (by decide +kernel) (by decide +kernel) s2Step277Add1_distinct
    (fun q hq => s2Step277Add1_owned (List.mem_toFinset.mpr hq)) s2Step277Add1_borrowed

private theorem s2Step277F4_apart : Disjoint (s2Step277Add0A++s2Step277Add0B).toFinset (s2Step277Add1A++s2Step277Add1B).toFinset := by
  have nd : ((s2Step277Add0A++s2Step277Add0B)++(s2Step277Add1A++s2Step277Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step277F4_carry : s2Step277F4FlagArena.checkBorrow 1 [891]=some s2Step277Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step277F4FlagArena,s2Step277HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step277F4FlagArena,s2Step277HeadFvAfter,s2Step277Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step277F4_distinct : (844::778::781::891::((s2Step277Add0A++s2Step277Add1A)++(s2Step277Add0B++s2Step277Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277F4_flag : s2Step277HeadFvAfter.checkBorrow 1 [781]=some s2Step277F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step277HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step277F4_owned : (844::778::((s2Step277Add0A++s2Step277Add1A)++(s2Step277Add0B++s2Step277Add1B))).toFinset⊆s2Step277HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step277HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277F4_checked : compileHmrHybridF4Log s2Step277HeadFvAfter 844 778 s2Step277Add0A s2Step277Add0B s2Step277Add1A s2Step277Add1B [781] [891] s2Step277Add0Work s2Step277Add1Work=some s2Step277F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step277HeadFvAfter s2Step277F4FlagArena s2Step277Add0Arena s2Step277Add0During s2Step277Add1During 844 778
    s2Step277Add0A s2Step277Add0B s2Step277Add1A s2Step277Add1B [781] [891] s2Step277Add0Work s2Step277Add1Work
    (fun q hq => s2Step277F4_owned (List.mem_toFinset.mpr hq)) s2Step277F4_flag s2Step277F4_carry
    s2Step277F4_distinct s2Step277F4_apart s2Step277Add0_checked s2Step277Add1_checked

private theorem s2Step277Front_branch : s2Step277FrontSigmaArena.checkBorrow 1 [778]=some s2Step277HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step277FrontSigmaArena,s2Step277EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step277FrontSigmaArena,s2Step277EntryGvAfter,s2Step277HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step277Front_entry : HmrFrontEntryValid s2Step277EntryFBefore s2Step277FrontBank 132 154 ⟨132,132,154,153⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step277FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step277EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step277EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step277FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step277Front_sigma : s2Step277EntryGvAfter.checkBorrow 1 [844]=some s2Step277FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step277EntryGvAfter,arenaWires]
  · rfl

private def s2Step277HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277HeadFBefore : Arena := s2Step277HeadGAfter

private def s2Step277HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step277HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩

private def s2Step277HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩

private def s2Step277HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 815],771⟩

private theorem s2Step277HeadBank_incomingDistinct : ([s2Step277HeadGRow,s2Step277HeadFRow,s2Step277HeadGvRow,s2Step277HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277HeadF_Incoming : rowsOwned s2Step277HeadFBefore [s2Step277HeadFRow,s2Step277HeadGvRow,s2Step277HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277HeadGRow,s2Step277HeadFRow,s2Step277HeadGvRow,s2Step277HeadFvRow] 1 s2Step277HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277HeadBank_outgoingOwned : rowsOwned s2Step277HeadFvAfter [s2Step277HeadGOut,s2Step277HeadFOut,s2Step277HeadGvOut,s2Step277HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step277HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277HeadF_Outgoing : rowsOwned s2Step277HeadFvAfter [s2Step277HeadFOut,s2Step277HeadGvOut,s2Step277HeadFvOut] :=
  hmrRows_owned_drop s2Step277HeadFvAfter [s2Step277HeadGOut,s2Step277HeadFOut,s2Step277HeadGvOut,s2Step277HeadFvOut] 1 s2Step277HeadBank_outgoingOwned

private theorem s2Step277HeadF_distinct : (s2Step277HeadFRow.sign::s2Step277HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277HeadF_owned : (s2Step277HeadFRow.sign::s2Step277HeadFRow.payload).toFinset⊆s2Step277HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277HeadF_reserved : s2Step277HeadFBefore.reserve s2Step277HeadFFresh.toFinset=some s2Step277HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step277HeadFFresh,arenaWires]
  · norm_num [s2Step277HeadFBefore,s2Step277HeadGAfter,s2Step277HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step277HeadFAfter,s2Step277HeadFBefore,s2Step277HeadGAfter,s2Step277HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step277HeadF_checked : planRowResizeLog s2Step277HeadFBefore s2Step277HeadFRow 133 s2Step277HeadFFresh=
    some (s2Step277HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 791],768⟩,growRow 768 s2Step277HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step277HeadFBefore s2Step277HeadFAfter s2Step277HeadFRow 133 s2Step277HeadFFresh
    s2Step277HeadF_distinct s2Step277HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step277HeadF_reserved
  have rowEq : WindowRow.mk (s2Step277HeadFRow.payload++s2Step277HeadFFresh) s2Step277HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 791],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step277HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step277HeadFvBefore : Arena := s2Step277HeadGvAfter

private theorem s2Step277HeadFv_Incoming : rowsOwned s2Step277HeadFvBefore [s2Step277HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277HeadGRow,s2Step277HeadFRow,s2Step277HeadGvRow,s2Step277HeadFvRow] 3 s2Step277HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277HeadFv_Outgoing : rowsOwned s2Step277HeadFvAfter [s2Step277HeadFvOut] :=
  hmrRows_owned_drop s2Step277HeadFvAfter [s2Step277HeadGOut,s2Step277HeadFOut,s2Step277HeadGvOut,s2Step277HeadFvOut] 3 s2Step277HeadBank_outgoingOwned

private theorem s2Step277HeadFv_distinct : (s2Step277HeadFvRow.sign::s2Step277HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277HeadFv_owned : (s2Step277HeadFvRow.sign::s2Step277HeadFvRow.payload).toFinset⊆s2Step277HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277HeadFv_reserved : s2Step277HeadFvBefore.reserve s2Step277HeadFvFresh.toFinset=some s2Step277HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step277HeadFvFresh,arenaWires]
  · norm_num [s2Step277HeadFvBefore,s2Step277HeadGvAfter,s2Step277HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step277HeadFvAfter,s2Step277HeadFvBefore,s2Step277HeadGvAfter,s2Step277HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step277HeadFv_checked : planRowResizeLog s2Step277HeadFvBefore s2Step277HeadFvRow 155 s2Step277HeadFvFresh=
    some (s2Step277HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 788],770⟩,growRow 770 s2Step277HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step277HeadFvBefore s2Step277HeadFvAfter s2Step277HeadFvRow 155 s2Step277HeadFvFresh
    s2Step277HeadFv_distinct s2Step277HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step277HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step277HeadFvRow.payload++s2Step277HeadFvFresh) s2Step277HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 788],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step277HeadG_Incoming : rowsOwned s2Step277HeadGBefore [s2Step277HeadGRow,s2Step277HeadFRow,s2Step277HeadGvRow,s2Step277HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277HeadGRow,s2Step277HeadFRow,s2Step277HeadGvRow,s2Step277HeadFvRow] 0 s2Step277HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277HeadG_Outgoing : rowsOwned s2Step277HeadFvAfter [s2Step277HeadGOut,s2Step277HeadFOut,s2Step277HeadGvOut,s2Step277HeadFvOut] :=
  hmrRows_owned_drop s2Step277HeadFvAfter [s2Step277HeadGOut,s2Step277HeadFOut,s2Step277HeadGvOut,s2Step277HeadFvOut] 0 s2Step277HeadBank_outgoingOwned

private theorem s2Step277HeadG_distinct : (s2Step277HeadGRow.sign::s2Step277HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277HeadG_owned : (s2Step277HeadGRow.sign::s2Step277HeadGRow.payload).toFinset⊆s2Step277HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277HeadG_reserved : s2Step277HeadGBefore.reserve s2Step277HeadGFresh.toFinset=some s2Step277HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step277HeadGFresh,arenaWires]
  · norm_num [s2Step277HeadGBefore,s2Step277HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step277HeadGAfter,s2Step277HeadGBefore,s2Step277HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step277HeadG_checked : planRowResizeLog s2Step277HeadGBefore s2Step277HeadGRow 133 s2Step277HeadGFresh=
    some (s2Step277HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 841],769⟩,growRow 769 s2Step277HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step277HeadGBefore s2Step277HeadGAfter s2Step277HeadGRow 133 s2Step277HeadGFresh
    s2Step277HeadG_distinct s2Step277HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step277HeadG_reserved
  have rowEq : WindowRow.mk (s2Step277HeadGRow.payload++s2Step277HeadGFresh) s2Step277HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 841],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step277HeadGvBefore : Arena := s2Step277HeadFAfter

private theorem s2Step277HeadGv_Incoming : rowsOwned s2Step277HeadGvBefore [s2Step277HeadGvRow,s2Step277HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step277HeadGRow,s2Step277HeadFRow,s2Step277HeadGvRow,s2Step277HeadFvRow] 2 s2Step277HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step277HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step277HeadGv_Outgoing : rowsOwned s2Step277HeadFvAfter [s2Step277HeadGvOut,s2Step277HeadFvOut] :=
  hmrRows_owned_drop s2Step277HeadFvAfter [s2Step277HeadGOut,s2Step277HeadFOut,s2Step277HeadGvOut,s2Step277HeadFvOut] 2 s2Step277HeadBank_outgoingOwned

private theorem s2Step277HeadGv_distinct : (s2Step277HeadGvRow.sign::s2Step277HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step277HeadGv_owned : (s2Step277HeadGvRow.sign::s2Step277HeadGvRow.payload).toFinset⊆s2Step277HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step277HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step277HeadGv_reserved : s2Step277HeadGvBefore.reserve s2Step277HeadGvFresh.toFinset=some s2Step277HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step277HeadGvFresh,arenaWires]
  · norm_num [s2Step277HeadGvBefore,s2Step277HeadFAfter,s2Step277HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step277HeadGvAfter,s2Step277HeadGvBefore,s2Step277HeadFAfter,s2Step277HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step277HeadGv_checked : planRowResizeLog s2Step277HeadGvBefore s2Step277HeadGvRow 155 s2Step277HeadGvFresh=
    some (s2Step277HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 815, 839],771⟩,growRow 771 s2Step277HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step277HeadGvBefore s2Step277HeadGvAfter s2Step277HeadGvRow 155 s2Step277HeadGvFresh
    s2Step277HeadGv_distinct s2Step277HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step277HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step277HeadGvRow.payload++s2Step277HeadGvFresh) s2Step277HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 815, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step277HeadBank_rows : planWindowRowsLog s2Step277HeadGBefore [(s2Step277HeadGRow,133),(s2Step277HeadFRow,133),(s2Step277HeadGvRow,155),(s2Step277HeadFvRow,155)] [s2Step277HeadGFresh,s2Step277HeadFFresh,s2Step277HeadGvFresh,s2Step277HeadFvFresh]=
    some (s2Step277HeadFvAfter,[s2Step277HeadGOut,s2Step277HeadFOut,s2Step277HeadGvOut,s2Step277HeadFvOut],(growRow 769 s2Step277HeadGFresh ++ (growRow 768 s2Step277HeadFFresh ++ (growRow 771 s2Step277HeadGvFresh ++ (growRow 770 s2Step277HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step277HeadFvAfter [] []=some (s2Step277HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step277HeadFvBefore s2Step277HeadFvAfter s2Step277HeadFvAfter
    s2Step277HeadFvRow s2Step277HeadFvOut 155 s2Step277HeadFvFresh [] [] []
    (growRow 770 s2Step277HeadFvFresh) ([]) s2Step277HeadFv_Incoming s2Step277HeadFv_checked h4 s2Step277HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step277HeadGvBefore s2Step277HeadGvAfter s2Step277HeadFvAfter
    s2Step277HeadGvRow s2Step277HeadGvOut 155 s2Step277HeadGvFresh [(s2Step277HeadFvRow,155)] [s2Step277HeadFvFresh] [s2Step277HeadFvOut]
    (growRow 771 s2Step277HeadGvFresh) ((growRow 770 s2Step277HeadFvFresh ++ [])) s2Step277HeadGv_Incoming s2Step277HeadGv_checked h3 s2Step277HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step277HeadFBefore s2Step277HeadFAfter s2Step277HeadFvAfter
    s2Step277HeadFRow s2Step277HeadFOut 133 s2Step277HeadFFresh [(s2Step277HeadGvRow,155),(s2Step277HeadFvRow,155)] [s2Step277HeadGvFresh,s2Step277HeadFvFresh] [s2Step277HeadGvOut,s2Step277HeadFvOut]
    (growRow 768 s2Step277HeadFFresh) ((growRow 771 s2Step277HeadGvFresh ++ (growRow 770 s2Step277HeadFvFresh ++ []))) s2Step277HeadF_Incoming s2Step277HeadF_checked h2 s2Step277HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step277HeadGBefore s2Step277HeadGAfter s2Step277HeadFvAfter
    s2Step277HeadGRow s2Step277HeadGOut 133 s2Step277HeadGFresh [(s2Step277HeadFRow,133),(s2Step277HeadGvRow,155),(s2Step277HeadFvRow,155)] [s2Step277HeadFFresh,s2Step277HeadGvFresh,s2Step277HeadFvFresh] [s2Step277HeadFOut,s2Step277HeadGvOut,s2Step277HeadFvOut]
    (growRow 769 s2Step277HeadGFresh) ((growRow 768 s2Step277HeadFFresh ++ (growRow 771 s2Step277HeadGvFresh ++ (growRow 770 s2Step277HeadFvFresh ++ [])))) s2Step277HeadG_Incoming s2Step277HeadG_checked h1 s2Step277HeadG_Outgoing
  exact h0

private theorem s2Step277HeadBank_checked : compileHmrBankResizeLog .headroom s2Step277HeadGBefore ⟨s2Step277HeadFRow,s2Step277HeadGRow,s2Step277HeadFvRow,s2Step277HeadGvRow⟩ ⟨133,133,155,155⟩ [s2Step277HeadGFresh,s2Step277HeadFFresh,s2Step277HeadGvFresh,s2Step277HeadFvFresh]=
    some (s2Step277HeadFvAfter,⟨s2Step277HeadFOut,s2Step277HeadGOut,s2Step277HeadFvOut,s2Step277HeadGvOut⟩,(growRow 769 s2Step277HeadGFresh ++ (growRow 768 s2Step277HeadFFresh ++ (growRow 771 s2Step277HeadGvFresh ++ (growRow 770 s2Step277HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step277HeadBank_rows]
  rfl

private theorem s2Step277Front_checked : compileHmrSourceFrontLog s2Step277EntryFBefore s2Step277FrontBank 132 154 ⟨132,132,154,153⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step277FrontLog=some s2Step277FrontPlan := by
  have pairEq : s2Step277FrontPair=⟨s2Step277HeadFRow,s2Step277HeadGRow,s2Step277HeadFvRow,s2Step277HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step277FrontHead=⟨s2Step277ExitFRow,s2Step277ExitGRow,s2Step277ExitFvRow,s2Step277ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step277Add0A=s2Step277FrontHead.f.wires := by decide +kernel
  have gEq : s2Step277Add0B=s2Step277FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step277Add1A=s2Step277FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step277Add1B=s2Step277FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step277EntryFBefore s2Step277FrontBank 132 154 ⟨132,132,154,153⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step277FrontLog s2Step277FrontPlan
  · exact s2Step277Front_entry
  · exact s2Step277EntryBank_checked
  · exact s2Step277Front_sigma
  · rfl
  · exact s2Step277Front_branch
  · rfl
  · simpa only [s2Step277FrontPlan,pairEq] using s2Step277HeadBank_checked
  · simpa only [s2Step277FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step277F4_checked
  · exact s2Step277Counter_checked
  · rfl
  · simpa only [s2Step277FrontPlan,headEq] using s2Step277ExitBank_checked

private theorem s2Step277Complete_explicit_checked : compileHmrEarlyStepLog s2Step277EntryFBefore s2Step277FrontBank 132 154 ⟨132,132,154,153⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step277CompleteLog=some s2Step277CompletePlan := by
  let Q := s2Step277EarlyControlPlan
  have hq := s2Step277EarlyControl_plan_checked
  have fv1 : s2Step277CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step277CompleteOut.fv.payload[2]?.getD s2Step277CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step277CompleteOut.fv.payload[3]?.getD s2Step277CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step277CompleteOut.fv.payload[4]?.getD s2Step277CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step277EntryFBefore s2Step277EarlyControlArena s2Step277FrontBank 132 154 ⟨132,132,154,153⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step277CompleteLog s2Step277FrontPlan Q
    s2Step277Front_checked s2Step277Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step277Complete_owned s2Step277Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step277EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 s2Step277CompleteOut.fv.second (s2Step277CompleteOut.fv.payload[2]?.getD s2Step277CompleteOut.fv.sign) (s2Step277CompleteOut.fv.payload[3]?.getD s2Step277CompleteOut.fv.sign) (s2Step277CompleteOut.fv.payload[4]?.getD s2Step277CompleteOut.fv.sign) 778 53 s2Step277EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep277Arena : Arena := s2Step277EntryFBefore
def s2PrivateStep277Bank : WindowBank := s2Step277FrontBank
def s2PrivateStep277Spec : HmrSourceWalkStepLog := ⟨132,154,⟨132,132,154,153⟩,53,.early s2Step277CompleteLog⟩
def s2PrivateStep277Plan : HmrSourceStepPlan := .early s2Step277CompletePlan
theorem s2PrivateStep277_source : s2PrivateStep277Spec=s2ObservedLogs272[5] := rfl
theorem s2PrivateStep277_checked : compileHmrSourceStepLog s2PrivateStep277Arena s2PrivateStep277Bank
    s2PrivateStep277Spec.fgWidth s2PrivateStep277Spec.vWidth s2PrivateStep277Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]
    6 498 277 s2PrivateStep277Spec.need none s2PrivateStep277Spec.log=some s2PrivateStep277Plan := by
  change compileHmrSourceStepLog s2Step277EntryFBefore s2Step277FrontBank 132 154 ⟨132,132,154,153⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 6 498 277 53 none (.early s2Step277CompleteLog)=some (.early s2Step277CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 277<498)]
  rw [s2Step277Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
