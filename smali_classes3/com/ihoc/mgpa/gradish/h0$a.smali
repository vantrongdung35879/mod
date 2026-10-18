.class Lcom/ihoc/mgpa/gradish/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/h0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/z;->b:Lcom/ihoc/mgpa/gradish/z;

    iget v0, v0, Lcom/ihoc/mgpa/gradish/z;->a:I

    const-string v1, "OAID"

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    move-result-object p1

    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 7
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "get device oaid failed, but try to get it from local sp cache."

    invoke-static {v0, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 9
    invoke-static {v1, p2}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 11
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    move-result-object p1

    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
