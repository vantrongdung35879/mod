.class Lcom/ihoc/mgpa/gradish/M0$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/M0$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/M0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/M0;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/M0$r;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->w:Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    invoke-static {v0}, Lcom/ihoc/mgpa/report/Reporter;->setReportEventConfig(Lcom/ihoc/mgpa/report/entity/EventReportConfig;)V

    return-void
.end method
