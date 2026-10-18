.class public Lcom/tencent/tme/live/r0/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/r0/c;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/r0/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/r0/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r0/c$a;->a:Lcom/tencent/tme/live/r0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c$a;->a:Lcom/tencent/tme/live/r0/c;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/r0/c;->u:Landroid/view/View;

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
