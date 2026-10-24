import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep274
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

private def s2Step276CompleteMoves : List (Wire × Wire) := [(778,644)]

private def s2Step276EarlyControlLog : HmrEarlyControlLog := ⟨[778, 841, 791, 839, 788],[781],[891],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step276FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [839], [], []],[[788], [791], [841], [789]],[[], [], [], []]⟩,[844],[815],[781],[891],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 891, 830, 800]⟩

private def s2Step276CompleteLog : HmrEarlyStepLog := ⟨s2Step276FrontLog,s2Step276CompleteMoves,s2Step276EarlyControlLog⟩

private def s2Step276ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step276ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩

private def s2Step276ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩

private def s2Step276ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩

private def s2Step276FrontOut : WindowBank := ⟨s2Step276ExitFOut,s2Step276ExitGOut,s2Step276ExitFvOut,s2Step276ExitGvOut⟩

private def s2Step276CompleteOut : WindowBank := s2Step276FrontOut.repacked s2Step276CompleteMoves

private def s2Step276EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step276EarlyControlPositiveArena,[781],s2Step276EarlyControlEqualityArena,[891],⟨⟨844,false⟩,[⟨⟨781,false⟩,891⟩]⟩⟩

private def s2Step276EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨774,false⟩,841⟩,⟨⟨775,false⟩,791⟩,⟨⟨776,false⟩,839⟩,⟨⟨777,false⟩,788⟩]⟩

private def s2Step276EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step276EarlyControlZeroArena,s2Step276EarlyControlZeroPlan,s2Step276EarlyControlClassPlan,s2Step276EarlyControlFlagArena,s2Step276EarlyControlFittedArena,s2Step276EarlyControlHistoryArena,s2Step276EarlyControlSigmaArena,s2Step276EarlyControlOutputArena,s2Step276EarlyControlLog⟩

private def s2Step276CounterWork : List Wire := [781, 891, 830, 800]

private theorem s2Step276Counter_bounded : s2Step276CounterWork.toFinset⊆arenaWires := by norm_num [s2Step276CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step276HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276CounterDuring : Arena := ⟨s2Step276HeadFvAfter.live∪s2Step276CounterWork.toFinset,Finset.union_subset s2Step276HeadFvAfter.bounded s2Step276Counter_bounded⟩

private def s2Step276EntryFFresh : List Wire := []

private def s2Step276EntryFvFresh : List Wire := []

private def s2Step276EntryGFresh : List Wire := [839]

private def s2Step276EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EntryGvAfter : Arena := s2Step276EntryGAfter

private def s2Step276EntryGvFresh : List Wire := []

private def s2Step276ExitFExtra : List Wire := [644, 791]

private def s2Step276ExitGExtra : List Wire := [839, 788]

private def s2Step276ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<644) ∨ (645≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276ExitGvExtra : List Wire := [841]

private def s2Step276Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step276Add0_bounded : s2Step276Add0Work.toFinset⊆arenaWires := by
  have h : s2Step276Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step276Add0During : Arena := ⟨s2Step276Add0Arena.live∪s2Step276Add0Work.toFinset,Finset.union_subset s2Step276Add0Arena.bounded s2Step276Add0_bounded⟩

private def s2Step276Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step276Add1_bounded : s2Step276Add1Work.toFinset⊆arenaWires := by
  have h : s2Step276Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step276Add1During : Arena := ⟨s2Step276Add1Arena.live∪s2Step276Add1Work.toFinset,Finset.union_subset s2Step276Add1Arena.bounded s2Step276Add1_bounded⟩

private def s2Step276F4FlagArena : Arena := ⟨s2Step276HeadFvAfter.live∪{781},Finset.union_subset s2Step276HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step276F4Plan : HmrHybridF4Plan := ⟨s2Step276F4FlagArena,[781],s2Step276Add0Arena,[891],s2Step276Add0During,s2Step276Add0Work,s2Step276Add1During,s2Step276Add1Work⟩

private def s2Step276HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 791],768⟩

private def s2Step276HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩

private def s2Step276HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839, 788],769⟩

private def s2Step276HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 841],771⟩

private def s2Step276FrontHead : WindowBank := ⟨s2Step276HeadFOut,s2Step276HeadGOut,s2Step276HeadFvOut,s2Step276HeadGvOut⟩

private def s2Step276EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩

private def s2Step276EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩

private def s2Step276EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839],769⟩

private def s2Step276EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩

private def s2Step276FrontPair : WindowBank := ⟨s2Step276EntryFOut,s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut⟩

private def s2Step276FrontSigmaArena : Arena := ⟨s2Step276EntryGvAfter.live∪{844},Finset.union_subset s2Step276EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step276HeadFFresh : List Wire := [791]

private def s2Step276HeadFvFresh : List Wire := [789]

private def s2Step276HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276HeadGFresh : List Wire := [788]

private def s2Step276HeadGvFresh : List Wire := [841]

private def s2Step276FrontPlan : HmrSourceFront := ⟨s2Step276EntryGvAfter,s2Step276FrontPair,(growRow 768 s2Step276EntryFFresh ++ (growRow 769 s2Step276EntryGFresh ++ (growRow 770 s2Step276EntryFvFresh ++ (growRow 771 s2Step276EntryGvFresh ++ [])))),s2Step276FrontSigmaArena,[844],s2Step276HeadGBefore,[815],
  s2Step276HeadFvAfter,s2Step276FrontHead,(growRow 769 s2Step276HeadGFresh ++ (growRow 768 s2Step276HeadFFresh ++ (growRow 771 s2Step276HeadGvFresh ++ (growRow 770 s2Step276HeadFvFresh ++ [])))),s2Step276F4Plan,s2Step276CounterDuring,s2Step276CounterWork,s2Step276ExitGvAfter,s2Step276FrontOut,(shrinkRow 769 s2Step276ExitGExtra ++ (shrinkRow 768 s2Step276ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step276ExitGvExtra ++ []))))⟩

private def s2Step276CompletePlan : HmrEarlyStepPlan := ⟨s2Step276FrontPlan,s2Step276EarlyControlArena,s2Step276EarlyControlPlan,s2Step276CompleteMoves⟩

