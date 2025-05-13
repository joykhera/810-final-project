; ModuleID = 'code.bc'
source_filename = "code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"code.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %x, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %y, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %y, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %z, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %z, align 4, !dbg !18
  br label %while.cond, !dbg !19

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %x, align 4, !dbg !20
  %cmp = icmp slt i32 %0, 2, !dbg !21
  br i1 %cmp, label %while.body, label %while.end, !dbg !19

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %x, align 4, !dbg !22
  %inc = add nsw i32 %1, 1, !dbg !22
  store i32 %inc, i32* %x, align 4, !dbg !22
  %2 = load i32, i32* %z, align 4, !dbg !24
  %add = add nsw i32 %2, 1, !dbg !25
  store i32 %add, i32* %y, align 4, !dbg !26
  br label %while.cond, !dbg !19, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %z, align 4, !dbg !30
  %cmp1 = icmp ne i32 %3, 0, !dbg !32
  br i1 %cmp1, label %if.then, label %if.end, !dbg !33

if.then:                                          ; preds = %while.end
  %call = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !34
  br label %if.end, !dbg !36

if.end:                                           ; preds = %if.then, %while.end
  ret i32 0, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "code.c", directory: "/results/C_while_const/klee")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !10, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 14, type: !12)
!14 = !DILocation(line: 14, column: 5, scope: !9)
!15 = !DILocalVariable(name: "y", scope: !9, file: !1, line: 15, type: !12)
!16 = !DILocation(line: 15, column: 5, scope: !9)
!17 = !DILocalVariable(name: "z", scope: !9, file: !1, line: 16, type: !12)
!18 = !DILocation(line: 16, column: 5, scope: !9)
!19 = !DILocation(line: 17, column: 1, scope: !9)
!20 = !DILocation(line: 17, column: 8, scope: !9)
!21 = !DILocation(line: 17, column: 10, scope: !9)
!22 = !DILocation(line: 18, column: 2, scope: !23)
!23 = distinct !DILexicalBlock(scope: !9, file: !1, line: 17, column: 15)
!24 = !DILocation(line: 19, column: 5, scope: !23)
!25 = !DILocation(line: 19, column: 7, scope: !23)
!26 = !DILocation(line: 19, column: 3, scope: !23)
!27 = distinct !{!27, !19, !28, !29}
!28 = !DILocation(line: 20, column: 1, scope: !9)
!29 = !{!"llvm.loop.mustprogress"}
!30 = !DILocation(line: 21, column: 5, scope: !31)
!31 = distinct !DILexicalBlock(scope: !9, file: !1, line: 21, column: 5)
!32 = !DILocation(line: 21, column: 7, scope: !31)
!33 = !DILocation(line: 21, column: 5, scope: !9)
!34 = !DILocation(line: 22, column: 2, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 21, column: 13)
!36 = !DILocation(line: 23, column: 1, scope: !35)
!37 = !DILocation(line: 24, column: 1, scope: !9)
