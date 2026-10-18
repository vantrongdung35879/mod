.class Lcom/ihoc/mgpa/gradish/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/l0;->b()Lcom/ihoc/mgpa/gradish/l0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/l0;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0$a;->a:Lcom/ihoc/mgpa/gradish/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ihoc/mgpa/gradish/C;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/l0$a;->a:Lcom/ihoc/mgpa/gradish/l0;

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/gradish/l0;->a(Lcom/ihoc/mgpa/gradish/l0;Lorg/json/JSONObject;)Lcom/ihoc/mgpa/gradish/k0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/gradish/l0;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "parse opt config from cloud sync success. "

    invoke-static {p2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/l0$a;->a:Lcom/ihoc/mgpa/gradish/l0;

    sget-object v0, Lcom/ihoc/mgpa/gradish/l0$b;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-static {p2, v0}, Lcom/ihoc/mgpa/gradish/l0;->a(Lcom/ihoc/mgpa/gradish/l0;Lcom/ihoc/mgpa/gradish/l0$b;)Lcom/ihoc/mgpa/gradish/l0$b;

    .line 11
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/l0$a;->a:Lcom/ihoc/mgpa/gradish/l0;

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/gradish/l0;->a(Lcom/ihoc/mgpa/gradish/l0;Lcom/ihoc/mgpa/gradish/k0;)Lcom/ihoc/mgpa/gradish/k0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    invoke-static {}, Lcom/ihoc/mgpa/gradish/l0;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "download optimize config parse to json exception, ple check it."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/l0$a;->a:Lcom/ihoc/mgpa/gradish/l0;

    sget-object p2, Lcom/ihoc/mgpa/gradish/l0$b;->h:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/l0;->a(Lcom/ihoc/mgpa/gradish/l0;Lcom/ihoc/mgpa/gradish/l0$b;)Lcom/ihoc/mgpa/gradish/l0$b;

    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/l0;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "async download cloud config, parse response content failed."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/l0$a;->a:Lcom/ihoc/mgpa/gradish/l0;

    sget-object p2, Lcom/ihoc/mgpa/gradish/l0$b;->k:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/l0;->a(Lcom/ihoc/mgpa/gradish/l0;Lcom/ihoc/mgpa/gradish/l0$b;)Lcom/ihoc/mgpa/gradish/l0$b;

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
