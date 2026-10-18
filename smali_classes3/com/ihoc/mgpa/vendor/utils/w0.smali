.class public final Lcom/ihoc/mgpa/vendor/utils/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/boostersdk/SystemCallback;


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/x0;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/x0;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/w0;->a:Lcom/ihoc/mgpa/vendor/utils/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final systemCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "xiaomi system callback key %s  value: %s "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/4 v2, 0x1

    aput-object p2, v3, v2

    invoke-static {v1, v3}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getVendorKey(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorKey;

    move-result-object v1

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-eq v1, v2, :cond_0

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/w0;->a:Lcom/ihoc/mgpa/vendor/utils/x0;

    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {p1, v1, p2}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/w0;->a:Lcom/ihoc/mgpa/vendor/utils/x0;

    iget-object v1, v1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v1, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo p2, "xiaomi system callback exception."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
