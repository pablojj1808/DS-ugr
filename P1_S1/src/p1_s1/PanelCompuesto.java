
package p1_s1;

import java.awt.BorderLayout;
import java.util.Observable;
import javax.swing.JPanel;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class PanelCompuesto extends Composite {
    
    private Componente mapa;
    private Componente cambiador;

    
    public PanelCompuesto(Ticket t) {
        super();
        initComponents();
        
        mapa = new MapaPrecios();
        cambiador = new CambiadorPrecio(t);
        
        panelmapa.add(mapa);
        panelCambiador.add(cambiador);
       
        //cp.setVisible(true);
        //mp.setVisible(true);
        
        this.hijos.add(cambiador);
        this.hijos.add(mapa);
        
        panelmapa.repaint();
        panelmapa.revalidate();
        
        this.repaint();
        this.revalidate();
        
        this.setVisible(true);
    }
    
    @Override
    public void update(Observable o, Object arg) {
        mapa.update(o, arg);
        cambiador.update(o, arg);
    }
    

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        panelmapa = new javax.swing.JPanel();
        panelCambiador = new javax.swing.JPanel();

        setBackground(new java.awt.Color(204, 204, 255));

        panelmapa.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 0, 0)));
        panelmapa.setLayout(new java.awt.BorderLayout());

        panelCambiador.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 0, 0)));
        panelCambiador.setLayout(new java.awt.BorderLayout());

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(panelmapa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(panelCambiador, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(32, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(panelCambiador, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(panelmapa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(26, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel panelCambiador;
    private javax.swing.JPanel panelmapa;
    // End of variables declaration//GEN-END:variables
}
