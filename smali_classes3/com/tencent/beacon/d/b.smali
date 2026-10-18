.class Lcom/tencent/beacon/d/b;
.super Ljava/lang/Object;
.source "Heartbeat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/d/c;->a(Lcom/tencent/beacon/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/beacon/a/d/a;

.field final synthetic c:Lcom/tencent/beacon/d/c;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/d/c;Ljava/lang/String;Lcom/tencent/beacon/a/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/d/b;->c:Lcom/tencent/beacon/d/c;

    iput-object p2, p0, Lcom/tencent/beacon/d/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/beacon/d/b;->b:Lcom/tencent/beacon/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/beacon/base/net/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/d/b;->c:Lcom/tencent/beacon/d/c;

    invoke-static {v0}, Lcom/tencent/beacon/d/c;->a(Lcom/tencent/beacon/d/c;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/tencent/beacon/d/b;->c:Lcom/tencent/beacon/d/c;

    invoke-static {v1}, Lcom/tencent/beacon/d/c;->b(Lcom/tencent/beacon/d/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[event] rqd_heartbeat A85=Y report success : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/beacon/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/beacon/d/b;->b:Lcom/tencent/beacon/a/d/a;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/d/a;->edit()Lcom/tencent/beacon/a/d/a$a;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/tencent/beacon/d/b;->a:Ljava/lang/String;

    const-string v2, "active_user_date"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8
    iget-object v1, p0, Lcom/tencent/beacon/d/b;->a:Ljava/lang/String;

    const-string v2, "HEART_DENGTA"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method
