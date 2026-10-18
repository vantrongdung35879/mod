.class Lcom/squareup/tmes/Redactor$FutureRedactor;
.super Lcom/squareup/tmes/Redactor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/Redactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FutureRedactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/tmes/Message;",
        ">",
        "Lcom/squareup/tmes/Redactor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/squareup/tmes/Redactor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/tmes/Redactor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/squareup/tmes/Redactor;-><init>(Ljava/lang/reflect/Constructor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public redact(Lcom/squareup/tmes/Message;)Lcom/squareup/tmes/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/Redactor$FutureRedactor;->delegate:Lcom/squareup/tmes/Redactor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/squareup/tmes/Redactor;->redact(Lcom/squareup/tmes/Message;)Lcom/squareup/tmes/Message;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Delegate was not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDelegate(Lcom/squareup/tmes/Redactor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/Redactor<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/squareup/tmes/Redactor$FutureRedactor;->delegate:Lcom/squareup/tmes/Redactor;

    return-void
.end method
