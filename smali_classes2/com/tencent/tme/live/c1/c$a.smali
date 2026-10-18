.class public Lcom/tencent/tme/live/c1/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/c1/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/tencent/tme/live/c1/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/c1/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/c1/c$a;->b:Lcom/tencent/tme/live/c1/c;

    iput p2, p0, Lcom/tencent/tme/live/c1/c$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/c1/c$a;->b:Lcom/tencent/tme/live/c1/c;

    iget v0, p0, Lcom/tencent/tme/live/c1/c$a;->a:I

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/c1/c;->a(I)V

    return-void
.end method
