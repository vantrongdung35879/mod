.class Lcom/wukong/HeapDump/OOMGenerator$1;
.super Ljava/lang/Object;
.source "OOMGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wukong/HeapDump/OOMGenerator;->start_oom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/32 v0, 0xea60

    .line 26
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 28
    const-string v0, "SleepThread"

    const-string v1, "60\u79d2\u5df2\u5230\uff0c\u6267\u884c\u4efb\u52a1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 35
    :goto_0
    invoke-static {}, Lcom/wukong/HeapDump/OOMGenerator;->trigger_oom()V

    return-void
.end method
