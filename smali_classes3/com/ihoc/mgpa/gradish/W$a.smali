.class Lcom/ihoc/mgpa/gradish/W$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/gradish/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/W;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/W;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/W$a;->a:Lcom/ihoc/mgpa/gradish/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/W$a;->a:Lcom/ihoc/mgpa/gradish/W;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/W;->a(Lcom/ihoc/mgpa/gradish/W;)Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/W$a;->a:Lcom/ihoc/mgpa/gradish/W;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/W;->a(Lcom/ihoc/mgpa/gradish/W;)Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/W$a;->a:Lcom/ihoc/mgpa/gradish/W;

    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/W;->b(Lcom/ihoc/mgpa/gradish/W;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/W$a;->a:Lcom/ihoc/mgpa/gradish/W;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/W;->c(Lcom/ihoc/mgpa/gradish/W;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;->bringServiceToForeground(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
