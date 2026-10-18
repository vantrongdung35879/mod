.class public Lcom/tencent/tme/live/reward/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/tencent/tme/live/reward/b$a;->a:Lcom/tencent/tme/live/reward/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/reward/b$a;->a:Lcom/tencent/tme/live/reward/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
