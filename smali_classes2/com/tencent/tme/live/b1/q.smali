.class public Lcom/tencent/tme/live/b1/q;
.super Ljava/lang/Object;


# static fields
.field public static b:Lcom/tencent/tme/live/b1/q;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/b1/q;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
