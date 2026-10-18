.class public abstract Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/ExtendableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/tmes/ExtendableMessage<",
        "*>;>",
        "Lcom/squareup/tmes/Message$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public extensionMap:Lcom/squareup/tmes/ExtensionMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/tmes/ExtensionMap<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/tmes/ExtendableMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/squareup/tmes/ExtendableMessage;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/squareup/tmes/ExtensionMap;

    invoke-direct {v0, p1}, Lcom/squareup/tmes/ExtensionMap;-><init>(Lcom/squareup/tmes/ExtensionMap;)V

    iput-object v0, p0, Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    :cond_0
    return-void
.end method


# virtual methods
.method public getExtension(Lcom/squareup/tmes/Extension;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/tmes/Extension<",
            "TT;TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/squareup/tmes/ExtensionMap;->get(Lcom/squareup/tmes/Extension;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setExtension(Lcom/squareup/tmes/Extension;Ljava/lang/Object;)Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/tmes/Extension<",
            "TT;TE;>;TE;)",
            "Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/tmes/ExtensionMap;

    invoke-direct {v0, p1, p2}, Lcom/squareup/tmes/ExtensionMap;-><init>(Lcom/squareup/tmes/Extension;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/squareup/tmes/ExtensionMap;->put(Lcom/squareup/tmes/Extension;Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method
