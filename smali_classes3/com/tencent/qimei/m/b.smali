.class public final Lcom/tencent/qimei/m/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;


# instance fields
.field public a:Lcom/tencent/qimei/m/a;

.field public b:Lcom/tencent/oaid2/VendorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/qimei/m/a;

    invoke-direct {v0, p1}, Lcom/tencent/qimei/m/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qimei/m/b;->a:Lcom/tencent/qimei/m/a;

    .line 2
    iput-object p2, p0, Lcom/tencent/qimei/m/b;->b:Lcom/tencent/oaid2/VendorManager;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/m/b;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "persist.sys.identifierid.supported"

    aput-object v5, v4, v1

    const-string/jumbo v5, "unknown"

    aput-object v5, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, ""

    .line 9
    :goto_0
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 10
    iget-object v3, p0, Lcom/tencent/qimei/m/b;->a:Lcom/tencent/qimei/m/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string v4, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 28
    iget-object v3, v3, Lcom/tencent/qimei/m/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 30
    const-string v3, "return cursor is null,return"

    invoke-static {v3}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    move-object v5, v4

    goto :goto_2

    .line 33
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    const-string/jumbo v5, "value"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 37
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 38
    :goto_2
    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
