.class public Lcom/tencent/tme/live/reward/b$b;
.super Lcom/tencent/tme/live/l0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/reward/b;-><init>(Lcom/tencent/tme/live/reward/RewardEnterView;Lcom/tencent/tme/live/w0/l;)V
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

    iput-object p1, p0, Lcom/tencent/tme/live/reward/b$b;->a:Lcom/tencent/tme/live/reward/b;

    invoke-direct {p0}, Lcom/tencent/tme/live/l0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/reward/b$b;->a:Lcom/tencent/tme/live/reward/b;

    .line 1
    invoke-virtual {p1}, Lcom/tencent/tme/live/reward/b;->c()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lcom/tencent/tme/live/f0/c;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/reward/b$b;->a:Lcom/tencent/tme/live/reward/b;

    .line 2
    invoke-virtual {p1}, Lcom/tencent/tme/live/reward/b;->c()V

    return-void
.end method
