.class public Lcom/beetalk/sdk/GGPhotoShare$Builder;
.super Ljava/lang/Object;
.source "GGPhotoShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/GGPhotoShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final photoShare:Lcom/beetalk/sdk/GGPhotoShare;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/beetalk/sdk/GGPhotoShare;

    invoke-direct {v0}, Lcom/beetalk/sdk/GGPhotoShare;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    .line 102
    iput p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->scene:I

    .line 103
    iput-object p2, v0, Lcom/beetalk/sdk/GGPhotoShare;->file:Ljava/lang/String;

    .line 104
    iput p3, v0, Lcom/beetalk/sdk/GGPhotoShare;->gameId:I

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/beetalk/sdk/GGPhotoShare;

    invoke-direct {v0}, Lcom/beetalk/sdk/GGPhotoShare;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    .line 94
    iput p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->scene:I

    .line 95
    iput-object p2, v0, Lcom/beetalk/sdk/GGPhotoShare;->imgData:[B

    .line 96
    iput p3, v0, Lcom/beetalk/sdk/GGPhotoShare;->gameId:I

    .line 97
    array-length p1, p2

    iput p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->imgDataLength:I

    return-void
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/GGPhotoShare;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    return-object v0
.end method

.method public setFile(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->file:Ljava/lang/String;

    return-object p0
.end method

.method public setImgLength(I)Lcom/beetalk/sdk/GGPhotoShare$Builder;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->imgDataLength:I

    return-object p0
.end method

.method public setMediaTag(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->mediaTag:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageAction(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->messageAction:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageExt(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->messageExt:Ljava/lang/String;

    return-object p0
.end method
