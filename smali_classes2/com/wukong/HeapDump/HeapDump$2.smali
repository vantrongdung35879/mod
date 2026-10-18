.class Lcom/wukong/HeapDump/HeapDump$2;
.super Ljava/lang/Object;
.source "HeapDump.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wukong/HeapDump/HeapDump;->register_oom_handler()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 200
    instance-of v0, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    .line 202
    move-object v0, p2

    check-cast v0, Ljava/lang/OutOfMemoryError;

    invoke-static {v0, p1}, Lcom/wukong/HeapDump/HeapDump;->-$$Nest$smhandle_oom_error(Ljava/lang/OutOfMemoryError;Ljava/lang/Thread;)V

    goto :goto_1

    .line 207
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 210
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    .line 212
    check-cast v0, Ljava/lang/OutOfMemoryError;

    invoke-static {v0, p1}, Lcom/wukong/HeapDump/HeapDump;->-$$Nest$smhandle_oom_error(Ljava/lang/OutOfMemoryError;Ljava/lang/Thread;)V

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_2
    :goto_1
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->-$$Nest$smget_original_handler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 226
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->-$$Nest$smget_original_handler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 231
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in thread \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeapDump"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
