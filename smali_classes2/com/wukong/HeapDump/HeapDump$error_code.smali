.class final Lcom/wukong/HeapDump/HeapDump$error_code;
.super Ljava/lang/Object;
.source "HeapDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/HeapDump/HeapDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "error_code"
.end annotation


# static fields
.field static final DISABLED:I = 0x1

.field static final FINAL_FILE_EXISTS:I = 0x3

.field static final GET_FINAL_PATH_FAILED:I = 0x2

.field static final GET_HEAP_PATH_FAILED:I = 0x4

.field static final HEAP_FILE_EXISTS_COMPRESSING:I = 0x5

.field static final INIT_OOM_HANDLER_FAILED:I = 0x6

.field static final INIT_QUERY_HANDLER_FAILED:I = 0x7

.field static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