private theorem s2Step276Complete_apart : List.Disjoint (s2Step276CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  have nd : ((s2Step276CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step276Complete_owned : (s2Step276CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step276EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step276CompleteMoveArena : Arena := ⟨s2Step276ExitGvAfter.live∪{644},Finset.union_subset s2Step276ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step276Complete_repack : s2Step276ExitGvAfter.checkRepack s2Step276CompleteMoves=some s2Step276EarlyControlArena := by
  have owned : 778∈s2Step276ExitGvAfter.live := by norm_num [s2Step276ExitGvAfter,arenaWires]
  have reserve : s2Step276ExitGvAfter.reserve {644}=some s2Step276CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step276ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step276CompleteMoveArena.retireSet {778}=s2Step276EarlyControlArena := by
    unfold Arena.retireSet s2Step276EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step276CompleteMoveArena,s2Step276ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step276CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step276CompleteMoveArena.retireSet {778}).checkRepack []=some s2Step276EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step276EarlyControl_branchOwned : ([815] : List Wire).toFinset⊆s2Step276EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_branch : compileHmrBranchRetirement s2Step276EarlyControlSigmaArena 815=some s2Step276EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step276EarlyControl_branchOwned
  · ext q
    simp [s2Step276EarlyControlOutputArena,s2Step276EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step276EarlyControl_classEqualityBorrow : s2Step276EarlyControlPositiveArena.checkBorrow (([844, 781] : List Wire).length-1) s2Step276EarlyControlLog.classWork=some s2Step276EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step276EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step276EarlyControlEqualityArena,s2Step276EarlyControlPositiveArena,s2Step276EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step276EarlyControl_classEqualityOwned : ([844, 781] : List Wire).toFinset⊆s2Step276EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_classEquality : compileHmrEqualityLog s2Step276EarlyControlPositiveArena [844, 781] 0 s2Step276EarlyControlLog.classWork=some (s2Step276EarlyControlEqualityArena,s2Step276EarlyControlLog.classWork,s2Step276EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step276EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step276EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step276EarlyControl_classOwned : ([777, 788, 844] : List Wire).toFinset⊆s2Step276EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_positiveBorrow : s2Step276EarlyControlZeroArena.checkBorrow (1) s2Step276EarlyControlLog.positiveWork=some s2Step276EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step276EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step276EarlyControlPositiveArena,s2Step276EarlyControlZeroArena,s2Step276EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step276EarlyControl_class : compileHmrSourceClassLog s2Step276EarlyControlZeroArena false 777 s2Step276EarlyControlZeroPlan.top 0 844 s2Step276EarlyControlLog.positiveWork s2Step276EarlyControlLog.classWork=some s2Step276EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step276EarlyControlClassPlan s2Step276EarlyControlZeroArena false 777 s2Step276EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step276EarlyControl_classOwned
  · exact s2Step276EarlyControl_positiveBorrow
  · exact s2Step276EarlyControl_classEquality

private theorem s2Step276EarlyControl_entryRecordOwned : ([815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step276EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step276EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_fitBorrow : s2Step276EarlyControlFlagArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step276EarlyControlLog.recordFresh=some s2Step276EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step276EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step276EarlyControlFittedArena,s2Step276EarlyControlFlagArena,s2Step276EarlyControlLog,arenaWires]

private theorem s2Step276EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step276EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_fit : compileHmrRecordGrowLog s2Step276EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step276EarlyControlLog.recordFresh=some s2Step276EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step276EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step276EarlyControl_fitBorrow

private theorem s2Step276EarlyControl_flagsBorrow : s2Step276EarlyControlEqualityArena.checkBorrow (6) s2Step276EarlyControlLog.flagWork=some s2Step276EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step276EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step276EarlyControlFlagArena,s2Step276EarlyControlEqualityArena,s2Step276EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step276EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s2Step276EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_flags : compileHmrFlagsLog s2Step276EarlyControlClassPlan.equalityArena s2Step276EarlyControlClassPlan.equality.top 253 252 251 s2Step276EarlyControlLog.flagWork=some s2Step276EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step276EarlyControl_flagsOwned⟩
  · exact s2Step276EarlyControl_flagsBorrow

private theorem s2Step276EarlyControl_historyBorrow : s2Step276EarlyControlArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step276EarlyControlLog.recordFresh=some s2Step276EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step276EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step276EarlyControlHistoryArena,s2Step276EarlyControlArena,s2Step276EarlyControlLog,arenaWires]

private theorem s2Step276EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step276EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_history : compileHmrRecordGrowLog s2Step276EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step276EarlyControlLog.recordFresh=some s2Step276EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step276EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step276EarlyControl_historyBorrow

private theorem s2Step276EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step276EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step276EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_sigmaRelease : s2Step276EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step276EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step276EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step276EarlyControlSigmaArena,s2Step276EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step276EarlyControl_sigma : compileHmrSigmaDropLog s2Step276EarlyControlHistoryArena false 0 0 254 844 []=some s2Step276EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step276EarlyControl_sigmaOwned⟩
  · exact s2Step276EarlyControl_sigmaRelease

private theorem s2Step276EarlyControl_zeroBorrow : s2Step276EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step276EarlyControlLog.zeroWork=some s2Step276EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step276EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step276EarlyControlZeroArena,s2Step276EarlyControlArena,s2Step276EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step276EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step276EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step276EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EarlyControl_zero : compileHmrEqualityLog s2Step276EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step276EarlyControlLog.zeroWork=some (s2Step276EarlyControlZeroArena,s2Step276EarlyControlLog.zeroWork,s2Step276EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step276EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step276EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step276EarlyControl_logged : s2Step276EarlyControlPlan.Logged s2Step276EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 815 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step276EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step276EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step276EarlyControl_zero
  · exact s2Step276EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step276EarlyControl_flags
  · exact s2Step276EarlyControl_fit
  · exact s2Step276EarlyControl_history
  · exact s2Step276EarlyControl_sigma
  · exact s2Step276EarlyControl_branch

private theorem s2Step276EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step276EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 815 53 s2Step276EarlyControlLog=some s2Step276EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step276EarlyControlPlan s2Step276EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 815 53 s2Step276EarlyControl_logged

private def s2Step276EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩

private def s2Step276EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩

private def s2Step276EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩

private def s2Step276EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩

private def s2Step276FrontBank : WindowBank := ⟨s2Step276EntryFRow,s2Step276EntryGRow,s2Step276EntryFvRow,s2Step276EntryGvRow⟩

private def s2Step276Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 791, 768]

private def s2Step276Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839, 788, 769]

private def s2Step276Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 770]

private def s2Step276Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 841, 771]

private theorem s2Step276Counter_apart : Disjoint s2Step276HeadFvAfter.live s2Step276CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step276HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276Counter_borrowed : s2Step276HeadFvAfter.checkBorrow 4 s2Step276CounterWork=some s2Step276CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step276HeadFvAfter s2Step276CounterDuring s2Step276CounterWork.toFinset s2Step276Counter_bounded s2Step276Counter_apart rfl

private theorem s2Step276Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step276HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step276HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276Counter_checked : compileHmrCounterStepLog s2Step276HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step276CounterWork=some s2Step276CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step276HeadFvAfter.live := fun q hq => s2Step276Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step276Counter_borrowed

private def s2Step276EntryFAfter : Arena := s2Step276EntryFBefore

private theorem s2Step276EntryBank_incomingDistinct : ([s2Step276EntryFRow,s2Step276EntryGRow,s2Step276EntryFvRow,s2Step276EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276EntryF_Incoming : rowsOwned s2Step276EntryFBefore [s2Step276EntryFRow,s2Step276EntryGRow,s2Step276EntryFvRow,s2Step276EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276EntryFRow,s2Step276EntryGRow,s2Step276EntryFvRow,s2Step276EntryGvRow] 0 s2Step276EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276EntryBank_outgoingOwned : rowsOwned s2Step276EntryGvAfter [s2Step276EntryFOut,s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step276EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276EntryF_Outgoing : rowsOwned s2Step276EntryGvAfter [s2Step276EntryFOut,s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut] :=
  hmrRows_owned_drop s2Step276EntryGvAfter [s2Step276EntryFOut,s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut] 0 s2Step276EntryBank_outgoingOwned

private theorem s2Step276EntryF_distinct : (s2Step276EntryFRow.sign::s2Step276EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276EntryF_owned : (s2Step276EntryFRow.sign::s2Step276EntryFRow.payload).toFinset⊆s2Step276EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EntryF_reserved : s2Step276EntryFBefore.reserve s2Step276EntryFFresh.toFinset=some s2Step276EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step276EntryFFresh,arenaWires]
  · norm_num [s2Step276EntryFBefore,s2Step276EntryFFresh,arenaWires]
  · simp only [s2Step276EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step276EntryF_checked : planRowResizeLog s2Step276EntryFBefore s2Step276EntryFRow 133 s2Step276EntryFFresh=
    some (s2Step276EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩,growRow 768 s2Step276EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step276EntryFBefore s2Step276EntryFAfter s2Step276EntryFRow 133 s2Step276EntryFFresh
    s2Step276EntryF_distinct s2Step276EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step276EntryF_reserved
  have rowEq : WindowRow.mk (s2Step276EntryFRow.payload++s2Step276EntryFFresh) s2Step276EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step276EntryFvAfter : Arena := s2Step276EntryGAfter

private def s2Step276EntryFvBefore : Arena := s2Step276EntryGAfter

private theorem s2Step276EntryFv_Incoming : rowsOwned s2Step276EntryFvBefore [s2Step276EntryFvRow,s2Step276EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276EntryFRow,s2Step276EntryGRow,s2Step276EntryFvRow,s2Step276EntryGvRow] 2 s2Step276EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276EntryFv_Outgoing : rowsOwned s2Step276EntryGvAfter [s2Step276EntryFvOut,s2Step276EntryGvOut] :=
  hmrRows_owned_drop s2Step276EntryGvAfter [s2Step276EntryFOut,s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut] 2 s2Step276EntryBank_outgoingOwned

private theorem s2Step276EntryFv_distinct : (s2Step276EntryFvRow.sign::s2Step276EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276EntryFv_owned : (s2Step276EntryFvRow.sign::s2Step276EntryFvRow.payload).toFinset⊆s2Step276EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EntryFv_reserved : s2Step276EntryFvBefore.reserve s2Step276EntryFvFresh.toFinset=some s2Step276EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step276EntryFvFresh,arenaWires]
  · norm_num [s2Step276EntryFvBefore,s2Step276EntryGAfter,s2Step276EntryFvFresh,arenaWires]
  · simp only [s2Step276EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step276EntryFv_checked : planRowResizeLog s2Step276EntryFvBefore s2Step276EntryFvRow 153 s2Step276EntryFvFresh=
    some (s2Step276EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩,growRow 770 s2Step276EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step276EntryFvBefore s2Step276EntryFvAfter s2Step276EntryFvRow 153 s2Step276EntryFvFresh
    s2Step276EntryFv_distinct s2Step276EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step276EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step276EntryFvRow.payload++s2Step276EntryFvFresh) s2Step276EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step276EntryGBefore : Arena := s2Step276EntryFBefore

private theorem s2Step276EntryG_Incoming : rowsOwned s2Step276EntryGBefore [s2Step276EntryGRow,s2Step276EntryFvRow,s2Step276EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276EntryFRow,s2Step276EntryGRow,s2Step276EntryFvRow,s2Step276EntryGvRow] 1 s2Step276EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276EntryG_Outgoing : rowsOwned s2Step276EntryGvAfter [s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut] :=
  hmrRows_owned_drop s2Step276EntryGvAfter [s2Step276EntryFOut,s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut] 1 s2Step276EntryBank_outgoingOwned

private theorem s2Step276EntryG_distinct : (s2Step276EntryGRow.sign::s2Step276EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276EntryG_owned : (s2Step276EntryGRow.sign::s2Step276EntryGRow.payload).toFinset⊆s2Step276EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EntryG_reserved : s2Step276EntryGBefore.reserve s2Step276EntryGFresh.toFinset=some s2Step276EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step276EntryGFresh,arenaWires]
  · norm_num [s2Step276EntryGBefore,s2Step276EntryFBefore,s2Step276EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step276EntryGAfter,s2Step276EntryGBefore,s2Step276EntryFBefore,s2Step276EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step276EntryG_checked : planRowResizeLog s2Step276EntryGBefore s2Step276EntryGRow 133 s2Step276EntryGFresh=
    some (s2Step276EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839],769⟩,growRow 769 s2Step276EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step276EntryGBefore s2Step276EntryGAfter s2Step276EntryGRow 133 s2Step276EntryGFresh
    s2Step276EntryG_distinct s2Step276EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step276EntryG_reserved
  have rowEq : WindowRow.mk (s2Step276EntryGRow.payload++s2Step276EntryGFresh) s2Step276EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step276EntryGvBefore : Arena := s2Step276EntryGAfter

private theorem s2Step276EntryGv_Incoming : rowsOwned s2Step276EntryGvBefore [s2Step276EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276EntryFRow,s2Step276EntryGRow,s2Step276EntryFvRow,s2Step276EntryGvRow] 3 s2Step276EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276EntryGv_Outgoing : rowsOwned s2Step276EntryGvAfter [s2Step276EntryGvOut] :=
  hmrRows_owned_drop s2Step276EntryGvAfter [s2Step276EntryFOut,s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut] 3 s2Step276EntryBank_outgoingOwned

private theorem s2Step276EntryGv_distinct : (s2Step276EntryGvRow.sign::s2Step276EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276EntryGv_owned : (s2Step276EntryGvRow.sign::s2Step276EntryGvRow.payload).toFinset⊆s2Step276EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276EntryGv_reserved : s2Step276EntryGvBefore.reserve s2Step276EntryGvFresh.toFinset=some s2Step276EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step276EntryGvFresh,arenaWires]
  · norm_num [s2Step276EntryGvBefore,s2Step276EntryGAfter,s2Step276EntryGvFresh,arenaWires]
  · simp only [s2Step276EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step276EntryGv_checked : planRowResizeLog s2Step276EntryGvBefore s2Step276EntryGvRow 153 s2Step276EntryGvFresh=
    some (s2Step276EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩,growRow 771 s2Step276EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step276EntryGvBefore s2Step276EntryGvAfter s2Step276EntryGvRow 153 s2Step276EntryGvFresh
    s2Step276EntryGv_distinct s2Step276EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step276EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step276EntryGvRow.payload++s2Step276EntryGvFresh) s2Step276EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step276EntryBank_rows : planWindowRowsLog s2Step276EntryFBefore [(s2Step276EntryFRow,133),(s2Step276EntryGRow,133),(s2Step276EntryFvRow,153),(s2Step276EntryGvRow,153)] [s2Step276EntryFFresh,s2Step276EntryGFresh,s2Step276EntryFvFresh,s2Step276EntryGvFresh]=
    some (s2Step276EntryGvAfter,[s2Step276EntryFOut,s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut],(growRow 768 s2Step276EntryFFresh ++ (growRow 769 s2Step276EntryGFresh ++ (growRow 770 s2Step276EntryFvFresh ++ (growRow 771 s2Step276EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step276EntryGvAfter [] []=some (s2Step276EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step276EntryGvBefore s2Step276EntryGvAfter s2Step276EntryGvAfter
    s2Step276EntryGvRow s2Step276EntryGvOut 153 s2Step276EntryGvFresh [] [] []
    (growRow 771 s2Step276EntryGvFresh) ([]) s2Step276EntryGv_Incoming s2Step276EntryGv_checked h4 s2Step276EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step276EntryFvBefore s2Step276EntryFvAfter s2Step276EntryGvAfter
    s2Step276EntryFvRow s2Step276EntryFvOut 153 s2Step276EntryFvFresh [(s2Step276EntryGvRow,153)] [s2Step276EntryGvFresh] [s2Step276EntryGvOut]
    (growRow 770 s2Step276EntryFvFresh) ((growRow 771 s2Step276EntryGvFresh ++ [])) s2Step276EntryFv_Incoming s2Step276EntryFv_checked h3 s2Step276EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step276EntryGBefore s2Step276EntryGAfter s2Step276EntryGvAfter
    s2Step276EntryGRow s2Step276EntryGOut 133 s2Step276EntryGFresh [(s2Step276EntryFvRow,153),(s2Step276EntryGvRow,153)] [s2Step276EntryFvFresh,s2Step276EntryGvFresh] [s2Step276EntryFvOut,s2Step276EntryGvOut]
    (growRow 769 s2Step276EntryGFresh) ((growRow 770 s2Step276EntryFvFresh ++ (growRow 771 s2Step276EntryGvFresh ++ []))) s2Step276EntryG_Incoming s2Step276EntryG_checked h2 s2Step276EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step276EntryFBefore s2Step276EntryFAfter s2Step276EntryGvAfter
    s2Step276EntryFRow s2Step276EntryFOut 133 s2Step276EntryFFresh [(s2Step276EntryGRow,133),(s2Step276EntryFvRow,153),(s2Step276EntryGvRow,153)] [s2Step276EntryGFresh,s2Step276EntryFvFresh,s2Step276EntryGvFresh] [s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut]
    (growRow 768 s2Step276EntryFFresh) ((growRow 769 s2Step276EntryGFresh ++ (growRow 770 s2Step276EntryFvFresh ++ (growRow 771 s2Step276EntryGvFresh ++ [])))) s2Step276EntryF_Incoming s2Step276EntryF_checked h1 s2Step276EntryF_Outgoing
  exact h0

private theorem s2Step276EntryBank_checked : compileHmrBankResizeLog .entry s2Step276EntryFBefore ⟨s2Step276EntryFRow,s2Step276EntryGRow,s2Step276EntryFvRow,s2Step276EntryGvRow⟩ ⟨133,133,153,153⟩ [s2Step276EntryFFresh,s2Step276EntryGFresh,s2Step276EntryFvFresh,s2Step276EntryGvFresh]=
    some (s2Step276EntryGvAfter,⟨s2Step276EntryFOut,s2Step276EntryGOut,s2Step276EntryFvOut,s2Step276EntryGvOut⟩,(growRow 768 s2Step276EntryFFresh ++ (growRow 769 s2Step276EntryGFresh ++ (growRow 770 s2Step276EntryFvFresh ++ (growRow 771 s2Step276EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step276EntryBank_rows]
  rfl

private def s2Step276ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<644) ∨ (645≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276ExitFBefore : Arena := s2Step276ExitGAfter

private def s2Step276ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 791],768⟩

private def s2Step276ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩

private def s2Step276ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839, 788],769⟩

private def s2Step276ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 841],771⟩

private theorem s2Step276ExitBank_incomingDistinct : ([s2Step276ExitGRow,s2Step276ExitFRow,s2Step276ExitFvRow,s2Step276ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276ExitF_Incoming : rowsOwned s2Step276ExitFBefore [s2Step276ExitFRow,s2Step276ExitFvRow,s2Step276ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276ExitGRow,s2Step276ExitFRow,s2Step276ExitFvRow,s2Step276ExitGvRow] 1 s2Step276ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276ExitBank_outgoingOwned : rowsOwned s2Step276ExitGvAfter [s2Step276ExitGOut,s2Step276ExitFOut,s2Step276ExitFvOut,s2Step276ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step276ExitGvAfter (fun q => (0≤q ∧ q<644) ∨ (645≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276ExitF_Outgoing : rowsOwned s2Step276ExitGvAfter [s2Step276ExitFOut,s2Step276ExitFvOut,s2Step276ExitGvOut] :=
  hmrRows_owned_drop s2Step276ExitGvAfter [s2Step276ExitGOut,s2Step276ExitFOut,s2Step276ExitFvOut,s2Step276ExitGvOut] 1 s2Step276ExitBank_outgoingOwned

private theorem s2Step276ExitF_distinct : (s2Step276ExitFRow.sign::s2Step276ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276ExitF_owned : (s2Step276ExitFRow.sign::s2Step276ExitFRow.payload).toFinset⊆s2Step276ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276ExitF_retired : s2Step276ExitFBefore.retireSet s2Step276ExitFExtra.toFinset=s2Step276ExitFAfter := by
  unfold Arena.retireSet s2Step276ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step276ExitFBefore,s2Step276ExitGAfter,s2Step276ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step276ExitF_checked : planRowResizeLog s2Step276ExitFBefore s2Step276ExitFRow 132 []=
    some (s2Step276ExitFAfter,s2Step276ExitFOut,shrinkRow 768 s2Step276ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step276ExitFBefore s2Step276ExitFRow 132 s2Step276ExitF_distinct s2Step276ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step276ExitFRow.payload.take 132) s2Step276ExitFRow.sign=s2Step276ExitFOut := by decide +kernel
  have hi : s2Step276ExitFRow.payload.drop 132=s2Step276ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step276ExitF_retired] at result
  exact result

private def s2Step276ExitFvAfter : Arena := s2Step276ExitFAfter

private def s2Step276ExitFvBefore : Arena := s2Step276ExitFAfter

private theorem s2Step276ExitFv_Incoming : rowsOwned s2Step276ExitFvBefore [s2Step276ExitFvRow,s2Step276ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276ExitGRow,s2Step276ExitFRow,s2Step276ExitFvRow,s2Step276ExitGvRow] 2 s2Step276ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276ExitFvBefore (fun q => (0≤q ∧ q<644) ∨ (645≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276ExitFv_Outgoing : rowsOwned s2Step276ExitGvAfter [s2Step276ExitFvOut,s2Step276ExitGvOut] :=
  hmrRows_owned_drop s2Step276ExitGvAfter [s2Step276ExitGOut,s2Step276ExitFOut,s2Step276ExitFvOut,s2Step276ExitGvOut] 2 s2Step276ExitBank_outgoingOwned

private theorem s2Step276ExitFv_distinct : (s2Step276ExitFvRow.sign::s2Step276ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276ExitFv_owned : (s2Step276ExitFvRow.sign::s2Step276ExitFvRow.payload).toFinset⊆s2Step276ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276ExitFvBefore (fun q => (0≤q ∧ q<644) ∨ (645≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276ExitFv_reserved : s2Step276ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step276ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step276ExitFv_checked : planRowResizeLog s2Step276ExitFvBefore s2Step276ExitFvRow 154 []=
    some (s2Step276ExitFvAfter,s2Step276ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step276ExitFvBefore s2Step276ExitFvAfter s2Step276ExitFvRow 154 []
    s2Step276ExitFv_distinct s2Step276ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step276ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step276ExitFvRow.payload++[]) s2Step276ExitFvRow.sign=s2Step276ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step276ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step276ExitG_Incoming : rowsOwned s2Step276ExitGBefore [s2Step276ExitGRow,s2Step276ExitFRow,s2Step276ExitFvRow,s2Step276ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276ExitGRow,s2Step276ExitFRow,s2Step276ExitFvRow,s2Step276ExitGvRow] 0 s2Step276ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276ExitG_Outgoing : rowsOwned s2Step276ExitGvAfter [s2Step276ExitGOut,s2Step276ExitFOut,s2Step276ExitFvOut,s2Step276ExitGvOut] :=
  hmrRows_owned_drop s2Step276ExitGvAfter [s2Step276ExitGOut,s2Step276ExitFOut,s2Step276ExitFvOut,s2Step276ExitGvOut] 0 s2Step276ExitBank_outgoingOwned

private theorem s2Step276ExitG_distinct : (s2Step276ExitGRow.sign::s2Step276ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276ExitG_owned : (s2Step276ExitGRow.sign::s2Step276ExitGRow.payload).toFinset⊆s2Step276ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276ExitG_retired : s2Step276ExitGBefore.retireSet s2Step276ExitGExtra.toFinset=s2Step276ExitGAfter := by
  unfold Arena.retireSet s2Step276ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step276ExitGBefore,s2Step276ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step276ExitG_checked : planRowResizeLog s2Step276ExitGBefore s2Step276ExitGRow 132 []=
    some (s2Step276ExitGAfter,s2Step276ExitGOut,shrinkRow 769 s2Step276ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step276ExitGBefore s2Step276ExitGRow 132 s2Step276ExitG_distinct s2Step276ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step276ExitGRow.payload.take 132) s2Step276ExitGRow.sign=s2Step276ExitGOut := by decide +kernel
  have hi : s2Step276ExitGRow.payload.drop 132=s2Step276ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step276ExitG_retired] at result
  exact result

private def s2Step276ExitGvBefore : Arena := s2Step276ExitFAfter

private theorem s2Step276ExitGv_Incoming : rowsOwned s2Step276ExitGvBefore [s2Step276ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276ExitGRow,s2Step276ExitFRow,s2Step276ExitFvRow,s2Step276ExitGvRow] 3 s2Step276ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276ExitGvBefore (fun q => (0≤q ∧ q<644) ∨ (645≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276ExitGv_Outgoing : rowsOwned s2Step276ExitGvAfter [s2Step276ExitGvOut] :=
  hmrRows_owned_drop s2Step276ExitGvAfter [s2Step276ExitGOut,s2Step276ExitFOut,s2Step276ExitFvOut,s2Step276ExitGvOut] 3 s2Step276ExitBank_outgoingOwned

private theorem s2Step276ExitGv_distinct : (s2Step276ExitGvRow.sign::s2Step276ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276ExitGv_owned : (s2Step276ExitGvRow.sign::s2Step276ExitGvRow.payload).toFinset⊆s2Step276ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276ExitGvBefore (fun q => (0≤q ∧ q<644) ∨ (645≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276ExitGv_retired : s2Step276ExitGvBefore.retireSet s2Step276ExitGvExtra.toFinset=s2Step276ExitGvAfter := by
  unfold Arena.retireSet s2Step276ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step276ExitGvBefore,s2Step276ExitFAfter,s2Step276ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step276ExitGv_checked : planRowResizeLog s2Step276ExitGvBefore s2Step276ExitGvRow 153 []=
    some (s2Step276ExitGvAfter,s2Step276ExitGvOut,shrinkRow 771 s2Step276ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step276ExitGvBefore s2Step276ExitGvRow 153 s2Step276ExitGv_distinct s2Step276ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step276ExitGvRow.payload.take 153) s2Step276ExitGvRow.sign=s2Step276ExitGvOut := by decide +kernel
  have hi : s2Step276ExitGvRow.payload.drop 153=s2Step276ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step276ExitGv_retired] at result
  exact result

private theorem s2Step276ExitBank_rows : planWindowRowsLog s2Step276ExitGBefore [(s2Step276ExitGRow,132),(s2Step276ExitFRow,132),(s2Step276ExitFvRow,154),(s2Step276ExitGvRow,153)] [[],[],[],[]]=
    some (s2Step276ExitGvAfter,[s2Step276ExitGOut,s2Step276ExitFOut,s2Step276ExitFvOut,s2Step276ExitGvOut],(shrinkRow 769 s2Step276ExitGExtra ++ (shrinkRow 768 s2Step276ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step276ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step276ExitGvAfter [] []=some (s2Step276ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step276ExitGvBefore s2Step276ExitGvAfter s2Step276ExitGvAfter
    s2Step276ExitGvRow s2Step276ExitGvOut 153 [] [] [] []
    (shrinkRow 771 s2Step276ExitGvExtra) ([]) s2Step276ExitGv_Incoming s2Step276ExitGv_checked h4 s2Step276ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step276ExitFvBefore s2Step276ExitFvAfter s2Step276ExitGvAfter
    s2Step276ExitFvRow s2Step276ExitFvOut 154 [] [(s2Step276ExitGvRow,153)] [[]] [s2Step276ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step276ExitGvExtra ++ [])) s2Step276ExitFv_Incoming s2Step276ExitFv_checked h3 s2Step276ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step276ExitFBefore s2Step276ExitFAfter s2Step276ExitGvAfter
    s2Step276ExitFRow s2Step276ExitFOut 132 [] [(s2Step276ExitFvRow,154),(s2Step276ExitGvRow,153)] [[],[]] [s2Step276ExitFvOut,s2Step276ExitGvOut]
    (shrinkRow 768 s2Step276ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step276ExitGvExtra ++ []))) s2Step276ExitF_Incoming s2Step276ExitF_checked h2 s2Step276ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step276ExitGBefore s2Step276ExitGAfter s2Step276ExitGvAfter
    s2Step276ExitGRow s2Step276ExitGOut 132 [] [(s2Step276ExitFRow,132),(s2Step276ExitFvRow,154),(s2Step276ExitGvRow,153)] [[],[],[]] [s2Step276ExitFOut,s2Step276ExitFvOut,s2Step276ExitGvOut]
    (shrinkRow 769 s2Step276ExitGExtra) ((shrinkRow 768 s2Step276ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step276ExitGvExtra ++ [])))) s2Step276ExitG_Incoming s2Step276ExitG_checked h1 s2Step276ExitG_Outgoing
  exact h0

private theorem s2Step276ExitBank_checked : compileHmrBankResizeLog .exit s2Step276ExitGBefore ⟨s2Step276ExitFRow,s2Step276ExitGRow,s2Step276ExitFvRow,s2Step276ExitGvRow⟩ ⟨132,132,154,153⟩ [[],[],[],[]]=
    some (s2Step276ExitGvAfter,⟨s2Step276ExitFOut,s2Step276ExitGOut,s2Step276ExitFvOut,s2Step276ExitGvOut⟩,(shrinkRow 769 s2Step276ExitGExtra ++ (shrinkRow 768 s2Step276ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step276ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step276ExitBank_rows]
  rfl

private theorem s2Step276Add0_apart : Disjoint s2Step276Add0Arena.live s2Step276Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step276Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276Add0_card : s2Step276Add0Arena.live.card=899 := by
  decide +kernel

private theorem s2Step276Add0_borrowed : s2Step276Add0Arena.checkBorrow (hmrHybridCount s2Step276Add0Arena s2Step276Add0B.length) s2Step276Add0Work=some s2Step276Add0During := by
  have len : s2Step276Add0Work.length=hmrHybridCount s2Step276Add0Arena s2Step276Add0B.length := by
    rw [hmrHybridCount,s2Step276Add0_card]
    decide +kernel
  have nd : s2Step276Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step276Add0Arena s2Step276Add0During s2Step276Add0Work.toFinset s2Step276Add0_bounded s2Step276Add0_apart rfl

private theorem s2Step276Add0_distinct : (781::815::891::(s2Step276Add0A++s2Step276Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276Add0_owned : (781::815::891::(s2Step276Add0A++s2Step276Add0B)).toFinset⊆s2Step276Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step276Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276Add0_checked : compileHmrHybridCinLog s2Step276Add0Arena 815 781 891 s2Step276Add0A s2Step276Add0B s2Step276Add0Work=some s2Step276Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step276Add0Arena s2Step276Add0During 815 781 891 s2Step276Add0A s2Step276Add0B s2Step276Add0Work
    (by decide +kernel) (by decide +kernel) s2Step276Add0_distinct
    (fun q hq => s2Step276Add0_owned (List.mem_toFinset.mpr hq)) s2Step276Add0_borrowed

private theorem s2Step276Add1_apart : Disjoint s2Step276Add1Arena.live s2Step276Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step276Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276Add1_card : s2Step276Add1Arena.live.card=899 := by
  decide +kernel

private theorem s2Step276Add1_borrowed : s2Step276Add1Arena.checkBorrow (hmrHybridCount s2Step276Add1Arena s2Step276Add1B.length) s2Step276Add1Work=some s2Step276Add1During := by
  have len : s2Step276Add1Work.length=hmrHybridCount s2Step276Add1Arena s2Step276Add1B.length := by
    rw [hmrHybridCount,s2Step276Add1_card]
    decide +kernel
  have nd : s2Step276Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step276Add1Arena s2Step276Add1During s2Step276Add1Work.toFinset s2Step276Add1_bounded s2Step276Add1_apart rfl

private theorem s2Step276Add1_distinct : (781::815::891::(s2Step276Add1A++s2Step276Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276Add1_owned : (781::815::891::(s2Step276Add1A++s2Step276Add1B)).toFinset⊆s2Step276Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step276Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276Add1_checked : compileHmrHybridCinLog s2Step276Add1Arena 815 781 891 s2Step276Add1A s2Step276Add1B s2Step276Add1Work=some s2Step276Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step276Add1Arena s2Step276Add1During 815 781 891 s2Step276Add1A s2Step276Add1B s2Step276Add1Work
    (by decide +kernel) (by decide +kernel) s2Step276Add1_distinct
    (fun q hq => s2Step276Add1_owned (List.mem_toFinset.mpr hq)) s2Step276Add1_borrowed

private theorem s2Step276F4_apart : Disjoint (s2Step276Add0A++s2Step276Add0B).toFinset (s2Step276Add1A++s2Step276Add1B).toFinset := by
  have nd : ((s2Step276Add0A++s2Step276Add0B)++(s2Step276Add1A++s2Step276Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step276F4_carry : s2Step276F4FlagArena.checkBorrow 1 [891]=some s2Step276Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step276F4FlagArena,s2Step276HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step276F4FlagArena,s2Step276HeadFvAfter,s2Step276Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step276F4_distinct : (844::815::781::891::((s2Step276Add0A++s2Step276Add1A)++(s2Step276Add0B++s2Step276Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276F4_flag : s2Step276HeadFvAfter.checkBorrow 1 [781]=some s2Step276F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step276HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step276F4_owned : (844::815::((s2Step276Add0A++s2Step276Add1A)++(s2Step276Add0B++s2Step276Add1B))).toFinset⊆s2Step276HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step276HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276F4_checked : compileHmrHybridF4Log s2Step276HeadFvAfter 844 815 s2Step276Add0A s2Step276Add0B s2Step276Add1A s2Step276Add1B [781] [891] s2Step276Add0Work s2Step276Add1Work=some s2Step276F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step276HeadFvAfter s2Step276F4FlagArena s2Step276Add0Arena s2Step276Add0During s2Step276Add1During 844 815
    s2Step276Add0A s2Step276Add0B s2Step276Add1A s2Step276Add1B [781] [891] s2Step276Add0Work s2Step276Add1Work
    (fun q hq => s2Step276F4_owned (List.mem_toFinset.mpr hq)) s2Step276F4_flag s2Step276F4_carry
    s2Step276F4_distinct s2Step276F4_apart s2Step276Add0_checked s2Step276Add1_checked

private theorem s2Step276Front_branch : s2Step276FrontSigmaArena.checkBorrow 1 [815]=some s2Step276HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step276FrontSigmaArena,s2Step276EntryGvAfter,s2Step276EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step276FrontSigmaArena,s2Step276EntryGvAfter,s2Step276EntryGAfter,s2Step276HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step276Front_entry : HmrFrontEntryValid s2Step276EntryFBefore s2Step276FrontBank 133 153 ⟨132,132,154,153⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step276FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step276EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step276EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step276FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step276Front_sigma : s2Step276EntryGvAfter.checkBorrow 1 [844]=some s2Step276FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step276EntryGvAfter,s2Step276EntryGAfter,arenaWires]
  · rfl

private def s2Step276HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276HeadFBefore : Arena := s2Step276HeadGAfter

private def s2Step276HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644],768⟩

private def s2Step276HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816],770⟩

private def s2Step276HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839],769⟩

private def s2Step276HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩

private theorem s2Step276HeadBank_incomingDistinct : ([s2Step276HeadGRow,s2Step276HeadFRow,s2Step276HeadGvRow,s2Step276HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276HeadF_Incoming : rowsOwned s2Step276HeadFBefore [s2Step276HeadFRow,s2Step276HeadGvRow,s2Step276HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276HeadGRow,s2Step276HeadFRow,s2Step276HeadGvRow,s2Step276HeadFvRow] 1 s2Step276HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276HeadBank_outgoingOwned : rowsOwned s2Step276HeadFvAfter [s2Step276HeadGOut,s2Step276HeadFOut,s2Step276HeadGvOut,s2Step276HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step276HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276HeadF_Outgoing : rowsOwned s2Step276HeadFvAfter [s2Step276HeadFOut,s2Step276HeadGvOut,s2Step276HeadFvOut] :=
  hmrRows_owned_drop s2Step276HeadFvAfter [s2Step276HeadGOut,s2Step276HeadFOut,s2Step276HeadGvOut,s2Step276HeadFvOut] 1 s2Step276HeadBank_outgoingOwned

private theorem s2Step276HeadF_distinct : (s2Step276HeadFRow.sign::s2Step276HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276HeadF_owned : (s2Step276HeadFRow.sign::s2Step276HeadFRow.payload).toFinset⊆s2Step276HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276HeadF_reserved : s2Step276HeadFBefore.reserve s2Step276HeadFFresh.toFinset=some s2Step276HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step276HeadFFresh,arenaWires]
  · norm_num [s2Step276HeadFBefore,s2Step276HeadGAfter,s2Step276HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step276HeadFAfter,s2Step276HeadFBefore,s2Step276HeadGAfter,s2Step276HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step276HeadF_checked : planRowResizeLog s2Step276HeadFBefore s2Step276HeadFRow 134 s2Step276HeadFFresh=
    some (s2Step276HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 791],768⟩,growRow 768 s2Step276HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step276HeadFBefore s2Step276HeadFAfter s2Step276HeadFRow 134 s2Step276HeadFFresh
    s2Step276HeadF_distinct s2Step276HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step276HeadF_reserved
  have rowEq : WindowRow.mk (s2Step276HeadFRow.payload++s2Step276HeadFFresh) s2Step276HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 791],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step276HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step276HeadFvBefore : Arena := s2Step276HeadGvAfter

private theorem s2Step276HeadFv_Incoming : rowsOwned s2Step276HeadFvBefore [s2Step276HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276HeadGRow,s2Step276HeadFRow,s2Step276HeadGvRow,s2Step276HeadFvRow] 3 s2Step276HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276HeadFv_Outgoing : rowsOwned s2Step276HeadFvAfter [s2Step276HeadFvOut] :=
  hmrRows_owned_drop s2Step276HeadFvAfter [s2Step276HeadGOut,s2Step276HeadFOut,s2Step276HeadGvOut,s2Step276HeadFvOut] 3 s2Step276HeadBank_outgoingOwned

private theorem s2Step276HeadFv_distinct : (s2Step276HeadFvRow.sign::s2Step276HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276HeadFv_owned : (s2Step276HeadFvRow.sign::s2Step276HeadFvRow.payload).toFinset⊆s2Step276HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276HeadFv_reserved : s2Step276HeadFvBefore.reserve s2Step276HeadFvFresh.toFinset=some s2Step276HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step276HeadFvFresh,arenaWires]
  · norm_num [s2Step276HeadFvBefore,s2Step276HeadGvAfter,s2Step276HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step276HeadFvAfter,s2Step276HeadFvBefore,s2Step276HeadGvAfter,s2Step276HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step276HeadFv_checked : planRowResizeLog s2Step276HeadFvBefore s2Step276HeadFvRow 154 s2Step276HeadFvFresh=
    some (s2Step276HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩,growRow 770 s2Step276HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step276HeadFvBefore s2Step276HeadFvAfter s2Step276HeadFvRow 154 s2Step276HeadFvFresh
    s2Step276HeadFv_distinct s2Step276HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step276HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step276HeadFvRow.payload++s2Step276HeadFvFresh) s2Step276HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step276HeadG_Incoming : rowsOwned s2Step276HeadGBefore [s2Step276HeadGRow,s2Step276HeadFRow,s2Step276HeadGvRow,s2Step276HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276HeadGRow,s2Step276HeadFRow,s2Step276HeadGvRow,s2Step276HeadFvRow] 0 s2Step276HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276HeadG_Outgoing : rowsOwned s2Step276HeadFvAfter [s2Step276HeadGOut,s2Step276HeadFOut,s2Step276HeadGvOut,s2Step276HeadFvOut] :=
  hmrRows_owned_drop s2Step276HeadFvAfter [s2Step276HeadGOut,s2Step276HeadFOut,s2Step276HeadGvOut,s2Step276HeadFvOut] 0 s2Step276HeadBank_outgoingOwned

private theorem s2Step276HeadG_distinct : (s2Step276HeadGRow.sign::s2Step276HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276HeadG_owned : (s2Step276HeadGRow.sign::s2Step276HeadGRow.payload).toFinset⊆s2Step276HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276HeadG_reserved : s2Step276HeadGBefore.reserve s2Step276HeadGFresh.toFinset=some s2Step276HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step276HeadGFresh,arenaWires]
  · norm_num [s2Step276HeadGBefore,s2Step276HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step276HeadGAfter,s2Step276HeadGBefore,s2Step276HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step276HeadG_checked : planRowResizeLog s2Step276HeadGBefore s2Step276HeadGRow 134 s2Step276HeadGFresh=
    some (s2Step276HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839, 788],769⟩,growRow 769 s2Step276HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step276HeadGBefore s2Step276HeadGAfter s2Step276HeadGRow 134 s2Step276HeadGFresh
    s2Step276HeadG_distinct s2Step276HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step276HeadG_reserved
  have rowEq : WindowRow.mk (s2Step276HeadGRow.payload++s2Step276HeadGFresh) s2Step276HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839, 788],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step276HeadGvBefore : Arena := s2Step276HeadFAfter

private theorem s2Step276HeadGv_Incoming : rowsOwned s2Step276HeadGvBefore [s2Step276HeadGvRow,s2Step276HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step276HeadGRow,s2Step276HeadFRow,s2Step276HeadGvRow,s2Step276HeadFvRow] 2 s2Step276HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step276HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step276HeadGv_Outgoing : rowsOwned s2Step276HeadFvAfter [s2Step276HeadGvOut,s2Step276HeadFvOut] :=
  hmrRows_owned_drop s2Step276HeadFvAfter [s2Step276HeadGOut,s2Step276HeadFOut,s2Step276HeadGvOut,s2Step276HeadFvOut] 2 s2Step276HeadBank_outgoingOwned

private theorem s2Step276HeadGv_distinct : (s2Step276HeadGvRow.sign::s2Step276HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step276HeadGv_owned : (s2Step276HeadGvRow.sign::s2Step276HeadGvRow.payload).toFinset⊆s2Step276HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step276HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step276HeadGv_reserved : s2Step276HeadGvBefore.reserve s2Step276HeadGvFresh.toFinset=some s2Step276HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step276HeadGvFresh,arenaWires]
  · norm_num [s2Step276HeadGvBefore,s2Step276HeadFAfter,s2Step276HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step276HeadGvAfter,s2Step276HeadGvBefore,s2Step276HeadFAfter,s2Step276HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step276HeadGv_checked : planRowResizeLog s2Step276HeadGvBefore s2Step276HeadGvRow 154 s2Step276HeadGvFresh=
    some (s2Step276HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 841],771⟩,growRow 771 s2Step276HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step276HeadGvBefore s2Step276HeadGvAfter s2Step276HeadGvRow 154 s2Step276HeadGvFresh
    s2Step276HeadGv_distinct s2Step276HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step276HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step276HeadGvRow.payload++s2Step276HeadGvFresh) s2Step276HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step276HeadBank_rows : planWindowRowsLog s2Step276HeadGBefore [(s2Step276HeadGRow,134),(s2Step276HeadFRow,134),(s2Step276HeadGvRow,154),(s2Step276HeadFvRow,154)] [s2Step276HeadGFresh,s2Step276HeadFFresh,s2Step276HeadGvFresh,s2Step276HeadFvFresh]=
    some (s2Step276HeadFvAfter,[s2Step276HeadGOut,s2Step276HeadFOut,s2Step276HeadGvOut,s2Step276HeadFvOut],(growRow 769 s2Step276HeadGFresh ++ (growRow 768 s2Step276HeadFFresh ++ (growRow 771 s2Step276HeadGvFresh ++ (growRow 770 s2Step276HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step276HeadFvAfter [] []=some (s2Step276HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step276HeadFvBefore s2Step276HeadFvAfter s2Step276HeadFvAfter
    s2Step276HeadFvRow s2Step276HeadFvOut 154 s2Step276HeadFvFresh [] [] []
    (growRow 770 s2Step276HeadFvFresh) ([]) s2Step276HeadFv_Incoming s2Step276HeadFv_checked h4 s2Step276HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step276HeadGvBefore s2Step276HeadGvAfter s2Step276HeadFvAfter
    s2Step276HeadGvRow s2Step276HeadGvOut 154 s2Step276HeadGvFresh [(s2Step276HeadFvRow,154)] [s2Step276HeadFvFresh] [s2Step276HeadFvOut]
    (growRow 771 s2Step276HeadGvFresh) ((growRow 770 s2Step276HeadFvFresh ++ [])) s2Step276HeadGv_Incoming s2Step276HeadGv_checked h3 s2Step276HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step276HeadFBefore s2Step276HeadFAfter s2Step276HeadFvAfter
    s2Step276HeadFRow s2Step276HeadFOut 134 s2Step276HeadFFresh [(s2Step276HeadGvRow,154),(s2Step276HeadFvRow,154)] [s2Step276HeadGvFresh,s2Step276HeadFvFresh] [s2Step276HeadGvOut,s2Step276HeadFvOut]
    (growRow 768 s2Step276HeadFFresh) ((growRow 771 s2Step276HeadGvFresh ++ (growRow 770 s2Step276HeadFvFresh ++ []))) s2Step276HeadF_Incoming s2Step276HeadF_checked h2 s2Step276HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step276HeadGBefore s2Step276HeadGAfter s2Step276HeadFvAfter
    s2Step276HeadGRow s2Step276HeadGOut 134 s2Step276HeadGFresh [(s2Step276HeadFRow,134),(s2Step276HeadGvRow,154),(s2Step276HeadFvRow,154)] [s2Step276HeadFFresh,s2Step276HeadGvFresh,s2Step276HeadFvFresh] [s2Step276HeadFOut,s2Step276HeadGvOut,s2Step276HeadFvOut]
    (growRow 769 s2Step276HeadGFresh) ((growRow 768 s2Step276HeadFFresh ++ (growRow 771 s2Step276HeadGvFresh ++ (growRow 770 s2Step276HeadFvFresh ++ [])))) s2Step276HeadG_Incoming s2Step276HeadG_checked h1 s2Step276HeadG_Outgoing
  exact h0

private theorem s2Step276HeadBank_checked : compileHmrBankResizeLog .headroom s2Step276HeadGBefore ⟨s2Step276HeadFRow,s2Step276HeadGRow,s2Step276HeadFvRow,s2Step276HeadGvRow⟩ ⟨134,134,154,154⟩ [s2Step276HeadGFresh,s2Step276HeadFFresh,s2Step276HeadGvFresh,s2Step276HeadFvFresh]=
    some (s2Step276HeadFvAfter,⟨s2Step276HeadFOut,s2Step276HeadGOut,s2Step276HeadFvOut,s2Step276HeadGvOut⟩,(growRow 769 s2Step276HeadGFresh ++ (growRow 768 s2Step276HeadFFresh ++ (growRow 771 s2Step276HeadGvFresh ++ (growRow 770 s2Step276HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step276HeadBank_rows]
  rfl

private theorem s2Step276Front_checked : compileHmrSourceFrontLog s2Step276EntryFBefore s2Step276FrontBank 133 153 ⟨132,132,154,153⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step276FrontLog=some s2Step276FrontPlan := by
  have pairEq : s2Step276FrontPair=⟨s2Step276HeadFRow,s2Step276HeadGRow,s2Step276HeadFvRow,s2Step276HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step276FrontHead=⟨s2Step276ExitFRow,s2Step276ExitGRow,s2Step276ExitFvRow,s2Step276ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step276Add0A=s2Step276FrontHead.f.wires := by decide +kernel
  have gEq : s2Step276Add0B=s2Step276FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step276Add1A=s2Step276FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step276Add1B=s2Step276FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step276EntryFBefore s2Step276FrontBank 133 153 ⟨132,132,154,153⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step276FrontLog s2Step276FrontPlan
  · exact s2Step276Front_entry
  · exact s2Step276EntryBank_checked
  · exact s2Step276Front_sigma
  · rfl
  · exact s2Step276Front_branch
  · rfl
  · simpa only [s2Step276FrontPlan,pairEq] using s2Step276HeadBank_checked
  · simpa only [s2Step276FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step276F4_checked
  · exact s2Step276Counter_checked
  · rfl
  · simpa only [s2Step276FrontPlan,headEq] using s2Step276ExitBank_checked

private theorem s2Step276Complete_explicit_checked : compileHmrEarlyStepLog s2Step276EntryFBefore s2Step276FrontBank 133 153 ⟨132,132,154,153⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step276CompleteLog=some s2Step276CompletePlan := by
  let Q := s2Step276EarlyControlPlan
  have hq := s2Step276EarlyControl_plan_checked
  have fv1 : s2Step276CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step276CompleteOut.fv.payload[2]?.getD s2Step276CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step276CompleteOut.fv.payload[3]?.getD s2Step276CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step276CompleteOut.fv.payload[4]?.getD s2Step276CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step276EntryFBefore s2Step276EarlyControlArena s2Step276FrontBank 133 153 ⟨132,132,154,153⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step276CompleteLog s2Step276FrontPlan Q
    s2Step276Front_checked s2Step276Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step276Complete_owned s2Step276Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step276EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 s2Step276CompleteOut.fv.second (s2Step276CompleteOut.fv.payload[2]?.getD s2Step276CompleteOut.fv.sign) (s2Step276CompleteOut.fv.payload[3]?.getD s2Step276CompleteOut.fv.sign) (s2Step276CompleteOut.fv.payload[4]?.getD s2Step276CompleteOut.fv.sign) 815 53 s2Step276EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep276Arena : Arena := s2Step276EntryFBefore
def s2PrivateStep276Bank : WindowBank := s2Step276FrontBank
def s2PrivateStep276Spec : HmrSourceWalkStepLog := ⟨133,153,⟨132,132,154,153⟩,53,.early s2Step276CompleteLog⟩
def s2PrivateStep276Plan : HmrSourceStepPlan := .early s2Step276CompletePlan
theorem s2PrivateStep276_source : s2PrivateStep276Spec=s2ObservedLogs272[4] := rfl
theorem s2PrivateStep276_checked : compileHmrSourceStepLog s2PrivateStep276Arena s2PrivateStep276Bank
    s2PrivateStep276Spec.fgWidth s2PrivateStep276Spec.vWidth s2PrivateStep276Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]
    6 498 276 s2PrivateStep276Spec.need none s2PrivateStep276Spec.log=some s2PrivateStep276Plan := by
  change compileHmrSourceStepLog s2Step276EntryFBefore s2Step276FrontBank 133 153 ⟨132,132,154,153⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 6 498 276 53 none (.early s2Step276CompleteLog)=some (.early s2Step276CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 276<498)]
  rw [s2Step276Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
