; ModuleID = 'code.bc'
source_filename = "code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %call = call zeroext i1 @__VERIFIER_nondet_bool(), !dbg !13
  br i1 %call, label %while.body, label %if.else, !dbg !15

while.body:                                       ; preds = %entry, %while.body
  br label %while.body, !dbg !16, !llvm.loop !18

if.else:                                          ; preds = %entry
  %call1 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*)(i32 0), !dbg !20
  %call2 = call i32 (...) @__VERIFIER_error(), !dbg !21
  ret i32 0, !dbg !22
}

declare dso_local zeroext i1 @__VERIFIER_nondet_bool() #1

declare dso_local i32 @__VERIFIER_assume(...) #1

declare dso_local i32 @__VERIFIER_error(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "code.c", directory: "/results/inf_loop_and_exit_true-unreach-call/klee")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocation(line: 3, column: 6, scope: !14)
!14 = distinct !DILexicalBlock(scope: !9, file: !1, line: 3, column: 6)
!15 = !DILocation(line: 3, column: 6, scope: !9)
!16 = !DILocation(line: 4, column: 3, scope: !17)
!17 = distinct !DILexicalBlock(scope: !14, file: !1, line: 3, column: 32)
!18 = distinct !{!18, !16, !19}
!19 = !DILocation(line: 4, column: 12, scope: !17)
!20 = !DILocation(line: 6, column: 3, scope: !14)
!21 = !DILocation(line: 7, column: 2, scope: !9)
!22 = !DILocation(line: 8, column: 1, scope: !9)
