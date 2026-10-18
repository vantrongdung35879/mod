.class Lcom/ihoc/mgpa/gradish/M0$k;
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
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/M0$k;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->tryLoadLibrary()Z

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/M0$k;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M0;->a(Lcom/ihoc/mgpa/gradish/M0;)V

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/M0$k;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M0;->b(Lcom/ihoc/mgpa/gradish/M0;)V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L0;->b()Lcom/ihoc/mgpa/gradish/L0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/L0;->c()V

    .line 5
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/M0$k;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M0;->k(Lcom/ihoc/mgpa/gradish/M0;)V

    .line 6
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/M0$k;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M0;->l(Lcom/ihoc/mgpa/gradish/M0;)V

    .line 7
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/M0$k;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M0;->m(Lcom/ihoc/mgpa/gradish/M0;)V

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getInstallSign()Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->get(Landroid/content/Context;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->preProcess()V

    .line 11
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/M0$k;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M0;->n(Lcom/ihoc/mgpa/gradish/M0;)V

    return-void
.end method
