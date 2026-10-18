.class final Lcom/uqm/crashsight/crashreport/biz/b$a;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/biz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

.field private synthetic c:Lcom/uqm/crashsight/crashreport/biz/b;


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/crashreport/biz/b;Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;Z)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/biz/b$a;->c:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/b$a;->b:Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    .line 135
    iput-boolean p3, p0, Lcom/uqm/crashsight/crashreport/biz/b$a;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/b$a;->b:Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 1142
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1146
    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    .line 155
    :cond_0
    const-string v0, "[UserInfo] Record user info."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/b$a;->c:Lcom/uqm/crashsight/crashreport/biz/b;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/b$a;->b:Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    invoke-static {v0, v2, v1}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Lcom/uqm/crashsight/crashreport/biz/b;Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;Z)V

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/biz/b$a;->a:Z

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/b$a;->c:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/biz/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 162
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method
