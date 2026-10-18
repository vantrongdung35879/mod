.class Lcom/ihoc/mgpa/gradish/G0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/G0;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/G0;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/G0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/G0$a;->a:Lcom/ihoc/mgpa/gradish/G0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ihoc/mgpa/gradish/C;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download spa config content: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/G0$a;->a:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/G0;->a(Lcom/ihoc/mgpa/gradish/G0;Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object p1

    sget-object p2, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;

    if-ne p1, p2, :cond_0

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "reparse spa config success."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "reparse spa config failed."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
