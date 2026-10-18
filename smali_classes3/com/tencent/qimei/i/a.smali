.class public final Lcom/tencent/qimei/i/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 1
    const-string v0, "openIdNotifyFlag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shouldUpdateId, notifyFlag : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const-string v4, "openIdType"

    const/4 v5, 0x1

    if-eq v0, v5, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5
    const-string v1, "openIdPackageList"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/tencent/qimei/i/c;->a()Lcom/tencent/qimei/i/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/qimei/i/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/i/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    iput-wide v2, p1, Lcom/tencent/qimei/i/b;->b:J

    :cond_1
    return-void

    :cond_2
    move v1, p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {}, Lcom/tencent/qimei/i/c;->a()Lcom/tencent/qimei/i/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/qimei/i/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/i/b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 18
    iput-wide v2, p1, Lcom/tencent/qimei/i/b;->b:J

    :cond_4
    return-void

    .line 19
    :cond_5
    const-string v0, "openIdPackage"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 24
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {}, Lcom/tencent/qimei/i/c;->a()Lcom/tencent/qimei/i/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/qimei/i/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/i/b;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 26
    iput-wide v2, p1, Lcom/tencent/qimei/i/b;->b:J

    :cond_8
    return-void
.end method
