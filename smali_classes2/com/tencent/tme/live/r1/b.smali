.class public Lcom/tencent/tme/live/r1/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/reward/operation/H5EntryView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/reward/operation/H5EntryView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r1/b;->a:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/tencent/tme/live/r1/b;->a:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/reward/operation/H5EntryView;->d:Lcom/tencent/tme/live/w0/e;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/w0/e;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v0

    new-instance p1, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 4
    new-instance v2, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v2, p1}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 5
    new-instance p1, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 6
    new-instance v3, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v3, p1}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 7
    new-instance p1, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 8
    new-instance v4, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v4, p1}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 9
    new-instance p1, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 10
    new-instance v5, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v5, p1}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 11
    const-string v1, "h5linkclick_aov"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/tencent/tme/live/r1/b;->a:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/r1/b;->a:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    .line 13
    iget-object v1, v1, Lcom/tencent/tme/live/reward/operation/H5EntryView;->d:Lcom/tencent/tme/live/w0/e;

    .line 14
    iget-object v1, v1, Lcom/tencent/tme/live/w0/e;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a(Lcom/tencent/tme/live/reward/operation/H5EntryView;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 15
    const-string v1, "H5EntryView"

    invoke-static {v1, p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 16
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/tencent/tme/live/r1/b;->a:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    invoke-virtual {p1}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a()V

    return-void
.end method
