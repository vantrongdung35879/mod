.class final Lcom/uqm/crashsight/crashreport/biz/b$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/proguard/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/biz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/uqm/crashsight/crashreport/biz/b;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/biz/b;Ljava/util/List;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/biz/b$2;->b:Lcom/uqm/crashsight/crashreport/biz/b;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/b$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 377
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "[UserInfo] Successfully uploaded user info lite."

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 379
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/biz/b$2;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    .line 380
    iput-wide v0, v2, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->f:J

    .line 381
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/biz/b$2;->b:Lcom/uqm/crashsight/crashreport/biz/b;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Lcom/uqm/crashsight/crashreport/biz/b;Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
