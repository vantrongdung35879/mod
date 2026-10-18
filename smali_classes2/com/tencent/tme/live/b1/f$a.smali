.class public Lcom/tencent/tme/live/b1/f$a;
.super Lcom/tencent/tme/live/l0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/Reference;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/Reference;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/b1/f$a;->a:Ljava/lang/ref/Reference;

    iput p2, p0, Lcom/tencent/tme/live/b1/f$a;->b:I

    invoke-direct {p0}, Lcom/tencent/tme/live/l0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;Lcom/tencent/tme/live/f0/c;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/b1/f$a;->a:Ljava/lang/ref/Reference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget p3, p0, Lcom/tencent/tme/live/b1/f$a;->b:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    return-void
.end method
