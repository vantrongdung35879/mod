.class public Lcom/tencent/tme/live/reward/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/reward/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/reward/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/reward/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/reward/b$d;->a:Lcom/tencent/tme/live/reward/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/reward/b$d;->a:Lcom/tencent/tme/live/reward/b;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/reward/b;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
