.class public Lcom/tencent/tme/live/e/j$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/e/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e/j;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/j$c;->a:Lcom/tencent/tme/live/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e/j$c;->a:Lcom/tencent/tme/live/e/j;

    invoke-static {v0}, Lcom/tencent/tme/live/e/j;->a(Lcom/tencent/tme/live/e/j;)V

    return-void
.end method
