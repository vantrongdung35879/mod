.class Lcom/wukong/HeapDump/HeapDump$3;
.super Ljava/lang/Object;
.source "HeapDump.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wukong/HeapDump/HeapDump;->init_query_handler(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 310
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->-$$Nest$smcheck_memory_usage()V

    .line 311
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->-$$Nest$sfgetm_handler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->-$$Nest$smget_config_query_interval()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
