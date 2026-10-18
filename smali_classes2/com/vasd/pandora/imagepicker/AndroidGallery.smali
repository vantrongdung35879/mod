.class public Lcom/vasd/pandora/imagepicker/AndroidGallery;
.super Ljava/lang/Object;
.source "AndroidGallery.java"


# static fields
.field public static final LIB_INFO:Ljava/lang/String; = "version: 3.7.6"

.field public static OpenGallery_Callback:Ljava/lang/String; = null

.field private static Tag:Ljava/lang/String; = "unity pandora picker"

.field public static isOutputImageCutted:Z = true

.field public static needOriginalImage:Z = false

.field public static outputImageHeight:I = 0x12c

.field public static outputImageWidth:I = 0x12c

.field public static pickType:I

.field private static s_Listener:Lcom/vasd/pandora/imagepicker/AndroidGalleryListener;

.field public static s_mainActive:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitUnityActivity()V
    .locals 1

    .line 67
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sput-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_mainActive:Landroid/app/Activity;

    return-void
.end method

.method public static MessageSendback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 55
    sget-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pandora_send_native_message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OpenGallery(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 175
    sget-object p4, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenGallery with type["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object p4, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newImagePath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sput-object p5, Lcom/vasd/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    .line 179
    sput p3, Lcom/vasd/pandora/imagepicker/AndroidGallery;->pickType:I

    if-eqz p0, :cond_2

    .line 180
    const-string p3, ""

    if-ne p0, p3, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    sget-object p3, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_mainActive:Landroid/app/Activity;

    if-nez p3, :cond_1

    .line 188
    sget-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    const-string p1, "s_mainActive is NULL!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_1
    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 195
    sput p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageWidth:I

    .line 196
    sput p2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageHeight:I

    .line 197
    sput-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    .line 198
    sput-boolean p6, Lcom/vasd/pandora/imagepicker/AndroidGallery;->isOutputImageCutted:Z

    .line 199
    sput-boolean p7, Lcom/vasd/pandora/imagepicker/AndroidGallery;->needOriginalImage:Z

    .line 201
    sget-object p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "OpenGallery ["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageWidth:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/vasd/pandora/imagepicker/AndroidGallery;->isOutputImageCutted:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->needOriginalImage:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    const-string p1, "OpenGallery auth check disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance p0, Landroid/content/Intent;

    sget-object p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_mainActive:Landroid/app/Activity;

    const-class p2, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    :try_start_0
    sget-object p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_mainActive:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 227
    sget-object p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 182
    :cond_2
    :goto_1
    sget-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    const-string p1, "NativeGallery: No callback object id given"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static OpenGalleryFireCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 109
    sget-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    sget-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    const-string p1, "NativeGallery: ignored invoking Native callback"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"path\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \"result\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\", \"originalPath\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    sget-object p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    const/4 p2, 0x0

    .line 118
    sput-object p2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    .line 120
    sget-object p2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_Listener:Lcom/vasd/pandora/imagepicker/AndroidGalleryListener;

    if-eqz p2, :cond_1

    .line 122
    invoke-interface {p2, p0}, Lcom/vasd/pandora/imagepicker/AndroidGalleryListener;->onCallback(Ljava/lang/String;)V

    .line 125
    :cond_1
    sget-object p2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeGallery: Invoking callback on object : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with json = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string p2, "CallDelegateFromNative"

    invoke-static {p1, p2, p0}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->MessageSendback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static PickVideo(Ljava/lang/String;II)V
    .locals 2

    .line 131
    sget-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    const-string v1, "OpenGallery with type[3]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 132
    sput v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->pickType:I

    if-eqz p0, :cond_2

    .line 133
    const-string v0, ""

    if-ne p0, v0, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    sget-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_mainActive:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 141
    sget-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    const-string p1, "s_mainActive is NULL!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 147
    sput p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageWidth:I

    .line 148
    sput p2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageHeight:I

    .line 149
    sput-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    .line 152
    sget-object p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "PickVideo ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageWidth:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->outputImageHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance p0, Landroid/content/Intent;

    sget-object p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_mainActive:Landroid/app/Activity;

    const-class p2, Lcom/vasd/pandora/imagepicker/PickerProxyActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    :try_start_0
    sget-object p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_mainActive:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 162
    sget-object p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 135
    :cond_2
    :goto_1
    sget-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    const-string p1, "NativeGallery: No callback object id given"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static PickVideoFireCallback(ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 87
    sget-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    sget-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    const-string p1, "NativeGallery: ignored invoking Native callback"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"path\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \"result\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\" , \"type\":\"video\", \"size\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\", \"rotation\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", \"width\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\", \"height\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\", \"uriPath\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"  }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    sget-object p1, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    const/4 p2, 0x0

    .line 96
    sput-object p2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    .line 98
    sget-object p2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_Listener:Lcom/vasd/pandora/imagepicker/AndroidGalleryListener;

    if-eqz p2, :cond_1

    .line 100
    invoke-interface {p2, p0}, Lcom/vasd/pandora/imagepicker/AndroidGalleryListener;->onCallback(Ljava/lang/String;)V

    .line 103
    :cond_1
    sget-object p2, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "PickVideoFireCallback: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " with json = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string p2, "CallDelegateFromNative"

    invoke-static {p1, p2, p0}, Lcom/vasd/pandora/imagepicker/AndroidGallery;->MessageSendback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static RefreshAlbum(Ljava/lang/String;)V
    .locals 3

    .line 72
    sget-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_mainActive:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance p0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static SetCallbackListener(Lcom/vasd/pandora/imagepicker/AndroidGalleryListener;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_Listener:Lcom/vasd/pandora/imagepicker/AndroidGalleryListener;

    return-void
.end method

.method public static SetMainContext(Landroid/app/Activity;)V
    .locals 0

    .line 62
    sput-object p0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->s_mainActive:Landroid/app/Activity;

    return-void
.end method

.method public static SetUseCompatibleMode(Z)V
    .locals 3

    .line 168
    sget-object v0, Lcom/vasd/pandora/imagepicker/AndroidGallery;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetUseCompatibleMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sput-boolean p0, Lcom/vasd/pandora/imagepicker/ImageCropper;->useCompatibleMode:Z

    return-void
.end method

.method public static native nativePostLiveEvent(IIILjava/lang/String;)V
.end method
