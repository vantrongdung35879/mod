.class public Lcom/tencent/tme/live/w0/q;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/w0/q;->b:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const-string p1, "VideoTipsBean"

    const-string p2, "\u9700\u8981Activity \u7ea7\u522b\u7684contxt\uff0c\u5426\u5219\u591a\u56fd\u8bed\u8a00\u53ef\u80fd\u65e0\u6cd5\u751f\u6548"

    invoke-static {p1, p2}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/w0/q;->a:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/tencent/tme/live/w0/q;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/w0/q;->b:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string p1, "VideoTipsBean"

    const-string p2, "\u9700\u8981Activity \u7ea7\u522b\u7684contxt\uff0c\u5426\u5219\u591a\u56fd\u8bed\u8a00\u53ef\u80fd\u65e0\u6cd5\u751f\u6548"

    invoke-static {p1, p2}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/w0/q;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/tme/live/w0/q;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/w0/q;->b:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    const-string p1, "VideoTipsBean"

    const-string p2, "\u9700\u8981Activity \u7ea7\u522b\u7684contxt\uff0c\u5426\u5219\u591a\u56fd\u8bed\u8a00\u53ef\u80fd\u65e0\u6cd5\u751f\u6548"

    invoke-static {p1, p2}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p2, p0, Lcom/tencent/tme/live/w0/q;->a:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/tencent/tme/live/w0/q;->b:Z

    return-void
.end method
