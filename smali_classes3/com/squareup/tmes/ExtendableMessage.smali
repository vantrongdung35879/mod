.class public abstract Lcom/squareup/tmes/ExtendableMessage;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/tmes/ExtendableMessage<",
        "*>;>",
        "Lcom/squareup/tmes/Message;"
    }
.end annotation


# instance fields
.field public transient extensionMap:Lcom/squareup/tmes/ExtensionMap;
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

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    return-void
.end method


# virtual methods
.method public extensionsEqual(Lcom/squareup/tmes/ExtendableMessage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/ExtendableMessage;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    iget-object p1, p1, Lcom/squareup/tmes/ExtendableMessage;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/squareup/tmes/ExtensionMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public extensionsHashCode()I
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/ExtendableMessage;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/tmes/ExtensionMap;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public extensionsToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/ExtendableMessage;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/tmes/ExtensionMap;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

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

    iget-object v0, p0, Lcom/squareup/tmes/ExtendableMessage;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/squareup/tmes/ExtensionMap;->get(Lcom/squareup/tmes/Extension;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/tmes/Extension<",
            "TT;*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/ExtendableMessage;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/tmes/ExtensionMap;->getExtensions()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setBuilder(Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder<",
            "TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    iget-object p1, p1, Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/squareup/tmes/ExtensionMap;

    invoke-direct {v0, p1}, Lcom/squareup/tmes/ExtensionMap;-><init>(Lcom/squareup/tmes/ExtensionMap;)V

    iput-object v0, p0, Lcom/squareup/tmes/ExtendableMessage;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    :cond_0
    return-void
.end method
