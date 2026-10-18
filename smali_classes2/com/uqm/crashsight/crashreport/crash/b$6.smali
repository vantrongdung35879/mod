.class final Lcom/uqm/crashsight/crashreport/crash/b$6;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/proguard/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/b;->a(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/common/info/b;

.field private synthetic b:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

.field private synthetic c:Lcom/uqm/crashsight/crashreport/crash/b;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/info/b;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b$6;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b$6;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/b$6;->b:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$6;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v1, "[attach] upload attach success: %s"

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$6;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 894
    :cond_1
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b$6;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget v0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 895
    :goto_0
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b$6;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$6;->b:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)V

    :cond_2
    return-void
.end method
