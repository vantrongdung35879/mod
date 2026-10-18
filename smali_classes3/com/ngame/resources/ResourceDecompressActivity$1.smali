.class Lcom/ngame/resources/ResourceDecompressActivity$1;
.super Landroid/os/Handler;
.source "ResourceDecompressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ngame/resources/ResourceDecompressActivity;->startResourceDecompresss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ngame/resources/ResourceDecompressActivity;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ngame/resources/ResourceDecompressActivity;Landroid/os/Looper;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "looper",
            "val$context"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iput-object p3, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/ngame/resources/ResourceDecompressActivity$4;->$SwitchMap$com$ngame$resources$MainMSG:[I

    invoke-static {}, Lcom/ngame/resources/MainMSG;->values()[Lcom/ngame/resources/MainMSG;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ngame/resources/MainMSG;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Resources"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 171
    :pswitch_0
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$400(Lcom/ngame/resources/ResourceDecompressActivity;)V

    goto/16 :goto_0

    .line 151
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "splash time out with extract: isExtractFinish = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {v0}, Lcom/ngame/resources/ResourceDecompressActivity;->access$000(Lcom/ngame/resources/ResourceDecompressActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$000(Lcom/ngame/resources/ResourceDecompressActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$400(Lcom/ngame/resources/ResourceDecompressActivity;)V

    goto/16 :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-object v0, p1, Lcom/ngame/resources/ResourceDecompressActivity;->viewProvider:Lcom/ngame/resources/IResourceDecompressViewProvider;

    invoke-interface {v0}, Lcom/ngame/resources/IResourceDecompressViewProvider;->GetContainer()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ngame/resources/ResourceDecompressActivity;->setContentView(I)V

    .line 158
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-object v0, p1, Lcom/ngame/resources/ResourceDecompressActivity;->viewProvider:Lcom/ngame/resources/IResourceDecompressViewProvider;

    invoke-interface {v0}, Lcom/ngame/resources/IResourceDecompressViewProvider;->GetProgressBar()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ngame/resources/ResourceDecompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ClipDrawable;

    invoke-static {v0, p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$502(Lcom/ngame/resources/ResourceDecompressActivity;Landroid/graphics/drawable/ClipDrawable;)Landroid/graphics/drawable/ClipDrawable;

    .line 161
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-object v0, p1, Lcom/ngame/resources/ResourceDecompressActivity;->viewProvider:Lcom/ngame/resources/IResourceDecompressViewProvider;

    invoke-interface {v0}, Lcom/ngame/resources/IResourceDecompressViewProvider;->GetProgressBarContainer()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ngame/resources/ResourceDecompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-object v0, p1, Lcom/ngame/resources/ResourceDecompressActivity;->viewProvider:Lcom/ngame/resources/IResourceDecompressViewProvider;

    invoke-interface {v0}, Lcom/ngame/resources/IResourceDecompressViewProvider;->GetProgressBarNum()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ngame/resources/ResourceDecompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/ngame/resources/ResourceDecompressActivity;->access$602(Lcom/ngame/resources/ResourceDecompressActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 167
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1, v1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$102(Lcom/ngame/resources/ResourceDecompressActivity;Z)Z

    goto/16 :goto_0

    .line 136
    :pswitch_2
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1, v1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$002(Lcom/ngame/resources/ResourceDecompressActivity;Z)Z

    .line 137
    invoke-static {}, Lcom/ngame/resources/RD_Path;->checkSOExists()Z

    move-result p1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extract finish: soExists="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowingExtractorView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {v1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$100(Lcom/ngame/resources/ResourceDecompressActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-object v0, v0, Lcom/ngame/resources/ResourceDecompressActivity;->eventHandler:Lcom/ngame/resources/IResourceDecompressEventHandler;

    invoke-virtual {v0, p1}, Lcom/ngame/resources/IResourceDecompressEventHandler;->RD_OnFinish(Z)V

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->val$context:Landroid/app/Activity;

    invoke-static {}, Lcom/ngame/resources/RD_Path;->getCurResVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ngame/util/PreferencesUtil;->writeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$100(Lcom/ngame/resources/ResourceDecompressActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/ngame/resources/ResourceDecompressActivity;->access$200(Lcom/ngame/resources/ResourceDecompressActivity;I)V

    .line 146
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$400(Lcom/ngame/resources/ResourceDecompressActivity;)V

    goto/16 :goto_0

    .line 132
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXTRACT_MD5_ERROR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$300(Lcom/ngame/resources/ResourceDecompressActivity;)V

    goto/16 :goto_0

    .line 127
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXTRACT_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-object v0, v0, Lcom/ngame/resources/ResourceDecompressActivity;->eventHandler:Lcom/ngame/resources/IResourceDecompressEventHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ngame/resources/IResourceDecompressEventHandler;->RD_OnError(ILjava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$300(Lcom/ngame/resources/ResourceDecompressActivity;)V

    goto/16 :goto_0

    .line 111
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 112
    const-string v0, "cur_file"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "cur_byte"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-lez p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iput-wide v1, p1, Lcom/ngame/resources/ResourceDecompressActivity;->curByte:J

    .line 117
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-wide v1, p1, Lcom/ngame/resources/ResourceDecompressActivity;->curByte:J

    long-to-float p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    iget-object v1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-wide v1, v1, Lcom/ngame/resources/ResourceDecompressActivity;->totalByte:J

    long-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extract get progress: fileName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", curByte="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-wide v4, v0, Lcom/ngame/resources/ResourceDecompressActivity;->curByte:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalByte="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-wide v4, v0, Lcom/ngame/resources/ResourceDecompressActivity;->totalByte:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", percent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {v0}, Lcom/ngame/resources/ResourceDecompressActivity;->access$100(Lcom/ngame/resources/ResourceDecompressActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {v0, p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$200(Lcom/ngame/resources/ResourceDecompressActivity;I)V

    goto :goto_0

    .line 106
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    const-string/jumbo v1, "total_byte"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ngame/resources/ResourceDecompressActivity;->totalByte:J

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "extract get totalByte="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-wide v0, v0, Lcom/ngame/resources/ResourceDecompressActivity;->totalByte:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_7
    const-string p1, "extract start..."

    invoke-static {v3, p1}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1, v2}, Lcom/ngame/resources/ResourceDecompressActivity;->access$002(Lcom/ngame/resources/ResourceDecompressActivity;Z)Z

    .line 103
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$1;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-object p1, p1, Lcom/ngame/resources/ResourceDecompressActivity;->eventHandler:Lcom/ngame/resources/IResourceDecompressEventHandler;

    invoke-virtual {p1}, Lcom/ngame/resources/IResourceDecompressEventHandler;->RD_OnStart()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
