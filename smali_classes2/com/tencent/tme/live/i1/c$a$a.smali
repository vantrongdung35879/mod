.class public Lcom/tencent/tme/live/i1/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/v0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/i1/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/v0/g<",
        "Lcom/tencent/tme/live/framework/model/PopTVCfgBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/i1/c$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/i1/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/i1/c$a$a;->a:Lcom/tencent/tme/live/i1/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/i1/c$a$a;->a:Lcom/tencent/tme/live/i1/c$a;

    iget-object v0, v0, Lcom/tencent/tme/live/i1/c$a;->a:Lcom/tencent/tme/live/i1/c;

    .line 2
    iget-object v1, v0, Lcom/tencent/tme/live/i1/c;->c:Lcom/tencent/tme/live/i1/c$b;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v1, Lcom/tencent/tme/live/v0/f;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-nez v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iput-object p1, v0, Lcom/tencent/tme/live/i1/c;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/i1/c$a$a;->a:Lcom/tencent/tme/live/i1/c$a;

    iget-object p1, p1, Lcom/tencent/tme/live/i1/c$a;->a:Lcom/tencent/tme/live/i1/c;

    .line 7
    iget-boolean v0, p1, Lcom/tencent/tme/live/i1/c;->g:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/tencent/tme/live/i1/c;->a(Lcom/tencent/tme/live/i1/c;Z)Z

    sget-object p1, Lcom/tencent/tme/live/v0/f;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    iget-object v1, p0, Lcom/tencent/tme/live/i1/c$a$a;->a:Lcom/tencent/tme/live/i1/c$a;

    iget-object v1, v1, Lcom/tencent/tme/live/i1/c$a;->a:Lcom/tencent/tme/live/i1/c;

    .line 9
    iget-object v2, v1, Lcom/tencent/tme/live/i1/c;->f:Ljava/lang/String;

    .line 10
    iput-object v2, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    .line 11
    iget-object p1, v1, Lcom/tencent/tme/live/i1/c;->c:Lcom/tencent/tme/live/i1/c$b;

    .line 12
    check-cast p1, Lcom/tencent/tme/live/k1/e$a;

    .line 13
    iget-object p1, p1, Lcom/tencent/tme/live/k1/e$a;->a:Lcom/tencent/tme/live/k1/e;

    .line 14
    iget-object p1, p1, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p1, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/h1/b;->setStreamOfflineMode(Z)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/tencent/tme/live/i1/c$a$a;->a:Lcom/tencent/tme/live/i1/c$a;

    iget-object p1, p1, Lcom/tencent/tme/live/i1/c$a;->a:Lcom/tencent/tme/live/i1/c;

    .line 17
    iget-boolean v0, p1, Lcom/tencent/tme/live/i1/c;->g:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 18
    invoke-static {p1, v0}, Lcom/tencent/tme/live/i1/c;->a(Lcom/tencent/tme/live/i1/c;Z)Z

    iget-object p1, p0, Lcom/tencent/tme/live/i1/c$a$a;->a:Lcom/tencent/tme/live/i1/c$a;

    iget-object p1, p1, Lcom/tencent/tme/live/i1/c$a;->a:Lcom/tencent/tme/live/i1/c;

    sget-object v1, Lcom/tencent/tme/live/v0/f;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 19
    iget-object v2, v1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    .line 20
    iput-object v2, p1, Lcom/tencent/tme/live/i1/c;->f:Ljava/lang/String;

    .line 21
    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lcom/tencent/tme/live/i1/c;->c:Lcom/tencent/tme/live/i1/c$b;

    .line 23
    check-cast p1, Lcom/tencent/tme/live/k1/e$a;

    .line 24
    iget-object v1, p1, Lcom/tencent/tme/live/k1/e$a;->a:Lcom/tencent/tme/live/k1/e;

    .line 25
    iget-object v1, v1, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    if-eqz v1, :cond_4

    .line 26
    iget-object v1, v1, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/tencent/tme/live/h1/b;->setStreamOfflineMode(Z)V

    .line 27
    :cond_4
    iget-object p1, p1, Lcom/tencent/tme/live/k1/e$a;->a:Lcom/tencent/tme/live/k1/e;

    .line 28
    iget-object p1, p1, Lcom/tencent/tme/live/k1/e;->s:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method
